# Agility Robotics — SEC Form S-4 Analysis

- **Filing:** Churchill Capital Corp XI, Form S-4, filed 2026-09-04 (the original; saved as `tmp/agility.sec.S-4.pdf`, 789 pages)
- **Later versions:** S-4/A (2026-09-30, declared effective 2026-10-13) and the final 424B3 prospectus (2026-10-13). This original leaves the H1 2026 interim figures, exchange ratio and ownership percentages blank; read the 424B3 for those.
- **Analyzed:** 2026-10-21
- **Lens:** Is this a financially healthy, growing, successful company to join?

Page references are the filing's printed page numbers.

## Bottom line

Agility is **well-funded for now but not financially healthy**: the auditor flagged substantial doubt about its ability to continue as a going concern, and revenue is tiny. It is **growing from a near-zero base**; the growth case rests almost entirely on Digit v5 and one $300M order. Whether it's **successful** is unproven. It has blue-chip investors and real deployments, but $1.8M of revenue against a $2.5B valuation means the market is buying the future, not results.

For this role specifically: Arc is central to the recurring-revenue story, the company names AWS as its cloud partner, and its material weaknesses include IT general controls, an area where your SOC 2 experience applies directly. That's an opportunity, but it's a high-risk one.

## Core financials (FY2025 vs FY2024)

| ($M) | 2025 | 2024 | Change |
|---|---|---|---|
| Revenue | 1.78 | 0.31 | +474% |
| — of which related parties | 1.13 | 0.03 | |
| Cost of goods sold | 4.47 | 0.46 | |
| Gross profit | (2.69) | (0.15) | margin −151% |
| SG&A | 45.8 | 16.2 | +183% |
| R&D | 91.6 | 53.4 | +72% |
| Operating loss | (140.2) | (69.7) | +101% |
| Net loss | (138.1) | (70.6) | |
| Cash used in operations | (99.8) | (70.7) | |
| Cash at year end | 103.0 | 34.8 | |
| Accumulated deficit | (313.1) | (175.0) | |

- **Revenue concentration:** two customers made up $1.55M (87%) of 2025 revenue. Amazon, an investor, bought 5 robots for $1.05M, which is about 58% of 2025 revenue (pp. 243, 305, F-57).
- **Headcount:** about 393 full-time employees as of June 30, 2026, in Salem, Pittsburgh and Fremont (p. 237). That works out to about $4.5K of revenue per employee.
- **Deployments:** Digit v4 is deployed or committed at 9 customer facilities, with 65,000+ operating hours. Customers: Schaeffler, GXO, Toyota Motor Manufacturing Canada, Amazon, Mercado Libre (p. 223).

## Why SG&A jumped to $45.8M

From p. 244, the $29.6M increase breaks down as:

| Driver | $M |
|---|---|
| Stock-based compensation: mark-to-market on liability-classified awards (non-cash) | 15.3 |
| Personnel for expanding commercial and corporate functions | 5.2 |
| Sales, marketing and corporate infrastructure for commercialization | 4.0 |
| Other (unexplained remainder) | ~5.1 |

- **Excluding stock compensation,** SG&A was about **$30.4M**, up from about $16.1M. That's a real 89% increase in cash spending, but not the 183% the headline shows.
- **R&D had the same distortion:** $21.6M of its $38.2M increase was the same non-cash mark-to-market.
- **More to come:** management projects SG&A of about **$60M in 2026**, growing about 20% a year through 2028, plus public-company costs. R&D is projected at about **$115M in 2026**, growing about 15% a year (p. 133).
- **Merger costs:** the pro forma figures put about **$30.2M of deal transaction expenses** into G&A (p. 275).
- **Inconsistency:** the pro forma notes say about $34.3M of the award fair-value adjustment sits in G&A, while the audited notes split total stock comp $15.4M SG&A / $21.6M R&D / $0.9M COGS. The two presentations don't line up. The filing itself lists share-based compensation accounting as a material weakness.

## What the award liabilities are ($38.2M)

The balance sheet shows **award liability of $4.0M current and $34.2M non-current** (up from $3.7M total in 2024). This is employee equity, not debt (Note 5, pp. F-60 to F-62):

- **Why it's a liability:** Agility's stock options carry a **company repurchase right**. If an employee leaves, the company can buy back their shares for up to one year, at a price set at the termination date. Because of that right, the accountants treat employees as not bearing normal ownership risk, so options and shares from exercised options are booked as **liabilities**. They are revalued to fair value every reporting period, and each change runs through the income statement as stock comp.
- **Why it ballooned:** the board's valuation of the common stock (its 409A valuation) went from **$3.77 to $24.44 per share (6.5×)** during 2025, driven by the Series C-3 round priced at $66.15 per preferred share. The fair-value change alone was **$34.8M**. Options outstanding grew from 2.78M to 5.06M, with 3.06M granted in 2025 at $26.31 and another 938K by March 2026.
- **What happens at closing:** the pro forma statements reclassify the whole award liability into equity (p. 273). This is mostly an accounting artifact of being a private company with a repurchase right. It's **not a cash obligation** unless the company actually buys back a departing employee's shares, and the volatility should disappear after listing.
- **What it means for you:** new-hire options would likely be priced around the merger value or later. Options granted at $26.31 are already roughly at the latest valuation. Many companies that went public by SPAC merger have traded below their $10 reference price, so the equity upside is uncertain. Ask how existing options convert (the exchange ratio) and whether the repurchase right survives the merger.

## Going concern and funding

- **The auditor's warning:** Grant Thornton's report includes a going-concern paragraph. Management concluded that existing cash "will not be sufficient to fund operations … for at least one year," and that the merger can't count as a remedy because it isn't certain to close (pp. 68, F-50).
- **Funding since year end:** about $5.0M in further Series C-3 (Feb 2026) and **$100M through SAFE notes** (July 2026). SAFEs are investments that convert to stock when the merger closes.
- **Merger cash:** a $201M PIPE (private investment alongside the merger) plus up to $414M from the SPAC's trust account, less whatever shareholders redeem. The deal requires at least **$200M** of available SPAC cash. Churchill's own costs are estimated at about **$46M**.
- **Runway math, my inference:** 2025 cash burn was about $100M. The 2026 plan adds up to about $175M of SG&A and R&D, before Digit v5 build costs. Even if the merger closes with heavy redemptions, the company probably needs to raise again within about 18–24 months unless v5 revenue ramps on schedule.
- **New long-term commitments:** a **10-year, $27.5M Fremont lease** signed in Feb 2026, plus a $5M letter of credit, taken on while under a going-concern warning (p. F-70).

## Growth case: Digit v5 and the $300M order

- **The order:** **$300M of committed multi-year orders** for **1,000 Digit v5 robots** under a **three-year robots-as-a-service contract**. The commitment is subject to "contractual milestones, product features and/or specifications" (pp. 35, 235).
- **One customer, also an insider:** it's a **single customer** that is also a **related party**. It receives **453 warrants per robot** if it takes at least 1,000 robots, 453,000 warrants in total. By my estimate, that's roughly 1.6% of the pre-merger fully diluted share count. The filing doesn't name the customer; the related parties it discloses are investors such as Amazon, Schaeffler, NVIDIA and SoftBank. Agility was "still evaluating the accounting" for the warrants (p. F-70).
- **Timing conflict:** the business section says Digit v5 releases in "late 2026" (p. 223), while the financial discussion says commercialization "we currently expect to begin in 2027" (p. 240).
- **Pipeline:** the sales program for new customers (CAP, about $500K per customer) has signed 4 customers, with 30+ prospects in discussions as of May 2026 (p. 227).

## Unusual items

1. **Material weaknesses in internal controls:** business processes, **IT general controls over the ERP and accounting systems (access, change management, separation of duties)**, journal entries, and technical accounting including stock comp. The risk factor also says "we have previously reported material misstatements" (p. 43).
2. **Optimistic unit economics:**
   - The robots-as-a-service model assumes $8,500 a month per robot. The "capital recovered in less than a year" claim (p. 233) only holds at the **$75K target build cost** (bill of materials), which assumes 1,000 robots a year.
   - At the **$150K build cost expected at v5 launch,** payback is about **17–19 months**.
   - The ~$500K lifetime revenue per robot assumes 5 years, but the $300M contract runs 3.
   - The Digit v4 build cost is about $125K, so v5 starts out more expensive.
3. **Preferred stock exchange that favored some investors:** in June 2025, some Series A-4 and B holders swapped shares one-for-one into new A-4-X / B-X shares with a **2× liquidation preference**, for **no new money** (p. F-65). It mostly matters if the company sells for less than its valuation; preferred stock converts to common at the merger.
4. **Write-downs:** a $2.8M equipment impairment and inventory reserves for obsolete robot models. These are early costs of the v4-to-v5 transition.
5. **Executive changes:**
   - The CFO role moved: Jennifer Hunter went to COO, and **Michael Beer** became CFO in July 2026. His background includes SPAC-listed companies (Energy Vault, Luminar).
   - Retention bonuses were paid to the CFO/COO and the Chief Legal & People Officer in Nov 2025.
   - The CEO, Chief Business Officer and Chief Legal & People Officer all came from Magic Leap.
6. **Valuation:** $2.5B equity value against $1.8M of revenue, roughly 1,400× trailing revenue.

## Relevance to the Fleet Applications role

- **Arc's description:**
  - Arc is described as the "operating system for commercial deployment." It assigns robots to workflows, monitors fleets, tracks robot health, runs over-the-air updates, remote diagnostics and teleoperation, and integrates with warehouse (WMS) and manufacturing (MES) systems (p. 230).
  - It's also the **data layer** feeding embodied-AI training.
  - Agility is "evaluating opportunities to expand its commercialization" as a standalone enterprise platform (p. 236).
- **Arc revenue:** under the ownership model, customers pay about **$36K per robot per year** for Arc software and maintenance (p. 133). Arc is a real recurring-revenue line in the model.
- **Arc risk:** a dedicated risk factor covers Arc outages, its reliance on **third-party cloud infrastructure providers**, and site connectivity (p. 37). **AWS** is named as a technology partner, alongside NVIDIA, Google DeepMind and Manhattan Associates (p. 224).
- **Leadership:** the post-merger executive officers are Johnson (CEO), Hurst (Chief Robot Officer), Diez (Chief Business Officer), Hunter (COO), Beer (CFO), **Velagapudi (CTO since April 2024)**, Lang (Chief Legal & People Officer) and Marroquin (Chief Hardware Officer). **There's no product or software executive at the C-level**, which supports the earlier inference that Arc leadership has a gap. The hiring manager is most likely within the CTO's org.
- **Where you could add value:** the IT-general-controls weakness and the SOC 2 readiness gap match your HIPAA/SOC 2 platform experience.

## Questions to ask in interviews

1. What's the cash runway after closing under the actual redemption level, and when is the next raise planned?
2. Is the $300M v5 order on track against its milestones, and what happens to Arc headcount if v5 slips into 2027?
3. Who does this role report to, and who owns the product roadmap for Arc?
4. How much of the 2026 R&D budget goes to Arc and fleet software versus robot hardware and AI?
5. How will my options convert at closing, and does the repurchase right survive?
6. What's the plan for fixing the IT-general-controls and SOC 2 gaps, and does this role own any of it?
