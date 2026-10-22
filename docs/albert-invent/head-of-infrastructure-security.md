# Albert Invent — Head of Infrastructure & Security

- **Posting:** https://ats.rippling.com/albert-invent-corp/jobs/154973aa-3daf-4a0e-b87c-1b0bc55b88c4 (Rippling job `154973aa-3daf-4a0e-b87c-1b0bc55b88c4`, Build › Engineering)
- **First published:** 2026-06-18 (Rippling `createdOn`)
- **Location:** Remote (United States); HQ Oakland, CA
- **Researched:** 2026-10-22
- **Resume branch:** `job/albert-invent-head-of-infra-security`
- **Referral angle:** friends in Albert engineering leadership

Legend: **Confirmed** = stated in a primary source. **Inferred** = my reading of the evidence.

## The role in one paragraph

This role builds Albert's global infrastructure, reliability and security function from scratch. The posting calls it "a program-building role, not a program-inheriting one" and has it report to the VP of Engineering (**Confirmed**). The scope covers:
- shared cloud architecture: common IaC, unified monitoring, CI/CD standards and the internal developer platform;
- the full security posture: SAST/DAST, WAF, SIEM, EDR, IDS/IPS, DLP, Zero Trust, the third-party security partner, audits and questionnaires;
- FinOps with Finance;
- a follow-the-sun SRE organization: the existing India team, US presence and a planned Germany-based EU team;
- the ML/AI infrastructure platform;
- Azure interoperability with partners: identity federation, private connectivity and bring-your-own-key (BYOK).

First-year deliverables (**Confirmed**):
- an SLO, error-budget and service-tier framework;
- an incident program covering on-call, DR/BCP and the first post-mortem;
- an SRE organization with an EU roadmap;
- MLOps infrastructure taken over from the AI/ML team;
- the first enterprise security audit passed;
- measured cost reduction against a per-unit baseline.

**The posting changed after it was first published (Confirmed by comparing aggregator copies).** The June copy (remoterocketship) required "Meaningful Azure exposure" and "Kubernetes at architectural depth." The current copy requires deep AWS (ECS, multi-account design, IAM/KMS, CloudTrail audit evidence). It says "ECS and EKS are both in production here, and the consolidation question between them is live," and keeps Azure only as a partner-interoperability responsibility. **Inferred:** after four months of searching they recentered on AWS depth, which suits this background better than the original did.

## Who the role works with

| Who | Why they matter | Source |
|---|---|---|
| Jim Smitley, VP of Engineering | Stated manager of this role | Posting + albertinvent.com/learn (**Confirmed**) |
| Jonathan Welch, VP of AI & ML | MLOps infrastructure moves off his team to this role | albertinvent.com/learn; posting (**Confirmed**) |
| Staff ML Ops Engineer (open, `41a36935…`) | Under AI Applications & Research; owns K8s, FastAPI, ML infra. **Inferred:** the main IC partner for, or eventual report into, the MLOps handoff | Rippling board |
| Director of Agentic AI; Senior Staff AI Engineer (open, `2a110e3e…`) | Agentic harness and LLM tracing (Braintrust, LangGraph); its reliability and infrastructure depend on this role | Rippling board |
| Director of Engineering, Core Product | Named partner in the AI posting; peer engineering leader | Rippling board (**Confirmed** title exists) |
| Director of Platform, Product Management (open, `7fdc530f…`) | Product counterpart for IAM, Security, Admin, Integrations; owns "eliminating platform-level deal blockers" | Rippling board |
| Lead Integrations Engineer (open, `699d5e54…`) | Multi-tenant security, tenant isolation, keyless deployment, OAuth2/SAML; ISO 27001/SOC 2/GDPR alignment with Infrastructure | Rippling board |
| Sreedhar Arumugam, MD & Head of Albert India | Existing India SRE team sits in his region (Bengaluru postings) | albertinvent.com/learn; Instahyre postings |
| Amanda Dumont, VP of Finance | Cloud cost strategy partner | albertinvent.com/learn; posting says "in partnership with Finance" |
| Frank Paganelli, General Counsel; Counsel (open) | Audit, questionnaires, DPA/compliance | albertinvent.com/learn |
| James Pycock, VP of Product | Platform product roadmap | albertinvent.com/learn |
| External: third-party security partner (unnamed); enterprise customers | Customers whose security reviews this role must satisfy: AkzoNobel, Avient, BASF, Chemours, Clorox, Henkel, Kenvue, Nouryon, INX | Series B press coverage |

## Hiring manager

- **Confirmed:** the role reports to the VP of Engineering, and Albert's leadership page lists **Jim Smitley** in that role.
- Reliability notes:
  - TheOrg's org chart also shows Smitley but its page text names James Pycock as VP Engineering; the company site lists Pycock as VP of Product. Low reliability.
  - An older albert.io "VP of Engineering" result belongs to a different company (Albert.io, edtech). Ignore it.
  - Co-founder Neelesh Vaikhary appears as CTO on the Japanese site and third-party profiles but not on the current English leadership page. **Inferred:** either he has left or the page is stale. Ask whether there's a CTO above the VP of Engineering.
- **Verify:** ask your engineering-leadership friends directly, or run a LinkedIn people search for "Albert Invent" + "VP Engineering".

## New role or backfill?

**Inferred: new role.**
- The posting says "program-building … not program-inheriting" (**Confirmed** wording).
- No earlier Head of Infrastructure, Head of Security, CISO or Director of DevOps posting turned up in searches or in the 2025 Wayback captures of the Rippling board. Those captures are JS-rendered, so titles couldn't be read; low confidence.
- Before this, infrastructure was IC-led from India. A Senior Staff Cloud Engineer in Bengaluru (Terraform, AWS, multi-cloud, "lead cloud architecture design", now closed) and an SRE intern were posted.
- Open 4 months and revised once. **Inferred:** the role was funded before the Series B (announced 2026-10-13) and is likely a priority now that the round has closed.

## Existing team or new?

- **Mixed.** There is an existing India SRE team and "US presence" (**Confirmed**); the EU team is planned (**Confirmed**). Team sizes aren't published.
- TheOrg shows a 33-person Engineering department; aggregators put the company at 51–200 employees. Both are low reliability.
- **Inferred:** a small inherited team, with headcount to build in the EU and probably the US.

## Tech stack and cloud

| Area | Named technologies | Source posting(s) |
|---|---|---|
| Cloud (primary) | **AWS** (Confirmed): ECS, EKS, multi-account Organizations, IAM, KMS, CloudTrail, Lambda, DynamoDB, EventBridge | Head of Infra; Lead Integrations |
| Cloud (partner) | **Azure** partner environments: identity federation, private connectivity, BYOK | Head of Infra |
| Containers | ECS + EKS both in production; Kubernetes for AI/ML workloads, GPU scheduling | Head of Infra; Staff ML Ops |
| IaC / delivery | Terraform, Helm, ArgoCD, Pulumi ("or similar") | Staff ML Ops; Bengaluru Cloud Eng (Terraform) |
| Backend | Python (FastAPI, async), Node.js; microservices; webhooks/event-driven | Staff ML Ops; Lead Integrations |
| Data / ML | Airflow, Dagster, Kubeflow; vector databases; Redis, Kafka, RabbitMQ | Staff ML Ops; Head of Infra (preferred) |
| AI | Agentic harness; LangGraph-style frameworks; Braintrust tracing/evals; "Ask Albert" with zero data retention | Senior Staff AI Eng; Aug 2026 launch release |
| Observability | Prometheus, Grafana, Datadog ("or similar") | Staff ML Ops |
| Security / compliance | SOC 2, ISO 27001, GDPR, NIST; preferred NIST 800-171, CMMC, ITAR, FedRAMP; OAuth2, SAML, JWT, SSO | Head of Infra; Lead Integrations |
| Integrations | ERP, PLM, LIMS, ELN, lab automation; MuleSoft / Apache Camel / EventBridge | Lead Integrations |

**Cloud verdict:** AWS-first (**Confirmed** by specific managed services across postings), with Azure only at the partner boundary. No public AWS or Azure case study was found.

## Company context

- **What it is:** Albert OS, an AI-native R&D platform for chemistry and materials science, plus Ask Albert, an agentic chemistry AI launched 2026-08-19. The company website says it started as an internal solution and "emerged from a backyard lab" in 2015. CEO and co-founder Nick Talken; co-founder and chairman Ken Kisner.
- **Funding (press; private company, no audited financials):**
  - Series A of ~$22.5M, Dec 2024 (Coatue lead).
  - Growth round, Feb 2025 (J.P. Morgan Growth Equity Partners lead). Size reported as $20M or as bringing the total to $45M+; sources conflict.
  - **$55M Series B led by TCV, announced 2026-10-13**, with Delta-v, Socium, HighSage, Coral, Legion VC and existing investors Coatue, J.P. Morgan GEP, Index and Applied Ventures.
  - A $340M valuation is reported by one outlet only; unconfirmed.
- **Momentum (self-reported usage, no revenue figures):**
  - 26x year-over-year growth in projects created;
  - 6x growth in scientists on Albert OS, across 44 countries;
  - 4x growth in workflow creation.
- **Customers and deals:**
  - Named customers: AkzoNobel, Avient, BASF, Chemours, Clorox, Henkel, Kenvue, Nouryon.
  - INX deployment announced June 2026; AkzoNobel partnership July 2026.
- **Offices:** Oakland HQ; Albert India (Bengaluru postings); Albert Japan; Germany. Over 50% of employees work outside California.
- **Hiring:** 21 unique open roles on the Rippling board (2026-10-21), heavy on GTM, product and AI. No layoffs or reorganizations found for Albert Invent.

**Financial health (Inferred):** healthy and growing, by private-company standards. A fresh Series B from a tier-1 growth investor, blue-chip chemical customers and strong usage growth all point the same way. Caveats: there are no revenue, burn or runway numbers, and enterprise chemicals is a long-sales-cycle market. The defense and ITAR/FedRAMP preferences hint at a push into government-adjacent customers.

**SEC filings:** not pulled. The user chose not to send a contact email to SEC. To check for Form D funding filings yourself:
- [EDGAR full-text search: "Albert Invent", Form D](https://www.sec.gov/edgar/search/#/q=%22Albert%20Invent%22&forms=D)
- [EDGAR company search: "albert invent"](https://www.sec.gov/cgi-bin/browse-edgar?company=albert+invent&type=D&owner=include&count=40)

## Fit with my background

**Strong overlaps**

| Posting asks for | Evidence on this branch |
|---|---|
| Deep AWS, multi-account org design, IAM/KMS, audit evidence | Claritas: AWS Organizations landing zone, Control Tower, Transit Gateway; ex-Amazon/AWS ProServe; AWS SA/Dev/SysOps certified |
| Common IaC, CI/CD standardization, internal developer platform | Claritas monorepo SDLC with app and infra CI/CD (~7k commits, 100+ engineers); onboarding cut from 4 weeks to 1 day; Slalom DevOps practice co-founder |
| Owned security posture and enterprise audit | HIPAA/SOC2 posture, Lake Formation, audited access with SSO, PHI scanning; Claude Code governance publication (IAM attribution, DLP, invocation logging) |
| SLOs, incident, DR built from scratch | New Claritas reliability bullet; Roar Social operational excellence program; Qlik Cloud globally distributed HA |
| ECS vs EKS consolidation decision | New Claritas bullet (container platform decisions) |
| FinOps / unit cost | New Claritas cost bullet; Claude Code cost tracking publication |
| Global distributed teams | Scaled 8 → 45 FTE plus onshore/offshore vendor teams; led 16-person team |
| MLOps infrastructure (Airflow preferred) | Airflow/Glue/PySpark lakehouse; production AI agents with MCP and guardrails |
| Startup / high-growth | Claritas (founding architect of Ascend 2.0), Roar Social, WitMatix |

**Gaps (honest)**
- **Security operations tooling depth:** SIEM, EDR, IDS/IPS, DAST at hands-on level. No CISSP/CISM/CCSP.
- **Government compliance (preferred):** no NIST 800-171, CMMC, ITAR or FedRAMP experience on the resume.
- **Azure partner interoperability:** no Azure on the resume.
- **Managing managers / regional SRE leads:** the resume shows a 16-person team, not managers of managers.
- **Quantified cost and reliability outcomes:** the new bullets have no numbers yet.

**Interview talking points**
- **ECS vs EKS:** bring a point of view on consolidation, e.g. ECS for stateless services and EKS only where GPU scheduling or the K8s ecosystem is needed, plus the migration cost.
- **First 90 days:** service tiering → SLOs → on-call → first post-mortem; turn audit evidence into automated CloudTrail/Config-based collection rather than manual assembly.
- **MLOps handoff:** this is what the Airflow and AI-agent platform work at Claritas already looks like.
- **Regulated-data parallel:** HIPAA/PHI controls map onto customer formulation IP, BYOK and tenant isolation.
- **Follow-the-sun:** India + US + EU, based on the onshore/offshore vendor model at Claritas.

## Resume changes on this branch

- `profile.yml`:
  - title → "Platform & Infrastructure Engineering | Cloud Security | AI Transformation";
  - summary now names cloud infrastructure, security and compliance, and reliability and security programs;
  - highlight → "Built and led distributed engineering teams…" (same wording as the Agility branch);
  - last highlight → "Built an AWS multi-account SaaS platform and AI delivery under HIPAA/SOC2 controls".
- `experiences.yml` (Claritas):
  - new **Reliability, Security & Cost** group with four bullets (security posture, SLOs/incident/DR, ECS vs EKS, cost);
  - dropped "Transformed legacy data services…" to hold length;
  - "distributed engineering org" wording (same as the Agility branch).
- `skills.yml`: Cloud Platforms → Cloud Infrastructure; Enterprise Architecture → Security & Compliance (kept rating 5); Spark/Iceberg → ECS/EKS (kept rating 4).

### Claims to verify

The user confirmed experience in all four areas but supplied no specifics. Check the wording before sending:
1. "Owned HIPAA/SOC2 security posture for Ascend 2.0, including audit evidence, security tooling and customer questionnaires." Is "owned" accurate, versus contributed?
2. "Established SLOs, on-call rotations, incident post-mortems and disaster recovery plans…" Was this at Claritas? Were all four parts done?
3. "Made ECS vs EKS container platform decisions … across the AWS multi-account landing zone." Was this at Claritas, or another employer?
4. "Drove AWS cost reduction with per-unit and per-team cost visibility…" Add a % or $ figure if you have one.
5. Skill ratings: Security & Compliance = 5, ECS/EKS = 4.

## Sources

- [Albert Invent careers page](https://www.albertinvent.com/careers) (Rippling embed `albert-invent-corp`)
- [Rippling board API](https://api.rippling.com/platform/api/ats/v1/board/albert-invent-corp/jobs). Postings used:
  - Head of Infrastructure & Security `154973aa-3daf-4a0e-b87c-1b0bc55b88c4`
  - Staff ML Ops Engineer `41a36935-f26e-491e-97fd-16e7642a9734`
  - Senior Staff AI Engineer `2a110e3e-0db7-441b-b760-a26ab4e6b32b`
  - Lead Integrations Engineer `699d5e54-ef5a-49c8-9265-757b28e26f92`
  - Director of Platform, Product Management `7fdc530f-0928-40b5-98ee-a335c91904ac`
  - Director of Data Products `3e03f2d1-65da-4da2-87c6-68e93a692106`
  - AI Knowledge Architect `729581b1-034b-49d2-b05a-91df45d0508a`
- [Albert leadership page](https://www.albertinvent.com/learn)
- [Earlier copy of the posting (remoterocketship)](https://www.remoterocketship.com/gb/company/albertinvent/jobs/head-of-infrastructure-security-california-remote/)
- [Posting copy (jobera)](https://jobera.com/job/albert-invent-corp-head-of-infrastructure-security-7449347f/)
- [Albert Raises $55M Series B (Business Wire)](https://www.businesswire.com/news/home/20261013059321/en/Albert-Raises-$55M-Series-B-to-Scale-the-First-Chemistry-Native-AI)
- [Series B coverage (Pulse 2.0)](https://pulse2.com/albert-raises-55-million-series-b-led-by-tcv-to-scale-chemistry-native-ai-for-rd/)
- [$340M valuation report (AI Weekly)](https://aiweekly.co/alerts/albert-invent-lands-55m-series-b-led-by-tcv-at-340m-valuation)
- [Ask Albert launch](https://www.albertinvent.com/press-release-post/albert-launches-first-chemistry-native-ai-built-for-enterprise-r-d)
- [AkzoNobel partnership](https://www.albertinvent.com/press-release-post/akzonobel-accelerates-r-d-innovation-with-albert-invent)
- [INX collaboration](https://www.inxinternational.com/news/inx-announces-strategic-collaboration-albert-invent-unlock-ai-powered-innovation-across-its-rd)
- [Growth round, Feb 2025 (Techleap)](https://finder.techleap.nl/news/feed/albert-invent-secures-45m-growth-funding)
- [Fenwick $20M growth investment](https://www.fenwick.com/insights/experience/fenwick-represents-albert-invent-in-20m-growth-investment)
- [Series A, Dec 2024 (Seedtable)](https://seedtable.com/companies/albert-invent/funding-rounds/series-a-2024-12)
- [TheOrg: Albert Invent](https://theorg.com/org/albert-invent) (low reliability)
- [Senior Staff Cloud Engineer, Bengaluru (Instahyre, closed)](https://www.instahyre.com/job-405825-senior-staff-cloud-engineer-at-albert-invent-bangalore/)
- [Built In: Albert Invent jobs](https://builtin.com/company/albert-invent/jobs)
