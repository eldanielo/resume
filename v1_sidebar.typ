// V1 — Sidebar layout. Left rail = reference info, right rail = narrative.

#let accent = rgb("#2c5282")
#let muted  = rgb("#718096")
#let bg     = rgb("#f4f6f8")

#set document(title: "Daniel Pfeller — CV", author: "Daniel Pfeller")
#set page(paper: "a4", margin: 0pt)
#set text(font: "Latin Modern Sans", size: 9.5pt, lang: "en")
#show link: set text(fill: accent)

#let H(body) = {
  v(0.5em)
  text(size: 11pt, weight: "bold", fill: accent, smallcaps(body))
  v(-0.15em)
  line(length: 100%, stroke: 0.5pt + accent)
  v(0.2em)
}

#let SideH(body) = {
  v(0.5em)
  text(size: 10pt, weight: "bold", fill: white, smallcaps(body))
  v(-0.1em)
  line(length: 100%, stroke: 0.4pt + white.transparentize(40%))
  v(0.2em)
}

#let entry(date: "", role: "", org: "", body) = {
  text(fill: muted, size: 8.5pt, date)
  linebreak()
  text(weight: "bold", role)
  if org != "" { text(fill: accent)[ \u{2014} #org] }
  body
  v(0.3em)
}

#let kv(key, value) = {
  text(fill: white.transparentize(25%), size: 8.5pt, weight: "bold", smallcaps(key))
  linebreak()
  text(fill: white, value)
  v(0.4em)
}

#grid(
  columns: (33%, 67%),
  rows: 100%,

  // ============ LEFT SIDEBAR ============
  block(
    fill: accent.darken(15%),
    width: 100%,
    height: 100%,
    inset: (x: 1.2cm, y: 1.4cm),
    text(fill: white)[
      #text(size: 22pt, weight: "bold", fill: white)[Daniel] \
      #text(size: 22pt, weight: "bold", fill: white.transparentize(30%))[Pfeller]
      #v(0.3em)
      #line(length: 30%, stroke: 0.8pt + white)
      #v(0.6em)

      #SideH("Contact")
      #text(size: 8.5pt)[
        #link("mailto:pfeller.daniel@gmail.com")[pfeller.daniel\@gmail.com] \
        +41 79 459 85 45
      ]

      #SideH("Languages")
      #kv("German",  "Native")
      #kv("English", "Fluent")

      #SideH("Programming")
      Python · C\# · Java

      #v(0.4em)
      #SideH("Platforms")
      GCP · Azure · Android

      #v(0.4em)
      #SideH("Technologies")
      GenAI · Vertex AI · k8s · Terraform

      #v(0.4em)
      #SideH("Leadership")
      Cross-functional team leadership · leading without authority · mentoring

      #v(0.4em)
      #SideH("Project Mgmt")
      Agile/Scrum · planning & execution · risk · dependency · stakeholder mgmt

      #v(0.4em)
      #SideH("Certifications")
      3 × Google Cloud Certified Professional \
      4 × Microsoft Certified Solution Professional

      #SideH("Education")
      #text(size: 8.5pt, fill: white.transparentize(25%))[2011 – 2014] \
      *BSc Software & Information Engineering* \
      Vienna University of Technology
    ],
  ),

  // ============ RIGHT MAIN ============
  block(
    width: 100%,
    height: 100%,
    inset: (x: 1.2cm, y: 1.4cm),
    [
      // tagline
      #block(
        inset: (y: 0.4em),
        text(size: 10pt, style: "italic", fill: muted.darken(20%))[
          10+ years leading cloud transformations and delivering ML/AI solutions for global enterprises and unicorn startups. Trusted advisor to C-level executives, impacting *\$500M+* in yearly cloud revenue. Driven by complex problems and program execution at scale.
        ],
      )

      #H("Experience")

      #entry(
        date: "2017 – present",
        role: "Customer Engineer — Google Cloud Platform",
        org: "Google",
      )[
        - Led cross-functional engagements integrating cloud with client requirements — scalable, high-performance solutions for the world's largest enterprises and high-growth unicorns. Owned projects end-to-end: requirements → architecture → deployment → support.
        - Trusted advisor to decision-makers at major accounts, driving cloud adoption and impacting *\$500M+* cloud revenue in 2024.
        - Partnered with Google Engineering & PM to surface market needs and inform roadmap, contributing directly to Google Cloud's strategic direction.
      ]

      #entry(
        date: "2022",
        role: "Technical Program Manager — Google Assistant",
        org: "Google",
      )[
        - Delivered group's first ML model in Chrome production via cross-functional program across two ML engineering teams.
        - Revamped coordination for 80-engineer global program, increasing velocity *+20%*.
        - Defined OKRs; monitored performance metrics enabling data-driven course corrections.
        - Refocused scope onto key user journeys, sunsetting low-priority work → *+10%* user satisfaction.
      ]

      #entry(
        date: "2014 – 2017",
        role: "Technology Solutions Professional — Azure",
        org: "Microsoft",
      )[
        - Pivotal role in early cloud adoption when the space was largely uncharted.
        - Pioneered technical strategies that moved enterprises from traditional IT into scalable cloud architectures.
      ]

      #entry(
        date: "H1 2014",
        role: "Technical Evangelist — Azure",
        org: "Microsoft",
      )[
        - Conference keynotes, deep-dive sessions, reference architectures, whitepapers, blog posts.
      ]

      #entry(
        date: "2013 – 2014",
        role: "Co-Founder & Software Engineer — Android",
        org: link("https://play.google.com/store/apps/details?id=org.mots.haxsync")[HaxSync],
      )[
        - Android app, *100K+ downloads*, top-100 paid, 4.4 user rating.
      ]

      #entry(
        date: "2013",
        role: "Teaching Fellow — Fundamentals of Computer Science",
        org: "Vienna University of Technology",
      )[
        - Lectures on programming, algorithms, design patterns.
      ]

      #entry(
        date: "2012",
        role: "Software Engineer — Internship",
        org: "ETM Control GmbH",
      )[
        - HTML/JavaScript mobile client for complex SCADA system.
      ]
    ],
  ),
)
