/// Art. 136: Carátula o tapa interna.
///
/// La carátula o tapa interna contiene los mismos datos que la portada externa, con la adición de: "{modalidad de grado} para optar al grado de {grado} en {carrera}".
#let new-title-page(is-front-cover: false) = context {
  import "info.typ"
  import "@preview/datify:1.3.0": custom-date-format

  let typeface = info.font.get()
  let cover-typeface = typeface.title-page
  let cover-title-typeface = typeface.title-page-title
  let author = info.author-name.get()
  let faculty = info.faculty.get()
  let major = info.degree-program.get()
  let degree-level = info.degree-level.get()
  let modality = info.thesis-modality.get()
  let year = info.work-date.get()
  let work-title = info.work-title.get()
  let author-id = info.author-uni-id.get()
  let supervisor = info.supervisor.get()
  let city = info.city.get()
  let paper-size = info.paper-size.get()

  set document(title: work-title)

  let cover-margins = if paper-size == "a4" {
    (x: 30mm, bottom: 30mm, top: 30mm)
  } else {
    (x: 1.2in, bottom: 1.4in, top: 1.8in)
  }

  let cover-scale = if is-front-cover { 1.125 } else { 1.1 }
  let body-size = typeface.text.size * cover-scale

  set page(
    paper: paper-size,
    margin: cover-margins,
    numbering: none,
    header: none,
    footer: none,
  ) if is-front-cover

  set text(
    font: cover-typeface.font,
    size: body-size,
    weight: "regular",
    hyphenate: false,
    number-type: "lining",
  )

  set par(
    justify: false,
    leading: 1em,
  )

  set align(center)

  show title: set text(
    size: (body-size * (if is-front-cover { 1.3 } else { 1.25 })),
    weight: "medium",
    hyphenate: false,
    font: cover-title-typeface.font,
  )

  show title: set block(
    above: 3em,
    width: 80%,
  )

  show title: set par(
    leading: 0.55em,
    justify: false,
  )

  image(
    "../assets/images/upsa-logo-green.svg",
    width: if is-front-cover { 47.5% } else { 40% },
    alt: "Logo de la Universidad Privada de Santa Cruz de la Sierra",
  )

  v(1em)

  text(faculty, size: 1.1em, weight: "medium")

  title()

  v(0.75fr)

  [por]

  v(0.5fr)

  text(author, size: 1.1em)

  v(1fr)

  {
    set par(leading: 1.1em)
    upper(text(modality, tracking: 0.1em, size: 1.05em))
    v(1em)
    [que se presenta para optar al grado de]
    v(1em)
    text(degree-level, size: 1.1em, style: "italic")
    linebreak()
    [en]
    h(0.5em)
    upper(text(major, tracking: 0.075em, size: 1.05em))
  }

  v(1fr)

  if supervisor != none {
    set align(left)
    v(1fr)

    table(
      columns: 2,
      stroke: none,
      align: (right, left),
      ..info.supervisor-entries(supervisor),
    )
  }

  v(1fr)

  block(spacing: 0pt, {
    text(city)
    v(0.4em)

    text[
      #custom-date-format(
        year,
        pattern: "yyyy",
        lang: text.lang,
      )
    ]
  })

  if not is-front-cover {
    pagebreak(to: "odd", weak: true)
  }
}

/// Diseño tradicional: encabezado institucional, título, autoría y fecha.
#let old-title-page(is-front-cover: false) = context {
  import "info.typ"
  let typeface = info.font.get()
  let faculty = info.faculty.get()
  let major = info.degree-program.get()
  let modality = info.thesis-modality.get()
  let degree = info.degree-level.get()
  let supervisor = info.supervisor.get()
  let paper-size = info.paper-size.get()

  set document(title: info.work-title.get())
  set page(
    paper: paper-size,
    margin: if paper-size == "a4" { (x: 30mm, y: 30mm) } else { (x: 1.2in, top: 1.8in, bottom: 1.4in) },
    numbering: none,
    header: none,
    footer: none,
  ) if is-front-cover
  set align(center)
  set par(justify: false, leading: 0.75em)
  set text(font: typeface.title-page.font, size: 14pt, weight: "bold", number-type: "lining")

  image(
    "../assets/images/upsa-logo-green.svg",
    width: if is-front-cover { 47.5% } else { 40% },
    alt: "Logo de la Universidad Privada de Santa Cruz de la Sierra",
  )
  v(1em)
  if faculty != none { block(upper(faculty)) }
  block[#upper[Carrera: #major]]
  v(1fr)
  block(
    width: 100%,
    text(
      font: typeface.title-page-title.font,
      size: 15pt,
      hyphenate: false,
      upper(info.work-title.get()),
    ),
  )

  v(1em)
  block(upper(modality))
  block(upper(degree))
  if not is-front-cover {
    v(1.5em)
    block(width: 80%)[#modality para optar al grado de #degree en #major]
  }
  v(1fr)
  block(info.author-name.get())
  if supervisor != none {
    v(1em)
    let entries = if type(supervisor) == array { supervisor } else { ([Docente guía], supervisor) }
    table(columns: 2, stroke: none, align: (right, left), ..info.supervisor-entries(entries))
  }
  v(1fr)
  block(info.city.get())
  block(str(info.work-date.get().year()))
  if not is-front-cover { pagebreak(to: "odd", weak: true) }
}

#let title-page(is-front-cover: false) = context {
  import "info.typ"
  if info.title-page-mode.get() == "old" {
    old-title-page(is-front-cover: is-front-cover)
  } else {
    new-title-page(is-front-cover: is-front-cover)
  }
}
