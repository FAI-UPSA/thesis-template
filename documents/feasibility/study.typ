#import "/lib.typ": back-matter, front-matter, main-matter, settings

#show: settings.with(
  graduation-work-info: (
    title: [Estudio de factibilidad...],
  ),
  degree-info: (
    program: [Ingeniería industrial y de sistemas],
  ),
  fonts: (
    body: "Source Serif 4",
    title: "Source Sans 3",
  ),
)

#front-matter()

#show: main-matter

#set heading(offset: 1)

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
  "bibliography/ref.haya.yaml",
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
