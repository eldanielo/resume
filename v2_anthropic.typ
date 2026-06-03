// V2 — Tailored for Anthropic Solutions Architect, Applied AI (Zürich)
// JD: pre-sales SA, Claude adoption, C-level advisor, Python, LLM eval, DE+FR+EN.

#let accent = rgb("#d35400") // Rich Burnt Orange / Vermilion
#let muted  = rgb("#606c7a") // Balanced Slate Grey
#let ink    = rgb("#1a1c1e") // Premium Charcoal

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
    if org == "" {
      text(weight: "bold")[#role]
    } else {
      text(weight: "bold")[#role #text(weight: "regular", fill: muted)[ at ] #text(fill: accent)[#org]]
    },
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
  #text(size: 10pt, tracking: 0.3em, fill: muted, upper("Solutions Architect · GenAI / Cloud"))
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
      10+ years as a pre-sales technical advisor guiding large EMEA enterprises and high-growth unicorn startups through cloud and AI adoption — from use-case discovery → eval → fine-tuning → capacity planning → production. Hands-on with Claude on GCP and Gemini API across the full LLM lifecycle. Trusted by C-level executives and founders alike, currently impacting *\$800M* in cloud revenue. Committed to *safe, beneficial AI* — comfortable in both engineering deep-dives and boardroom conversations.
    ],
  )
]

// ============ IMPACT METRICS ============
#H("Selected Impact")
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.4em,
  metric([\$800M],  "cloud revenue impacted in 2025"),
  metric([10+ yrs], "pre-sales architect — GCP, Azure, GenAI"),
  metric([Shipped], "first Google Assistant ML model in Chrome"),
)

// ============ EXPERIENCE ============
#H("Experience")

#entry(
  date: "2017 – present",
  role: "Customer Engineer (Solutions Architect, Pre-Sales) — Google Cloud Platform",
  org:  "Google",
)[
  - Trusted technical advisor across two customer profiles: historical book of large EMEA enterprises, currently focused on high-growth unicorn startups in scale-up phase.
  - Translate business requirements into Google Cloud architectures (data platforms, GKE, Vertex AI / Gemini / Claude on Vertex, MLOps) across the full LLM lifecycle: use-case discovery → eval → fine-tuning → capacity / throughput planning → production rollout.
  - Owned technical narrative end-to-end with C-suite stakeholders; impact *\$800M* in cloud revenue in 2025; recurring board-level architecture reviews and executive briefings on GenAI strategy.
  - Ran use-case discovery workshops translating fuzzy business intent into a shortlist of high-value LLM use cases, scoped for measurable success and responsible deployment.
  - Designed evaluation frameworks with customers: golden datasets, automated graders, side-by-side model comparison (Gemini, Claude, fine-tuned variants), regression gates for production.
  - Led fine-tuning engagements on Vertex (SFT / adapter tuning) — data curation, training runs, eval, cost/quality tradeoff against base + RAG baselines.
  - Sized capacity & throughput: provisioned throughput vs pay-as-you-go, latency budgets, regional placement, quota planning for enterprise launch.
  - Hands-on Python prototyping with customers: notebooks, API integrations, agents, function-calling, RAG demos on customer data.
  - Partnered with Google Engineering & Product Management to feed customer needs into Vertex AI / Gemini roadmap.
  - Cutting-edge work with *AlphaEvolve* in partnership with Google DeepMind — bringing frontier research to enterprise customers.
]

#entry(
  date: "2022",
  role: "Technical Program Manager — Google Assistant ML",
  org:  "Google",
)[
  - Shipped the *first Google Assistant ML model in Chrome* — owned cross-functional program across two ML engineering teams from model handoff to launch.
  - Hands-on with LLMs in the pre-ChatGPT era — worked with *LaMDA* (Google's conversational model) inside Google Assistant.
  - Established evaluation, monitoring, and rollback discipline for the ML release; defined OKRs and the metrics that triggered a mid-program course correction.
  - Revamped coordination for an 80-engineer global program → *+20%* delivery velocity.
  - Refocused scope onto highest-value user journeys → *+10%* user satisfaction.
]

#entry(
  date: "2014 – 2017",
  role: "Technology Solutions Professional (Pre-Sales) — Microsoft Azure",
  org:  "Microsoft",
)[
  - Pre-sales architect through the early enterprise cloud era — drove Azure adoption for the largest accounts in the region when the category was largely uncharted.
  - Designed cloud architectures and led PoCs that moved enterprises off traditional IT onto scalable cloud platforms; trusted advisor through complex enterprise buying cycles.
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
  - Built Android product reaching *100K+* downloads, top-100 paid apps, sustained 4.4★ rating — full ownership: product, engineering, support.
]

#entry(
  date: "2013",
  role: "Teaching Fellow — Fundamentals of Computer Science",
  org:  "Vienna University of Technology",
)[
  - Lectures on programming, algorithms, design patterns.
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
  role: link("https://steeze.it")[steeze.it] + " — LLM ski coach",
)[
  - LLM-powered ski coaching app — turns video into personalised feedback and drill plans, plus social feed for sharing runs, progress, and coaching with friends.
  - End-to-end ownership: use-case framing, prompt design, eval loop, deployment, real users, full lifecycle from idea to production.
]

#entry(
  date: "ongoing",
  role: "Full home & personal-life automation with LLM agents",
)[
  - Self-hosted GCP stack (Home Assistant, MQTT, InfluxDB, Grafana) wired to LLM agents (Claude, Openclaw) using Anthropic's Model Context Protocol (MCP) — daily driver for Claude API: tool use, automation flows, eval of new model releases against real use cases.
]

// ============ SKILLS + EDU + LANG ============
#H("Skills · Education · Languages")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  row-gutter: 0.4em,
  [
    *AI / LLMs* — Claude (API + Vertex), Model Context Protocol (MCP), Gemini, OSS models (Llama, Mistral, Gemma), specialized models (embeddings, rerankers, ASR, vision), RAG, agents, fine-tuning (SFT/adapters), evaluation frameworks, prompt design, capacity & throughput planning
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
