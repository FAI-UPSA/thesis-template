# Plantilla para documentos de grado de la UPSA

Plantilla para documentos de grado de la Universidad Privada de Santa Cruz de la Sierra (UPSA), Bolivia.

> La portada actual conserva la estructura requerida y presenta un diseño visual distinto del institucional.

Para instalar y configurar un proyecto completo, consultá la guía del [Kit de inicio de tesis de la UPSA](https://github.com/FAI-UPSA/thesis-starter).

## Configuración y composición

| Función | Qué ofrece |
| --- | --- |
| `settings` | Centraliza los metadatos, la tipografía y el tamaño de papel. Admite carta y A4, con márgenes para pantalla, impresión a una cara o impresión a doble cara. |
| `front-matter` | Compone la portada, los resúmenes, las páginas preliminares opcionales y los índices. El índice del abstracto de facultad muestra los capítulos numerados. |
| `main-matter` | Aplica estilos a capítulos, secciones, figuras, tablas, fórmulas, listados y citas textuales. |
| `part` | Inserta una parte cuando `multi-part: true` está activo. Los encabezados `=` siguen representando capítulos y su numeración continúa entre partes. |
| `back-matter` | Presenta la bibliografía como capítulo sin número y aplica numeración alfabética a los anexos. Sus secciones aparecen en el índice de anexos. |

El índice general y el índice de anexos enlazan a sus encabezados. La jerarquía de encabezados también se refleja en los marcadores del PDF. Las referencias internas se actualizan cuando cambia la numeración.

## Tipografía

Alegreya es el conjunto predeterminado, con Alegreya Sans para títulos, TeX Gyre Pagella Math para fórmulas e IBM Plex Mono para código. La plantilla exporta el diccionario `typefaces`. Seleccioná un conjunto por nombre con `typeface` o pasá un diccionario personalizado mediante `typeface-options`. Este parámetro admite tanto un conjunto directo con `text`, `display`, `math` y `mono` como un diccionario de conjuntos por nombre. Para personalizar los títulos, usá un diccionario como `display: (font: "Alegreya Sans")`.

## Bibliografía y exportación

La bibliografía usa APA de forma predeterminada. Podés seleccionar otro estilo en `bibliography`. El módulo `csl-styles` expone los estilos APA y ASCE incluidos.

La plantilla ofrece funciones para componer cubiertas, lomos y resúmenes BIME, y para generar registros bibliográficos en BibLaTeX y Hayagriva. El Starter Kit muestra cómo reunir estas funciones en una exportación local mediante Bundle.

La plantilla utiliza encabezados, figuras y tablas semánticos para conservar la estructura del documento al exportar. Las descripciones alternativas y el orden lógico del contenido dependen de la autoría. Consultá la [guía de accesibilidad de Typst](https://typst.app/docs/guides/accessibility/).

## Licencia

La plantilla se distribuye bajo la [licencia Apache 2.0](LICENSE.txt).
