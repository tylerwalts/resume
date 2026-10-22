// Extract the text of a PDF (e.g. an SEC filing saved from a browser) with a
// marker before each page, so sections can be located by PDF page number.
//
// Usage: swift pdf-text.swift <input.pdf> <output.txt>
import PDFKit

let args = CommandLine.arguments
guard args.count == 3, let doc = PDFDocument(url: URL(fileURLWithPath: args[1])) else {
  fputs("usage: swift pdf-text.swift <input.pdf> <output.txt>\n", stderr)
  exit(1)
}
var out = ""
for i in 0..<doc.pageCount {
  out += "\n=====PAGE \(i + 1)=====\n" + (doc.page(at: i)?.string ?? "")
}
try! out.write(toFile: args[2], atomically: true, encoding: .utf8)
print("\(doc.pageCount) pages -> \(args[2])")
