// Academic CV Template for Alexandria Thylane
// Reads data from src/data/cv.yaml

#let data = yaml("../src/data/cv.yaml")

// Page setup
#set document(
  title: [Curriculum Vitae — #data.meta.name],
  author: data.meta.name,
)

#set page(
  paper: "us-letter",
  margin: (x: 0.75in, y: 0.75in),
  footer: context {
    if counter(page).get().first() == counter(page).final().first() {
      // Only show on last page
      align(right)[
        #set text(size: 7pt, fill: luma(150))
        Generated #datetime.today().display("[month repr:short] [day], [year]")
      ]
    }
  }
)

#set text(
  font: "New Computer Modern",
  size: 10pt,
)

#set par(justify: true)

// Heading styles
#show heading.where(level: 1): it => {
  set text(size: 20pt, weight: "bold")
  v(0.3em)
  it.body
  v(0.2em)
}

#show heading.where(level: 2): it => {
  set text(size: 11pt, weight: "bold")
  v(0.8em)
  upper(it.body)
  v(0.2em)
  line(length: 100%, stroke: 0.5pt)
  v(0.2em)
}

// Helper function for entry with title and date on same line
#let entry(title, date, org: none, bullets: none) = {
  grid(
    columns: (1fr, auto),
    gutter: 0.5em,
    [*#title*],
    [#date],
  )
  if org != none {
    text(style: "italic")[#org]
    linebreak()
  }
  if bullets != none {
    v(0.2em)
    for bullet in bullets {
      [• #bullet \ ]
    }
  }
  v(0.4em)
}

// Helper for fellowship/honor items
#let honor-item(title, org, date) = {
  grid(
    columns: (1fr, auto),
    gutter: 0.5em,
    [#title],
    [#org, #date],
  )
  v(0.2em)
}

// Helper for service items
#let service-item(title, org, date) = {
  grid(
    columns: (1fr, auto),
    gutter: 0.5em,
    if org != none [#title, #org] else [#title],
    [#date],
  )
  v(0.2em)
}

// Helper to format author list with self bolded
#let format-authors(authors) = {
  authors.map(a => {
    if "self" in a and a.self == true {
      [*#a.name*]
    } else {
      a.name
    }
  }).join(", ")
}

// Document content
= #data.meta.name

#align(center)[
  #link(data.meta.website)[#data.meta.website] #h(1em) | #h(1em)
  #link("mailto:" + data.meta.email)[#data.meta.email]
]

#v(0.3em)

== Education

#for edu in data.education {
  grid(
    columns: (1fr, auto),
    gutter: 0.5em,
    [*#edu.institution*],
    [#edu.date],
  )

  if "honors" in edu {
    [#edu.degree, #edu.field — #edu.honors \ ]
  } else {
    [#edu.degree, #edu.field \ ]
  }

  if "gpa" in edu {
    [GPA: #edu.gpa \ ]
  }
  if "thesis" in edu {
    [Thesis: #emph(edu.thesis.title) \ ]
  }
  if "advisors" in edu {
    let advisor-str = edu.advisors.map(a => a.name + " (" + a.department + ")").join(", ")
    [Advisors: #advisor-str \ ]
  }
  if "graduate_coursework" in edu {
    [Graduate Coursework (CUNY Graduate Center): \ ]
    for course in edu.graduate_coursework {
      [#h(1em) #course.course — #course.instructor (#course.term) \ ]
    }
  }
  if "minor" in edu {
    [Minor in #edu.minor \ ]
  }
  v(0.3em)
}

== Fellowships & Honors

#for item in data.fellowships {
  honor-item(item.title, item.organization, item.date)
}

== Research Experience

#for exp in data.research_experience {
  entry(
    exp.title,
    exp.date,
    org: exp.at("organization", default: none),
    bullets: exp.at("bullets", default: none),
  )
}

== Teaching Experience

#for exp in data.teaching_experience {
  entry(
    exp.title,
    exp.date,
    org: exp.at("organization", default: none),
    bullets: exp.at("bullets", default: none),
  )
}

== Industry Experience

#for exp in data.industry_experience {
  entry(
    exp.title,
    exp.date,
    org: exp.at("organization", default: none),
    bullets: exp.at("bullets", default: none),
  )
}

== Publications

=== Refereed Conference Proceedings

#for pub in data.publications.refereed_proceedings {
  [*#pub.title* \ ]
  [#format-authors(pub.authors) \ ]
  [_#pub.venue._ #pub.location. \ ]
  if "acceptance_rate" in pub {
    [Acceptance Rate: #pub.acceptance_rate \ ]
  }
  v(0.4em)
}

=== Interactivity Demos

#for pub in data.publications.interactivity_demos {
  [*#pub.title* \ ]
  [#format-authors(pub.authors) \ ]
  [_#pub.venue._ #pub.location. #pub.date. \ ]
  v(0.4em)
}

=== Manuscripts in Preparation

#for pub in data.publications.in_preparation {
  [*#pub.title* \ ]
  v(0.3em)
}

== Presentations

#for pres in data.presentations {
  [*#pres.title* \ ]
  for venue in pres.venues {
    if "type" in venue {
      [#venue.type, #venue.name #h(1fr) #venue.date \ ]
    } else {
      [#venue.name #h(1fr) #venue.date \ ]
    }
  }
  v(0.3em)
}

== Service & Engagement

#for item in data.service {
  service-item(item.title, item.at("organization", default: none), item.date)
}
