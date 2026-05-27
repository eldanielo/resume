// V3 — Minimal serif. Quiet, monochrome, generous whitespace.

#let muted = rgb("#888888")
#let ink   = rgb("#222222")

#set document(title: "Daniel Pfeller — CV", author: "Daniel Pfeller")
#set page(paper: "a4", margin: (x: 2.4cm, y: 2.2cm))
#set text(font: "Latin Modern Roman", size: 10.5pt, lang: "en", fill: ink)
#set par(leading: 0.65em)
#show link: set text(fill: ink, weight: "regular")
#show link: underline.with(offset: 2pt, stroke: 0.3pt + muted)

#let H(body) = {
  v(1.2em)
  text(size: 9pt, weight: "bold", tracking: 0.35em, upper(body))
  v(0.5em)
}

#let entry(date: "", role: "", org: "", body) = {
  grid(
    columns: (2.4cm, 1fr),
    column-gutter: 0.8em,
    align: (right + top, left + top),
    text(fill: muted, size: 9.5pt, date),
    [
      #text(weight: "bold", role)
      #if org != "" [
        \
        #text(style: "italic", fill: muted, org)
      ]
      #body
    ],
  )
  v(0.5em)
}

// ============ HEADER ============
#align(center)[
  #text(size: 24pt, weight: "regular", tracking: 0.2em)[DANIEL PFELLER]
  #v(-0.1em)
  #text(size: 9.5pt, fill: muted)[
    #link("mailto:pfeller.daniel@gmail.com")[pfeller.daniel\@gmail.com]
    \u{2003}·\u{2003} +41 79 459 85 45
  ]
]

#v(1em)

#block(
  width: 100%,
  align(center)[
    #text(size: 10.5pt, style: "italic")[
      10+ years leading cloud transformations and delivering ML/AI solutions for global \
      enterprises and unicorn startups — trusted advisor to C-level executives, impacting \
      \$500M+ in yearly cloud revenue, driven by complex problems at scale.
    ]
  ],
)

#H("Experience")

#entry(
  date: "2017 — present",
  role: "Customer Engineer, Google Cloud Platform",
  org:  "Google",
)[
  - Led cross-functional engagements integrating cloud with client requirements, delivering scalable solutions for the world's largest enterprises and high-growth unicorns. Ownership end-to-end: requirements through deployment and ongoing support.
  - Trusted advisor to decision-makers at major accounts; impacted \$500M+ cloud revenue in 2024.
  - Partnered with Google Engineering and Product Management to surface market needs and shape roadmap direction.
]

#entry(
  date: "2022",
  role: "Technical Program Manager, Google Assistant",
  org:  "Google",
)[
  - Delivered the group's first ML model in Chrome production through a cross-functional program across two ML engineering teams.
  - Revamped coordination for an 80-engineer global program; project velocity +20%.
  - Defined OKRs and monitored performance, enabling timely course corrections.
  - Refocused scope onto key user journeys; user satisfaction +10%.
]

#entry(
  date: "2014 — 2017",
  role: "Technology Solutions Professional, Azure",
  org:  "Microsoft",
)[
  - Pivotal role in early cloud computing, pushing Azure adoption when the space was largely uncharted.
  - Pioneered technical strategies that moved enterprises from traditional IT into scalable, cloud-based architectures.
]

#entry(
  date: "H1 2014",
  role: "Technical Evangelist, Azure",
  org:  "Microsoft",
)[
  - Conference keynotes, technical deep dives, reference architectures, whitepapers, blog posts.
]

#entry(
  date: "2013 — 2014",
  role: "Co-Founder and Software Engineer",
  org:  link("https://play.google.com/store/apps/details?id=org.mots.haxsync")[HaxSync — Android],
)[
  - Android application with 100,000+ downloads, top-100 paid apps, 4.4 user rating.
]

#entry(
  date: "2013",
  role: "Teaching Fellow, Fundamentals of Computer Science",
  org:  "Vienna University of Technology",
)[
  - Lectures on programming, algorithms, design patterns.
]

#entry(
  date: "2012",
  role: "Software Engineer Intern",
  org:  "ETM Control GmbH",
)[
  - HTML/JavaScript mobile client for a complex supervisory control system.
]

#H("Education")

#entry(
  date: "2011 — 2014",
  role: "BSc, Software and Information Engineering",
  org:  "Vienna University of Technology",
)[]

#H("Skills")

#grid(
  columns: (2.4cm, 1fr),
  column-gutter: 0.8em,
  row-gutter: 0.4em,
  align: (right + top, left + top),
  text(fill: muted, size: 9.5pt, "Leadership"),    [Cross-functional leadership, leading without authority, mentoring],
  text(fill: muted, size: 9.5pt, "Program Mgmt"),  [Agile/Scrum, planning, risk, dependency, stakeholder management],
  text(fill: muted, size: 9.5pt, "Programming"),   [Python, C\#, Java],
  text(fill: muted, size: 9.5pt, "Platforms"),     [GCP, Azure, Android],
  text(fill: muted, size: 9.5pt, "Technologies"),  [GenAI, Vertex AI, Kubernetes, Terraform],
  text(fill: muted, size: 9.5pt, "Certifications"),[3 × Google Cloud Certified Professional · 4 × Microsoft Certified Solution Professional],
)

#H("Languages")

#grid(
  columns: (2.4cm, 1fr),
  column-gutter: 0.8em,
  row-gutter: 0.3em,
  align: (right + top, left + top),
  text(fill: muted, size: 9.5pt, "German"),  [native],
  text(fill: muted, size: 9.5pt, "English"), [fluent],
)
