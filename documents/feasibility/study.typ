#import "/lib.typ": back-matter, front-matter, main-matter, settings

#show: settings.with(
  // Datos de ejemplo: reemplazalos antes de entregar el estudio.
  author-name: "Nombre y Apellido",
  author-email: "a2021123456@upsa.edu.bo",
  author-university-id: 2021123456,
  work-title: [Estudio de factibilidad...],
  supervisor: [Nombre del asesorauthor],
  degree-level: [Licenciatura],
  degree-program: [Ingeniería industrial y de sistemas],
  faculty: [Facultad de Ingeniería],
  faculty-acronym: [FAI],
  modality: [Proyecto de Grado],
  modality-acronym: [PG],
  abstract: [Reemplazá este texto con el resumen de tu estudio de factibilidad.],
  keywords: ("factibilidad",),
  date: datetime.today(),
)

#front-matter()

#show: main-matter

#include "chapters/1.introducción.typ"
#include "chapters/2.marco teórico.typ"
#include "chapters/3.diagnóstico interno de la empresa.typ"
#include "chapters/4.estudio de la materia prima e insumos.typ"
#include "chapters/5.estudio de mercado.typ"
#include "chapters/6.localización y tamaño.typ"
#include "chapters/7.estudio de ingeniería.typ"
#include "chapters/8.inversiones.typ"
#include "chapters/9.presupuesto de ingresos y costos.typ"
#include "chapters/10.financiamiento.typ"
#include "chapters/11.evaluación social y ambiental.typ"
#include "chapters/12.diseño de la organización.typ"
#include "chapters/13.evaluación económica y financiera.typ"
#include "chapters/14.conclusiones y recomendaciones.typ"

#show: back-matter

#bibliography(
  "../ref.haya.yaml",
  style: "ieee",
  title: [Bibliografía],
  full: true,
)

= Instrumentos para la Recolección de Información
== Guías de Entrevistas
== Cuestionarios
== Etc.
= Propios de la Investigación
= Cálculos, Tablas, Cotizaciones, Etc.
= Curriculum Vitae
