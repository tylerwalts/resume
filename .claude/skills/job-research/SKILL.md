---
name: job-research
description: Research a job posting and its company (coworkers, hiring manager, new vs backfill, team, tech stack, cloud), save it to docs/<company>/<role>.md on a dedicated job/* branch, tailor the resume variant there, print it to PDF for submission, and flag edits that recur across job branches for escalation to gh-pages. Use when given a job posting URL or asked to research or tailor for a specific role.
---

# Job research and resume variant

One branch per job application. The branch holds that role's research doc and its tailored resume. Job branches are **not merged** into `gh-pages`; only changes that recur across several jobs get promoted, via their own PR.

## 1. Branch

```bash
git switch gh-pages && git pull --ff-only
git switch -c job/<company-slug>-<role-slug>     # e.g. job/agility-robotics-fleet-apps
```

If the user is already on a `job/*` branch for this role, stay on it.

## 2. Get the posting text

Career pages are usually JS-rendered, so WebFetch often comes back empty. Go to the applicant tracking system's public API instead, and pull the **whole board**, not only the one job. Other open roles reveal adjacent teams, the stack and the cloud.

| ATS | Hint in URL | Board API |
|---|---|---|
| Greenhouse | `gh_jid=`, `boards.greenhouse.io/<co>` | `https://boards-api.greenhouse.io/v1/boards/<co>/jobs?content=true` (single job: `/jobs/<id>`) |
| Lever | `jobs.lever.co/<co>` | `https://api.lever.co/v0/postings/<co>?mode=json` |
| Ashby | `jobs.ashbyhq.com/<co>` | `https://api.ashbyhq.com/posting-api/job-board/<co>?includeCompensation=true` |
| Workday | `myworkdayjobs.com` | Fetch the page; fall back to aggregators (LinkedIn, Built In, Welcome to the Jungle) |

Save raw JSON in the scratchpad, not the repo. Strip HTML before reading. Note the posting's first-published date (Greenhouse `first_published`).

## 3. Answer the standard questions

For each one, label every claim **Confirmed** (a primary source says it) or **Inferred** (your reading). Never present an inference as fact.

1. **Coworkers and partners.** Who the posting names (Product, architects, TPMs, dependent teams). Then grep the rest of the board for the same department, product names and team names to find adjacent teams and peer leaders. External partners: press releases for integrations, SIs, named customers.
2. **Hiring manager.** Rarely public. Build candidates from the leadership page, press releases on exec hires and departures, and org-chart sites (theorg, RocketReach). Treat org-chart sites as low reliability and say so. Always end with how to verify: LinkedIn people search by product/team keywords, or ask the recruiter.
3. **New role or backfill.** Search for earlier postings of the same title (aggregators, the Wayback Machine for the careers page). Check leadership departures in the last ~18 months that would leave this scope ownerless.
4. **Existing team or new.** Read the posting's tense and wording ("lead multiple teams" vs "build a team"), product launch dates, and whether ICs for that team are also being hired.
5. **Tech stack.** Collect every concrete technology named across the board's engineering posts; group them in a table by area.
6. **Cloud.** Look for specific managed services (e.g. Transit Gateway, IoT Core, BigQuery, Cosmos DB), cloud-provider case studies, and conference talks. Generic "AWS, GCP or Azure" lines don't count.

Also gather company context: funding or IPO status, revenue, headcount, open-job count, and recent layoffs or reorganizations.

## 4. Fit analysis

Compare against `_data/*.yml`. List strong overlaps with evidence from specific bullets, honest gaps, and interview talking points. Don't suggest adding a skill or claim the user hasn't confirmed they have.

## 5. Save the research

Write `docs/<company-slug>/<role-slug>.md` using this outline:

```markdown
# <Company> — <Role title>

- **Posting:** <url> (<ATS> job <id>, <dept>)
- **First published:** YYYY-MM-DD
- **Location:** ...
- **Researched:** YYYY-MM-DD
- **Resume branch:** `job/<slug>`

Legend: **Confirmed** = stated in a primary source. **Inferred** = my reading of the evidence.

## The role in one paragraph
## Who the role works with
## Hiring manager
## New role or backfill?
## Tech stack and cloud
## Company context
## Fit with my background
## Resume changes on this branch
## Sources
```

Sources go last, as markdown links. Include ATS job IDs for the related postings you used.

## 6. Tailor the resume (light touch)

- Edit only `_data/*.yml`. Template and style changes don't belong on a job branch; see step 9.
- Typical levers: the `profile.yml` title, summary and highlights; bullet wording and order to surface relevant work; skill category names.
- Keep bullet length within the existing line budget (~125 characters at desktop width), so a bullet doesn't wrap to a new line.
- Don't invent facts. Any reworded claim the user hasn't confirmed goes in a "Claims to verify" list in the research doc and in your reply.
- Build to check: `eval "$(rvm env 2.3)"; bundle exec jekyll build -d <scratchpad>/site`.
- Fill in the doc's "Resume changes on this branch" section.

## 7. Print the PDF

Once the user is happy with the tailored resume, print the submission copy:

```bash
.claude/skills/job-research/print-pdf.sh "docs/<company-slug>/Tyler Walters - Resume - <Company>.pdf"
```

The script builds the branch, serves it locally and prints it with headless Chrome. The settings match a manual Chrome "Save as PDF": US Letter, background graphics on, no header or footer. Then check the result:

- Read the page count it reports. The resume is normally 3 pages; a jump means something wrapped badly.
- Rasterize the pages and look at them. PDFKit via `swift` works without extra installs; ImageMagick needs Ghostscript, which isn't installed. Check for orphaned section headings, a page break inside the header block, and missing fonts. Missing fonts look like system serif text and mean `--virtual-time-budget` was too short.

## 8. Commit

Commit the `_data/` edits, the research doc and the PDF in `docs/<company>/` together on the job branch. Never commit other untracked files under `docs/` or `tmp/`. Don't push or open a PR for a job branch unless asked. Job branches never target `gh-pages`.

## 9. Trend check and escalation

After tailoring, compare this branch with the other job branches:

```bash
for b in $(git for-each-ref --format='%(refname:short)' refs/heads/job/); do
  echo "== $b"; git diff gh-pages...$b --stat -- _data _layouts _sass
done
git diff gh-pages...<other-job-branch> -- _data/<file>.yml   # inspect a specific overlap
```

Flag a change for escalation when it is **generic** rather than role-specific, such as:

- a typo or factual fix;
- a newly confirmed fact or number;
- a bullet rewritten the same way on two or more job branches;
- a template or style fix.

Tell the user what you found and recommend it; don't act on your own. If they agree:

```bash
git switch -c update/<topic> gh-pages
# apply only the generic hunk(s), by hand or with: git checkout -p <job-branch> -- <file>
```

Then open a dedicated PR to `gh-pages` on the fork (`gh pr create --repo tylerwalts/resume --base gh-pages`), never upstream. Afterwards, rebase the active job branches onto `gh-pages` if the user wants them current.
