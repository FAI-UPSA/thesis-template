/// Este archivo es el responsable de generar los documentos finales para la entrega de trabajos de grado.
#import "/lib.typ": (
  bime-abstract, book-front-cover, book-spine-cover, generate-biblatex, generate-hayagriva, print-layout-state,
)

/// El documento principal siendo la tesis en sí, es necesario para que se definan los datos de la tesis y que los demás documentos puedan acceder a ellos.
#document(
  "thesis.pdf",
  {
    include "thesis.typ"
    // Se necesita actualizar el formato específico de impresión a duplex o simplex si en el documento principal no se especifica.
    print-layout-state.update("duplex")
  },
)


/// Resumen del tema para el formulario de defensa: máximo 250 palabras, una plana, distinto del abstract del informe. Por consigna no menciona capítulos, antecedentes, justificación, objetivos ni conclusiones: solo de qué se trata el trabajo.
#document(
  "abstract.pdf",
  bime-abstract(
    // En el caso de que tu abstracto de la tesis sea más extenso o no esté conforme a las indicaciones de la BIME, body permite sobreescribirlo con un texto alternativo. Por defecto, se usa el abstracto de la tesis.
    // body: []
  ),
)

/// Genera la carátula de la tesis.
#document("front-cover.pdf", book-front-cover())
/// Genera el lomo de la tesis.
#document("spine-cover.pdf", book-spine-cover())

/// Genera la referencia bibliográfica en formato BibLaTeX para que otros tesistas/estudiantes puedan referenciar tu trabajo fácilmente.
#generate-biblatex(
  // La conversión automática es de mejor esfuerzo: supone hasta dos apellidos y puede confundir nombres compuestos o un único apellido. Revisá thesis.bib; descomentá author para reemplazar el resultado por el nombre académico exacto, sin cambiar la portada.
  // author: "Ovando Franco, Jassiel",
  // Si necesitás una clave de cita propia en thesis.bib:
  // bibkey: "apellido2026tema",
)

/// Genera la referencia pero en formato YAML Hayagriva (de Typst).
#generate-hayagriva(
  // Revisá también thesis.yaml. Si la conversión falla, descomentá author e indicá el mismo nombre académico que en el generador BibLaTeX.
  // author: "Ovando Franco, Jassiel",
  // Si necesitás una clave de cita propia en thesis.yaml:
  // citation-key: "apellido2026tema",
  /// El número de clasificación es opcional ya que la Biblioteca de la UPSA lo asigna después de la entrega del trabajo.
  // call-number: "Signatura asignada por la biblioteca",
  // Para omitir la nota con el nombre de la persona supervisora:
  // supervisor-role: none,
)
