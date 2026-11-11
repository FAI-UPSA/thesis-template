/// Art. 136: Carátula o tapa interna.
///
/// La carátula o tapa interna contiene los mismos datos que la portada externa, con la adición de: "{modalidad de grado} para optar al grado de {grado} en {carrera}".
#let title-page(is-front-cover: false) = context {
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

  let cover-scale = if is-front-cover { 1.15 } else { 1.1 }
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
    number-type: "lining",
  )

  set par(
    justify: false,
    leading: 1em,
  )

  set align(center)

  show title: set text(
    size: (body-size * (if is-front-cover { 1.3 } else { 1.2 })),
    weight: "medium",
    hyphenate: false,
    font: cover-title-typeface.font,
  )

  show title: set block(
    above: 3em,
    width: 90%,
    below: 4em,
    // fill: luma(150),
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

  block(upper(text(faculty, tracking: 0.1em, size: 1.05em)))

  title()

  block(
    width: 50%,
    {
      set par(leading: 0.75em)
      upper(text(modality, tracking: 0.1em, size: 1.05em))
      v(1em)
      [para optar al grado de]
      v(2em)
      text(degree-level, size: 1.1em, style: "italic")
      linebreak()
      [en]
      linebreak()
      upper(
        text(major, tracking: 0.075em, size: 1.05em),
      )
    },
  )

  v(0.5fr)

  [por]

  v(0.5fr)

  text(author, size: 1.15em)

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

  v(2fr)

  // Place and year.
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

