// Daniel Pfeller — CV
// Ported from moderncv (classic, blue) to Typst.

#let accent = rgb("#3873b3")
#let muted  = rgb("#7e8f9f")

#set document(title: "Daniel Pfeller — CV", author: "Daniel Pfeller")
#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 1.6cm),
)
#set text(font: "Latin Modern Sans", size: 10.5pt, lang: "en")
#show heading.where(level: 1): it => {
  v(0.4em)
  text(size: 13pt, weight: "bold", fill: accent, smallcaps(it.body))
  v(-0.2em)
  line(length: 100%, stroke: 0.6pt + accent)
  v(0.2em)
}
#show link: set text(fill: accent)

// ---------- header ----------
#let header(
  first: "",
  family: "",
  tagline: none,
  email: none,
  phone: none,
  photo: none,
  meta: none,
) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 1cm,
    align: (left + bottom, right + bottom),
    [
      #text(size: 28pt)[#text(fill: muted)[#first] #text(fill: accent, weight: "bold")[#family]]
      #v(0.2em)
      #line(length: 100%, stroke: 0.8pt + muted.lighten(40%))
      #if tagline != none { v(0.3em); text(size: 11pt, style: "italic", tagline) }
      #v(0.4em)
      #text(size: 9.5pt)[
        #if meta  != none [#meta \ ]
        #if phone != none [#phone\u{2003}·\u{2003}]
        #if email != none [#link("mailto:" + email)[#email]]
      ]
    ],
    if photo != none {
      box(stroke: 0.4pt + accent, inset: 0pt, image(photo, width: 2.8cm))
    },
  )
  v(0.4em)
}

// ---------- entry (date | role @ org | bullets) ----------
#let entry(date: "", role: "", org: "", body) = {
  grid(
    columns: (2.6cm, 1fr),
    column-gutter: 0.6em,
    align: (right + top, left + top),
    text(fill: muted, date),
    [
      *#role*#if org != "" [ \u{2014} #text(fill: accent, org)]
      #body
    ],
  )
  v(0.3em)
}

// ---------- two-column factoid line ----------
#let kv(key, value) = {
  grid(
    columns: (2.6cm, 1fr),
    column-gutter: 0.6em,
    align: (right + top, left + top),
    text(fill: muted, key),
    value,
  )
  v(0.15em)
}

// ============================================================
// CONTENT
// ============================================================

#header(
  first: "Daniel",
  family: "Pfeller",
  email: "pfeller.daniel@gmail.com",
  phone: "+41 79 459 85 45",
  meta:  "Born 24.02.1991",
  photo: "pic.jpg",
)

= Education

#entry(
  date: "2011 – 2014",
  role: "BSc, Software and Information Engineering",
  org:  "Vienna University of Technology",
)[]

= Career

#entry(
  date: "08/2017 – present",
  role: "Customer Engineer — Google Cloud Platform",
  org:  "Google",
)[
  - Triage enterprise and corporate customers' most pressing challenges, validate solution hypotheses, and align relevant stakeholders (customer, partner, internal) to ensure optimal outcomes.
  - Act as project- and product manager for the customer, making sure the right product gets launched the right way.
  - Go deep into solution design, often involving infrastructure modernization with Kubernetes or ML projects with Apache Beam, TensorFlow, and BigQuery.
]

#entry(
  date: "08/2014 – 07/2017",
  role: "Technology Solutions Professional — Azure",
  org:  "Microsoft",
)[
  - Drove cloud adoption for the largest and most complex companies in Austria through technical briefings, proofs of concept, architectural design sessions.
  - Deep involvement across the full software lifecycle in Web, Mobile, Cross-Platform, Big Data, and IoT.
  - Cooperated with strategic partners to implement successful cloud solutions.
  - Combined deep technical cloud expertise with customer business context to deliver value backed by strong business cases.
]

#entry(
  date: "05 – 08/2014",
  role: "Technical Evangelist — Azure",
  org:  "Microsoft",
)[
  - Drove strategic adoption of Microsoft Azure with the developer community.
  - Created impactful technical content: demos, sample code, reference apps.
]

#entry(
  date: "09/2013 – 02/2014",
  role: "Tutor — Fundamentals of Computer Science",
  org:  "Vienna University of Technology",
)[
  - Held lectures on programming, algorithms, design patterns.
  - Created and graded course exercises.
]

#entry(
  date: "02 – 10/2013",
  role: "Developer — Android",
  org:  link("https://play.google.com/store/apps/details?id=org.mots.haxsync")[HaxSync],
)[
  - Android app ranked *#28* on Google Play "top sold", over 100,000 downloads.
  - Achieved 4.4/5 rating by quickly reacting to customer feedback.
  - Increased sales by continuously shipping the most-requested features.
  - Simplified the UI and fixed bugs, cutting support requests ~50%.
]

#entry(
  date: "07/2012",
  role: "Developer — Internship",
  org:  "ETM Control GmbH",
)[
  - Built an HTML/JavaScript mobile client for a complex SCADA system.
  - Learned the company's proprietary programming language within a week.
]

= Projects

#entry(
  date: "09/2013 – 02/2014",
  role: "Sole Developer — Windows Phone",
  org:  link("http://www.windowsphone.com/en-us/store/app/weatherfrog/eee27255-2b60-47be-9e36-a208f4be91b7")[Weatherfrog],
)[
  - Unique weather app, 4/5 average rating in the Windows Phone Store.
  - Integrated multiple APIs: Forecast.io, Google Places, Google Maps, Flickr.
]

#entry(
  date: "01 – 04/2013",
  role: "University Team Project — Java",
  org:  "Unicloud",
)[
  - Java application merging multiple cloud storage providers (OneDrive, Dropbox, …).
  - Designed the technical architecture.
]

= Expertise and Skills

#kv("Development", "Advanced: C#, .NET, Java")
#kv("", "Intermediate: Python, Bash, PowerShell, HTML, CSS, JavaScript, SQL")
#kv("Platforms", "Google Cloud Platform, Kubernetes, Microsoft Azure, Windows, Linux, Android")
#kv("Dev Tools", "Visual Studio, IntelliJ, git, Visual Studio Online")
#kv("Certifications", "Google Cloud Certified: Professional Data Engineer")
#kv("", "Google Cloud Certified: Professional Cloud Architect")
#kv("", "Microsoft Certified Solution Expert: Cloud Platform and Infrastructure")
#kv("", "Microsoft Certified Solution Developer: Azure Solutions Architect")
#kv("", "Microsoft Certified Professional: Developing Microsoft Azure Solutions")
#kv("", "Microsoft Certified Professional: Implementing Microsoft Azure Infrastructure Solutions")
#kv("", "Microsoft Certified Professional: Architecting Microsoft Azure Solutions")

= Languages

#kv("German",  "native")
#kv("English", "fluent")
