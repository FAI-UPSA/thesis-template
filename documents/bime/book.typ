#import "/lib.typ": (
  bime-abstract, book-front-cover, book-spine-cover, generate-biblatex, generate-hayagriva, print-layout-state,
)

#document(
  "thesis.pdf",
  {
    include "/documents/thesis/thesis.typ"
    // Se necesita actualizar el formato de impresión a duplex o simplex si en el documento principal no se especifica.
    print-layout-state.update("duplex")
  },
)


// Resumen del tema para el formulario de defensa: máximo 250 palabras, una plana, distinto del abstract del informe. Por consigna no menciona capítulos, antecedentes, justificación, objetivos ni conclusiones: solo de qué se trata el trabajo.
#document("abstract.pdf", bime-abstract())

#document("front-cover.pdf", book-front-cover())

#document("spine-cover.pdf", book-spine-cover())

#generate-biblatex()
#generate-hayagriva(call-number: "Th005.3 Ov1; CD005.3 Ov1")
