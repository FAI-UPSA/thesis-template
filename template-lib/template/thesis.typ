#import "../lib.typ": back-matter, front-matter, main-matter, settings

#show: settings.with(
  author-name: "Nombre Apellido",
  author-email: "estudiante@example.org",
  author-university-id: 2026000000,
  work-title: [Ejemplo mínimo de trabajo de grado],
  supervisor: [Nombre del asesor],
  degree-level: [Licenciatura],
  degree-program: [Ingeniería de Sistemas],
  faculty: [Facultad de Ingeniería],
  faculty-acronym: [FAI],
  modality: [Proyecto de Grado],
  modality-acronym: [PG],
  date: datetime.today(),
  abstract: [
    Este documento ilustra la configuración de un trabajo de grado mediante una
    plantilla en Typst. Reúne los datos del trabajo, capítulos, una tabla y citas
    bibliográficas. El contenido es ilustrativo.
  ],
  keywords: ("UPSA", "Typst", "trabajo de grado"),
)

#front-matter()
#show: main-matter

= Introducción

Este ejemplo muestra la estructura básica de un trabajo de grado en Typst.
Reemplazá los datos y el contenido por los de tu trabajo.

== Citas y referencias

La documentación de Typst describe cómo añadir citas y bibliografías
@typst-docs. Las fuentes de este ejemplo están en `ref.bib`.

#show: back-matter
#bibliography("ref.bib", style: "ieee")
