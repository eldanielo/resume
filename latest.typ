// Daniel Pfeller — CV (latest)
// Ported from latest.tex (moderncv classic blue, no photo, tagline).

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
    columns: if photo != none { (1fr, auto) } else { (1fr,) },
    column-gutter: 1cm,
    align: (left + bottom, right + bottom),
    [
      #text(size: 28pt)[#text(fill: muted)[#first] #text(fill: accent, weight: "bold")[#family]]
      #v(0.2em)
      #line(length: 100%, stroke: 0.8pt + muted.lighten(40%))
      #v(0.4em)
      #text(size: 9.5pt)[
        #if meta  != none [#meta \ ]
        #if phone != none [#phone\u{2003}·\u{2003}]
        #if email != none [#link("mailto:" + email)[#email]]
      ]
    ],
    ..if photo != none {
      (box(stroke: 0.4pt + accent, inset: 0pt, image(photo, width: 2.8cm)),)
    } else { () },
  )
  if tagline != none {
    v(0.6em)
    block(
      width: 100%,
      inset: (x: 0pt, y: 0.4em),
      text(size: 10pt, style: "italic", fill: muted.darken(25%), tagline),
    )
  }
  v(0.4em)
}

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

#let kv(key, value) = {
  grid(
    columns: (3.4cm, 1fr),
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
  tagline: [
    10+ years of expertise leading cloud transformations and delivering impactful machine learning / AI solutions for global enterprises and unicorn startups. Proven ability to lead cross-functional teams, act as trusted advisor to C-level executives (impacting \$500M+ in yearly cloud revenue), and drive significant business outcomes such as revenue expansion, cost optimization, and enhanced operational efficiency. Deeply passionate about leveraging cutting-edge technologies to solve complex business problems and ensure successful program execution at scale.
  ],
)

= Career

#entry(
  date: "2017 – present",
  role: "Customer Engineer — Google Cloud Platform",
  org:  "Google",
)[
  - Led cross-functional technical engagements, integrating cloud technologies with client requirements to deliver scalable, high-performance solutions for some of the world's largest enterprises and high-growth unicorn startups. Managed projects from initial requirements gathering and solution architecture design through seamless implementation, deployment, and ongoing support, ensuring successful program execution.
  - Built strong relationships and acted as trusted advisor to key decision-makers at major companies, driving cloud adoption and impacting over \$500M cloud revenue in 2024.
  - Partnered closely with Google Engineering and Product Management to proactively identify market needs and inform product roadmap prioritization, directly contributing to Google Cloud's strategic product direction.
]

#entry(
  date: "2022",
  role: "Technical Program Manager — Google Assistant",
  org:  "Google",
)[
  - Led and delivered a critical cross-functional program involving two machine learning engineering teams, delivering the group's first ML model in Chrome production.
  - Engineered and implemented a complete revamp of coordination processes for a global, 80-engineer program team, enhancing alignment and increasing project velocity by 20%.
  - Defined key OKRs aligned to overall program objectives, to guide performance, drive technical excellence, and ensure timely program delivery.
  - Rigorously monitored key program performance metrics, enabling data-driven program adjustments, including a timely and impactful course correction to mitigate risks and optimize program outcomes.
  - Streamlined program scope by strategically refocusing efforts onto key user journeys and sunsetting lower-priority initiatives, resulting in a 10% increase in user satisfaction scores and improved program focus.
]

#entry(
  date: "2014 – 2017",
  role: "Technology Solutions Professional — Azure",
  org:  "Microsoft",
)[
  - Played a pivotal role in the early days of cloud computing, pushing the frontiers of Azure adoption when cloud technology was still in its infancy and largely uncharted territory.
  - Pioneered technical strategies that redefined how enterprises approached IT infrastructure, leading them away from traditional setups and into scalable, cloud-based architectures that future-proofed their businesses.
]

#entry(
  date: "H1 2014",
  role: "Technical Evangelist — Azure",
  org:  "Microsoft",
)[
  - Held keynotes and technical deep-dive sessions at conferences, published reference architectures, and authored whitepapers and blog posts.
]

#entry(
  date: "2013 – 2014",
  role: "Co-Founder & Software Engineer — Android",
  org:  link("https://play.google.com/store/apps/details?id=org.mots.haxsync")[HaxSync],
)[
  - Created an Android application with over 100,000 downloads, ranking in the *top 100* paid apps, maintaining a 4.4 user rating by delivering unique value to the user.
]

#entry(
  date: "2013",
  role: "Teaching Fellow — Fundamentals of Computer Science",
  org:  "Vienna University of Technology",
)[
  - Held lectures about programming, algorithms, design patterns, etc.
]

#entry(
  date: "2012",
  role: "Software Engineer — Internship",
  org:  "ETM Control GmbH",
)[
  - Developed an HTML/JavaScript based mobile client for a complex supervisory control system.
]

= Education

#entry(
  date: "2011 – 2014",
  role: "BSc, Software and Information Engineering",
  org:  "Vienna University of Technology",
)[]

= Expertise and Skills

#kv("Project Management", "Agile/Scrum, project planning and execution, risk management, dependency management, stakeholder management")
#kv("Leadership", "Cross-functional team leadership, leading without authority, mentoring")
#kv("Programming", "Python, C#, Java")
#kv("Platforms", "GCP, Azure, Android")
#kv("Technologies", "GenAI, Vertex AI, k8s, terraform")
#kv("Certifications", "3 × Google Cloud Certified Professional")
#kv("", "4 × Microsoft Certified Solution Professional")

= Languages

#kv("German",  "native")
#kv("English", "fluent")
