// V2 — Executive Impact. Tagline + Selected Impact metrics above career.

#let accent = rgb("#c0392b")
#let muted  = rgb("#8b95a1")
#let ink    = rgb("#1a202c")

#set document(title: "Daniel Pfeller — CV", author: "Daniel Pfeller")
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
  #text(size: 10pt, tracking: 0.3em, fill: muted, upper("Cloud / AI Leader · Trusted Advisor"))
  #v(0.3em)
  #text(size: 9.5pt)[
    #link("mailto:pfeller.daniel@gmail.com")[pfeller.daniel\@gmail.com]
    \u{2003}·\u{2003} +41 79 459 85 45
    \u{2003}·\u{2003} Switzerland
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
      10+ years leading cloud transformations and delivering ML/AI solutions for global enterprises and unicorn startups. Trusted advisor to C-level executives, impacting *\$500M+* in yearly cloud revenue. Drives revenue expansion, cost optimization, and operational efficiency at scale.
    ],
  )
]

// ============ IMPACT METRICS ============
#H("Selected Impact")
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 0.4em,
  metric([\$500M+], "yearly Google Cloud revenue advised in 2024"),
  metric([+20%],   "program velocity, 80-eng coordination revamp"),
  metric([100K+],  "downloads, top-100 Android app, 4.4★"),
  metric([10+ yrs],"cloud advisory across GCP, Azure, enterprise + startup"),
)

// ============ EXPERIENCE ============
#H("Experience")

#entry(
  date: "2017 – present",
  role: "Customer Engineer — Google Cloud Platform",
  org:  "Google",
)[
  - Led cross-functional technical engagements integrating cloud with client requirements, delivering scalable high-performance solutions for the world's largest enterprises and high-growth unicorns. Owned projects end-to-end: requirements → architecture → deployment → support.
  - Trusted advisor to decision-makers at major accounts, impacting *\$500M+* cloud revenue in 2024.
  - Partnered with Google Engineering & Product Management to surface market needs and inform roadmap, directly shaping Google Cloud's strategic direction.
]

#entry(
  date: "2022",
  role: "Technical Program Manager — Google Assistant",
  org:  "Google",
)[
  - Delivered the group's first ML model in Chrome production through a cross-functional program across two ML engineering teams.
  - Revamped coordination for an 80-engineer global program, *+20%* velocity.
  - Defined OKRs aligned to program objectives; monitored metrics enabling timely course corrections.
  - Refocused scope onto key user journeys, sunsetting lower-priority work → *+10%* user satisfaction.
]

#entry(
  date: "2014 – 2017",
  role: "Technology Solutions Professional — Azure",
  org:  "Microsoft",
)[
  - Pivotal role in early cloud computing era — pushed frontiers of Azure adoption when the space was largely uncharted.
  - Pioneered technical strategies that moved enterprises from traditional IT into scalable, cloud-based architectures.
]

#entry(
  date: "H1 2014",
  role: "Technical Evangelist — Azure",
  org:  "Microsoft",
)[
  - Conference keynotes, technical deep dives, reference architectures, whitepapers, blog posts.
]

#entry(
  date: "2013 – 2014",
  role: "Co-Founder & Software Engineer",
  org:  link("https://play.google.com/store/apps/details?id=org.mots.haxsync")[HaxSync (Android)],
)[
  - Built Android app reaching *100K+* downloads, *top-100* paid apps, sustained 4.4★ rating.
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
  - HTML/JavaScript mobile client for complex SCADA system.
]

// ============ SKILLS + EDU + LANG ============
#H("Skills · Education · Languages")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  row-gutter: 0.4em,
  [
    *Leadership* — cross-functional team leadership, leading without authority, mentoring \
    *Program Mgmt* — Agile/Scrum, planning, risk, dependency, stakeholder mgmt \
    *Programming* — Python, C\#, Java \
    *Platforms* — GCP, Azure, Android \
    *Technologies* — GenAI, Vertex AI, k8s, Terraform
  ],
  [
    *Certifications* — 3 × Google Cloud Certified Professional · 4 × Microsoft Certified Solution Professional \
    *Education* — BSc Software & Information Engineering, Vienna University of Technology (2011 – 2014) \
    *Languages* — German (native) · English (fluent)
  ],
)
