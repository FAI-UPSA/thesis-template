#import "@preview/butterick-resume:0.1.2": introduction, template, two-grid

#show: template.with()

#set text(
  lang: "es",
  region: "bo",
  font: "Alegreya",
)

#show heading.where(level: 1): set text(font: "Alegreya Sans")
#show heading.where(level: 2): set text(font: "Alegreya")

#introduction(
  name: text(font: "Alegreya")[Nombre y Apellido],
  details: text(font: "Alegreya Sans")[
    LinkedIn
    #h(1em)
    GitHub
    #h(1em)
    Correo electrónico
  ],
)

= Educación
#two-grid(
  left: [UPSA],
  right: [2021 -- 2025],
)

_Licenciatura en Ingeniería de Sistemas_

- #lorem(10)
- #lorem(10)
- #lorem(10)

#two-grid(
  left: [Colegio],
  right: [2015 -- 2021],
)

_Bachiller en Humanidades_

- #lorem(10)
- #lorem(10)
- #lorem(10)

= Habilidades técnicas

- #lorem(10)
- #lorem(10)
- #lorem(10)

= Proyectos, premios y reconocimientos

#two-grid(
  left: [TecnoUPSA],
  right: [2026],
)

_Primer lugar..._

- #lorem(10)
- #lorem(10)
- #lorem(10)
