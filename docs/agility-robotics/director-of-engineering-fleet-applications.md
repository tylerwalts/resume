# Agility Robotics — Director of Engineering, Fleet Applications

- **Posting:** https://www.agilityrobotics.com/about/job-post?gh_jid=6212071004 (Greenhouse job 6212071004, Software Engineering dept)
- **First published:** 2026-10-05
- **Location:** Hybrid, Fremont CA / Salem OR / Pittsburgh PA
- **Researched:** 2026-10-19
- **Resume branch:** `job/agility-robotics-fleet-apps`

Legend: **Confirmed** = stated in a primary source. **Inferred** = my reading of the evidence; verify before relying on it.

## The role in one paragraph

Leads several existing teams under one set of commitments: a **UI team** (on-robot, web and mobile) and a **cloud services team** (workflow orchestration, resource management, fleet data aggregation from the edge). Also drives the product vision for the **Robot Operations Center** — support, remote issue resolution and service apps. Owns hiring, leveling and performance across a fully distributed org. This is the engineering home of **Agility Arc**, the cloud fleet-management SaaS launched at MODEX in March 2024 and bundled into the robots-as-a-service subscription.

## Who the role works with

**Confirmed, from the posting:**
- **Product partners** own the roadmap; this role owns delivery ("you don't need to own the roadmap to feel ownership of the outcome").
- **Principal Architects:** the role brings a point of view, invites the architect to disagree, then closes the decision.
- **TPMs:** technical program managers.
- **Cloud Platform team:** a separate team this role depends on. It owns SOC 2 readiness and the multi-cell and single-tenant deployment architectures. This role writes the requirements and reviews their proposals.

**Inferred, from other open roles on the same board:**
- **Data Platform and AI/ML Platform:** both describe a broader "cloud platform organization" that brings robot telemetry, logs and sensor data up from the fleet.
- **Release and Issue Management:** an open Senior Manager role (SEIT dept) leads triage and RCA engineers plus release management for fleet-impacting defects. This ties to the posting's CI/CD and release expectations.
- **Customer Success and Deployment:** open Principal Program Manager and Senior Deployment Specialist roles. Their support engineers would be the users of the Robot Operations Center tools.
- **Staff Network Engineer:** owns edge-to-cloud connectivity from customer sites.
- **Leadership peers:** Senior Director, AI; VP, Strategic Program Management Office.

**External partners:**
- **Manhattan Associates** — Arc and Digit integrate with Manhattan Active WM (partnership announced April 2024). *Confirmed.*
- **Zion Solutions** — systems integrator. *Confirmed.*
- Customers named elsewhere include GXO and Schaeffler. *From general knowledge; not re-verified.*

## Hiring manager

**Not named publicly.** Best guesses, in order:
1. **Mikhail Jones** — co-founder, VP of Software. Most likely owner of the software org. Sources are older or low-reliability; one unverified page says he still led software in May 2026.
2. **Pras Velagapudi** — CTO since May 2024, confirmed as CTO in June 2026 transaction materials. Background in fleet deployment at Berkshire Grey.
3. **Jeff Thornburg** — listed as SVP Engineering on theorg. Unverified.

Context: **Melonee Wise** created and led the Arc team. She was CTO, then CPO from May 2024, left around August 2025, and now runs KUKA's software/AI org. No named successor was found.

**To verify:** LinkedIn people search for current Agility staff with "Arc", "cloud", "fleet" or "Robot Operations" in their titles; ask the recruiter directly who the role reports to.

## New role or backfill?

**Inferred:**
- **The teams exist.** The posting describes working UI and cloud services teams, and Arc has shipped since March 2024. This is inheriting and growing teams, not a greenfield build, though the role owns hiring plans.
- **The role looks new, or newly scoped.** No earlier posting with this title was found; only aggregator copies of the October 2026 posting.
- **Likely reason:** Arc's original leader left in 2025, and the company is going public. A role that unifies Arc's teams under "one set of commitments" reads as filling a leadership gap ahead of scaling.

## Tech stack and cloud

**Cloud: AWS — high confidence.**
- Staff Network Engineer posting: AWS VPC design, Transit Gateway, Direct Connect, IoT Core.
- Data Platform posting: S3, Athena, SageMaker.
- AWS case study on Agility moving robot-training workloads to AWS.
- Generic postings say "AWS, GCP or Azure", but every concrete service named is AWS.

| Area | Technologies named |
|---|---|
| Front end / full stack | React, TypeScript, JavaScript (closed Staff Full Stack Engineer post, Front-End Applications team), Figma |
| Back end / robot software | Python, C++, Rust, Java |
| Data | Spark, Kafka, Flink/Beam, Parquet, Arrow, Iceberg, Avro, Protobuf; Databricks + Unity Catalog nice-to-have |
| Infrastructure | Kubernetes, CDK or Terraform, Bazel |
| Observability | OpenTelemetry, Prometheus |
| Robot data | ROS, MCAP, Rerun |
| Edge to cloud | AWS IoT Core, Direct Connect, Transit Gateway |

## Company context

- Going public via SPAC merger with Churchill Capital Corp XI (~$2.5B). S-4 effective 2026-10-13; shareholder vote 2026-11-02.
- ~$1.8M revenue in 2025 against a ~$140M operating loss.
- ~393–450 employees; 77 open jobs at time of research.
- Leadership: Peggy Johnson (CEO), Pras Velagapudi (CTO), Jonathan Hurst (Chief Robot Officer), Marco Marroquin (Chief Hardware Officer), Daniel Diez (Chief Business Officer), Jennifer Hunter (COO), Michael Beer (CFO from July 2026).
- Arc is bundled into the RaaS subscription — their main recurring revenue — so the platform matters to the public-company story.

## Fit with my background

- **Strong overlap:** AWS, Transit Gateway networking, Iceberg lakehouse, CDK, React, Python, SOC 2 (Claritas); edge-fleet CI/CD and content delivery (Nike Trial Zone); SaaS-ification of bespoke services (Ascend 2.0); ops console for support and CS teams (Self-Service ≈ Robot Operations Center).
- **Gaps to address honestly:** robotics/ROS domain, Kubernetes, AWS IoT Core, on-robot and mobile UI. Only add these to the resume if actually used.
- **Talking points:** multi-tenant vs single-tenant deployment trade-offs; release engineering for a fleet; building a support/ops console that reduces remote-resolution time; running a distributed org with vendors.

## Resume changes on this branch

- Title: "Engineering Leadership | Cloud SaaS Platforms | AI Transformation".
- Summary and highlights reframed toward cloud SaaS platforms, edge and data systems, distributed orgs and release processes.
- Claritas: SaaS-ification, release engineering, Self-Service as the support/CS operations console, partnering with Product on roadmap commitments.
- Nike: edge fleet CI/CD and monitoring, content delivery, per-site configuration.
- Skills: "Cloud SaaS Platforms", "Release Engineering".

**Claims to verify before sending:** "bespoke, per-customer"; "partnering with Product to own roadmap commitments"; "distributing new content packs to every site"; whether Ascend 2.0 is multi-tenant.

## Sources

- [Agility Greenhouse job (API)](https://boards-api.greenhouse.io/v1/boards/agilityrobotics/jobs/6212071004)
- Related Greenhouse postings: Staff Network Engineer 6190427004, Staff SWE Data Platform 6144405004, Sr SWE AI/ML Platform 6148969004, Sr Mgr Release & Issue Mgmt 6017803004, Principal PgM Customer Success 6188551004
- [Agility Arc launch](https://agilityrobotics.com/news/agility-robotics-brings-operational-visibility-to-deployment-of-digit-fleets-with-the-launch-of-agility-arc)
- [Agility Robotics Strengthens Leadership Team (May 2024)](https://www.agilityrobotics.com/content/agility-robotics-strengthens-leadership-team)
- [Agility Robotics, Boston Dynamics see leadership changes](https://www.therobotreport.com/agility-robotics-boston-dynamics-see-leadership-changes/)
- [Melonee Wise leads KUKA software/AI org](https://www.therobotreport.com/melonee-wise-leads-kuka-new-software-ai-organization/)
- [Mikhail Jones (theorg)](https://theorg.com/org/agility-robotics/org-chart/mikhail-jones)
- [Mikhail Jones (nextomoro)](https://nextomoro.com/mikhail-jones/)
- [Agility partners with Manhattan Associates, cuts staff](https://www.therobotreport.com/agility-robotics-partners-with-leading-wms-provider-cuts-staff/)
- [Agility partners with Zion Solutions](https://www.robotics247.com/article/agility_robotics_partners_with_systems_integrator_zion_solutions)
- [AWS case study: Agility](https://aws.amazon.com/solutions/case-studies/agility-ai-case-study)
- [Staff Full Stack Engineer listing (Welcome to the Jungle)](https://app.welcometothejungle.com/jobs/KwtSC87y/company)
- [Agility reports $1.8M revenue ahead of SPAC](https://www.therobotreport.com/agility-robotics-reports-18m-revenue-ahead-of-humanoid-spac/)
- [Agility to go public via Churchill Capital Corp XI](https://www.agilityrobotics.com/content/agility-robotics-to-go-public-through-merger-with-churchill-capital-corp-xi)
