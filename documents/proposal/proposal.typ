#import "/template/lib.typ": back-matter, front-matter, main-matter, settings
#import "@preview/versatile-apa:7.2.0": abstract-page, appendix, title-page, versatile-apa as apa-style

#set document(
  title: [El título de esta tesis es «Esperanza»],
  author: "Jassiel Ovando Franco",
  description: lorem(100),
  keywords: ("UPSA", "tesis"),
)

#set text(lang: "es", region: "bo", font: "Alegreya")

#show: apa-style.with(
  font-size: 12pt,
)

#title-page(
  affiliations: [Facultad de Ingenieria, Universidad Privada de Santa Cruz de la Sierra],
  course: [MG550: Modalidad de Grado],
  instructor: [Ing. Nombre Apellido],
)

//   author-name: "Jassiel Ovando Franco",
//   author-university-id: 2021117600,
//   work-title: [El título de esta tesis es «Esperanza»],
//   author-email: "a2021117600@estudiantes.upsa.edu.bo",
//   supervisor: [Nombre/s Apellido/s],
//   degree-level: [Licenciatura],
//   degree-program: [Ingeniería de Sistemas],
//   faculty: [Facultad de Ingeniería],
//   modality: [Proyecto de Grado],
//   modality-acronym: [PG],
//   faculty-acronym: [FAI],
//   abstract: lorem(200),
//   keywords: ("UPSA", "tesis"),
//   date: datetime.today(),
//   paper-size: "a4",
// )

// #front-matter(
//   abstract-content: outline(
//     target: heading.where(
//       level: 3,
//       outlined: true,
//       supplement: [Sección],
//     ),
//     indent: 0em,
//     title: [Contenido],
//   ),
// )

// // #title-page()

// // #all-outlines

// #show: main-matter

// #set heading(offset: 2)
= Definición del problema
= Objetivos
= Metodología
= Alcance
= Contenido
= Cronograma
= Conclusiones

// #show: back-matter

#pagebreak()
#bibliography("/data/bib.haya.yaml", title: [Fuentes de información], full: true)

#show: appendix
