#import "/template/lib.typ": back-matter, front-matter, main-matter, settings

#show: settings.with(
  typeface: "Alegreya",
  author-name: "Jassiel Ovando Franco",
  author-university-id: 2021117600,
  work-title: [El título de esta tesis es «Esperanza»],
  author-email: "a2021117600@estudiantes.upsa.edu.bo",
  supervisor: [Nombre/s Apellido/s],
  degree-level: [Licenciatura],
  degree-program: [Ingeniería de Sistemas],
  faculty: [Facultad de Ingeniería],
  modality: [Proyecto de Grado],
  modality-acronym: [PG],
  faculty-acronym: [FAI],
  abstract: lorem(200),
  keywords: ("UPSA", "tesis"),
  date: datetime.today(),
  paper-size: "a4",
)

#front-matter(
  abstract-content: outline(
    target: heading.where(
      level: 3,
      outlined: true,
      supplement: [Sección],
    ),
    indent: 0em,
    title: [Contenido],
  ),
)

// #title-page()

// #all-outlines

#show: main-matter

// #set heading(offset: 2)
= Definición del problema
= Objetivos
= Metodología
= Alcance
= Contenido
= Cronograma
= Conclusiones

#show: back-matter

#bibliography("/data/bib.haya.yaml", title: [Fuentes de información], full: true)
