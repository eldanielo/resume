// V2 — Tailored for Anthropic Solutions Architect, Applied AI (Zürich)
// JD: pre-sales SA, Claude adoption, C-level advisor, Python, LLM eval, DE+FR+EN.

#let accent = rgb("#c0392b")
#let muted  = rgb("#8b95a1")
#let ink    = rgb("#1a202c")

#set document(title: "Daniel Pfeller — Solutions Architect, Applied AI", author: "Daniel Pfeller")
#set page(paper: "a4", margin: (x: 1.8cm, y: 1.6cm))
#set text(font: "Latin Modern Sans", size: 10pt, lang: "en", fill: ink)
#show link: set text(fill: accent)

#let H(body) = {
  v(0.6em)
  text(size: 12pt, weight: "bold", tracking: 0.15em, upper(body))
  v(0.1em)
  line(length: 100%, stroke: 1.2pt + accent)
  v(0.3em)
}

#let entry(date: "", role: "", org: "", body) = {
  grid(
    columns: (1fr, auto),
    align: (left + top, right + top),
    text(weight: "bold")[#role #text(weight: "regular", fill: muted)[ at ] #text(fill: accent)[#org]],
    text(fill: muted, size: 9pt, date),
  )
  v(0.15em)
  body
  v(0.4em)
}

#let metric(num, desc) = {
  block(
    width: 100%,
    inset: (x: 0.3em, y: 0.3em),
    [
      #text(size: 16pt, weight: "bold", fill: accent, num) \
      #text(size: 8.5pt, fill: muted, desc)
    ],
  )
}

// ============ HEADER ============
#align(center)[
  #text(size: 30pt, weight: "bold", tracking: 0.05em)[DANIEL PFELLER]
  #v(-0.2em)
  #text(size: 10pt, tracking: 0.3em, fill: muted, upper("Solutions Architect · Pre-Sales · GenAI / Cloud"))
  #v(0.3em)
  #text(size: 9.5pt)[
    #link("mailto:pfeller.daniel@gmail.com")[pfeller.daniel\@gmail.com]
    \u{2003}·\u{2003} +41 79 459 85 45
    \u{2003}·\u{2003} Zürich, CH
    \u{2003}·\u{2003} DE (native) · EN (fluent)
  ]
]
#v(0.4em)
#line(length: 100%, stroke: 0.5pt + muted.lighten(40%))

// ============ TAGLINE ============
#v(0.6em)
#align(center)[
  #block(
    width: 95%,
    text(size: 10.5pt, style: "italic")[
      10+ years as a pre-sales technical advisor guiding *Fortune-500 enterprises* and, today, *high-growth unicorn startups* through cloud and AI adoption — from *use-case discovery → eval → fine-tuning → capacity planning → production*. Hands-on with *Claude on GCP* and the Gemini API across the full LLM lifecycle. Trusted by C-level executives and founders alike, currently impacting *\$800M* in cloud revenue. Deeply committed to safe, beneficial AI; equally at home in an engineering deep-dive or a board narrative.
    ],
  )
]

// ============ IMPACT METRICS ============
#H("Selected Impact")
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 0.4em,
  metric([\$800M],  "cloud revenue impacted, 2025"),
  metric([1st],     "production ML model shipped to Chrome (Google Assistant)"),
  metric([10+ yrs], "pre-sales architect across GCP, Azure, GenAI"),
  metric([Shipped], "AI side projects live — ski-coach, steeze.it, home automation"),
)

// ============ EXPERIENCE ============
#H("Experience")

#entry(
  date: "2017 – present",
  role: "Customer Engineer (Solutions Architect, Pre-Sales) — Google Cloud Platform",
  org:  "Google",
)[
  - Trusted technical advisor across two customer profiles: historical book of *Fortune-500 enterprises* with complex multi-year buying cycles, currently focused on *high-growth unicorn startups* in scale-up phase. Translate business requirements into Google Cloud architectures (data platforms, GKE, *Vertex AI / Gemini / Claude on Vertex*, MLOps) across the full LLM lifecycle: *use-case discovery → eval → fine-tuning → capacity / throughput planning → production rollout*.
  - Owned technical narrative end-to-end with C-suite stakeholders; impact *\$800M* in cloud revenue in 2025; recurring board-level architecture reviews and executive briefings on GenAI strategy.
  - Ran *use-case discovery* workshops translating fuzzy business intent into a shortlist of high-value LLM use cases, scoped for measurable success and responsible deployment.
  - Designed *evaluation frameworks* with customers: golden datasets, automated graders, side-by-side model comparison (Gemini, *Claude*, fine-tuned variants), regression gates for production.
  - Led *fine-tuning* engagements on Vertex (SFT / adapter tuning) — data curation, training runs, eval, cost/quality tradeoff against base + RAG baselines.
  - Sized *capacity & throughput*: provisioned throughput vs pay-as-you-go, latency budgets, regional placement, quota planning for enterprise launch.
  - Hands-on Python prototyping with customers: notebooks, API integrations, agents, function-calling, RAG demos on customer data.
  - Partnered with Google Engineering & Product Management to feed customer needs into Vertex AI / Gemini roadmap.
]

#entry(
  date: "2022",
  role: "Technical Program Manager — Google Assistant ML",
  org:  "Google",
)[
  - Shipped the org's *first production ML model in Chrome* — owned cross-functional program across two ML engineering teams from model handoff to launch.
  - Established *evaluation, monitoring, and rollback* discipline for the ML release; defined OKRs and the metrics that triggered a mid-program course correction.
  - Revamped coordination for an 80-engineer global program → *+20%* delivery velocity.
  - Refocused scope onto highest-value user journeys → *+10%* user satisfaction.
]

#entry(
  date: "2014 – 2017",
  role: "Technology Solutions Professional (Pre-Sales) — Microsoft Azure",
  org:  "Microsoft",
)[
  - Pre-sales architect through the early enterprise cloud era — drove Azure adoption for the largest accounts in the region when the category was largely uncharted.
  - Designed cloud architectures and led PoCs that moved enterprises off traditional IT onto scalable cloud platforms; trusted advisor through complex multi-year buying cycles.
]

#entry(
  date: "H1 2014",
  role: "Technical Evangelist — Microsoft Azure",
  org:  "Microsoft",
)[
  - Conference keynotes, deep-dive sessions, reference architectures, whitepapers, blog posts — teaching cloud-native patterns to the developer community.
]

#entry(
  date: "2013 – 2014",
  role: "Co-Founder & Software Engineer",
  org:  link("https://play.google.com/store/apps/details?id=org.mots.haxsync")[HaxSync (Android)],
)[
  - Built Android product reaching *100K+* downloads, *top-100* paid apps, sustained 4.4★ rating — full ownership: product, engineering, support.
]

#entry(
  date: "2013",
  role: "Teaching Fellow — Fundamentals of Computer Science",
  org:  "Vienna University of Technology",
)[
  - Lectures on programming, algorithms, design patterns to first-year cohort.
]

#entry(
  date: "2012",
  role: "Software Engineer Intern",
  org:  "ETM Control GmbH",
)[
  - HTML/JavaScript mobile client for a complex SCADA system.
]

// ============ SIDE PROJECTS ============
#H("Side Projects — Applied AI in Production")

#entry(
  date: "ongoing",
  role: "Ski-Coach App",
  org:  "personal",
)[
  - LLM-powered ski coaching app — turns session data and video into personalised feedback and drill plans. // VERIFY details (stack, model)
  - End-to-end ownership: use-case framing, prompt design, eval loop, deployment, user feedback.
]

#entry(
  date: "ongoing",
  role: link("https://steeze.it")[steeze.it],
  org:  "personal",
)[
  - Live AI side project — shipped product, real users, full lifecycle from idea to production. // VERIFY one-line pitch
]

#entry(
  date: "ongoing",
  role: "Full home & personal-life automation with LLM agents",
  org:  "personal lab — Openclaw, Home Assistant, Claude Code",
)[
  - Self-hosted GCP stack running Home Assistant, nginx, MQTT, InfluxDB, Grafana — wired into LLM agents (Claude, Openclaw) to automate household, schedule, and personal logistics.
  - Daily driver for Claude API: tool use, automation flows, eval of new model releases against my own use cases.
  - Run as a real product on myself: capacity, reliability, eval loop, iteration — same discipline I bring to customers.
]

// ============ SKILLS + EDU + LANG ============
#H("Skills · Education · Languages")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  row-gutter: 0.4em,
  [
    *AI / LLMs* — Claude API, Claude on Vertex, Gemini API, RAG, agents, fine-tuning (SFT/adapters), evaluation frameworks, prompt design, capacity & throughput planning
    \ *Pre-Sales* — use-case discovery, technical advisory, PoC, architecture, executive briefings, complex enterprise buying cycles
    \ *Cloud Architecture* — GCP, Azure, Kubernetes, Terraform, scalable distributed systems
    \ *Programming* — Python (primary), C\#, Java
    \ *Leadership* — cross-functional team leadership, leading without authority, teaching, mentoring
  ],
  [
    *Certifications* — 3 × Google Cloud Certified Professional · 4 × Microsoft Certified Solution Professional \
    *Education* — BSc Software & Information Engineering, Vienna University of Technology (2011 – 2014) \
    *Languages* — German (native) · English (fluent)
  ],
)
