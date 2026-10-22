#!/usr/bin/env bash
# Build the current branch and print it to PDF with headless Chrome, matching a
# manual Chrome "Save as PDF": US Letter, default margins, background graphics on,
# no header/footer.
#
# Usage: print-pdf.sh <output.pdf>
set -euo pipefail

out="${1:?usage: print-pdf.sh <output.pdf>}"
repo="$(git rev-parse --show-toplevel)"
chrome="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
port="${PORT:-4011}"
site="$(mktemp -d)"

cleanup() {
  if [[ -n "${server:-}" ]]; then
    kill "$server" 2>/dev/null || true
    wait "$server" 2>/dev/null || true
  fi
  rm -rf "$site"
}
trap cleanup EXIT

cd "$repo"
# Use rvm's Ruby 2.3 when it's installed; otherwise the default Ruby builds fine.
if rvm_env="$(rvm env 2.3 2>/dev/null)"; then eval "$rvm_env"; fi
bundle exec jekyll build -q -d "$site" 2>/dev/null

# Serve over HTTP: the site uses root-relative asset paths, which break under file://.
python3 -m http.server "$port" -d "$site" >/dev/null 2>&1 &
server=$!
for _ in $(seq 1 30); do
  curl -sf -o /dev/null "http://localhost:$port/" && break
  sleep 0.2
done

mkdir -p "$(dirname "$out")"
# virtual-time-budget lets web fonts finish loading before printing.
"$chrome" --headless=new --disable-gpu --no-pdf-header-footer \
  --virtual-time-budget=8000 --print-to-pdf="$out" "http://localhost:$port/" >/dev/null 2>&1

pages="$(grep -ac '/Type /Page\b' "$out" || true)"
echo "Wrote $out ($pages pages)"
