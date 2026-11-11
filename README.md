# Plantilla para documentos de grado de la UPSA

Plantilla de Typst para trabajos de grado de la Universidad Privada de Santa Cruz de la Sierra (UPSA), Bolivia. El repositorio incluye el código de formato y un **Starter Kit** con documentos editables y ejemplos de citas, tablas, figuras y estructura académica. Adaptá el contenido a tu disciplina.

## Qué incluye

- Formato para páginas preliminares, capítulos, índices y bibliografía.
- Documentos de ejemplo para tesis, propuesta, currículum y estudio de factibilidad.
- Entrega BIME con tesis, carátula, lomo, resumen y referencias bibliográficas.
- Tareas de generación y actualización automática, con fuentes y opciones de exportación configuradas.
- Ajustes y extensiones recomendadas para VS Code.

## Empezar con el Starter Kit

Necesitás [Typst](https://typst.app/) y [Task](https://taskfile.dev/). Si usás [Visual Studio Code](https://code.visualstudio.com/), el repositorio incluye su configuración. Consultá las páginas oficiales para instalar estas herramientas.

Creá tu copia con **Use this template** y abrí la raíz del repositorio. Empezá por [documents/thesis.typ](documents/thesis.typ): cambiá los datos de `settings.with(...)` y reemplazá el contenido de demostración por tu trabajo.

Los ejemplos contienen datos ficticios y texto de relleno que debés sustituir antes de entregar.

## Generar documentos

Desde la raíz del repositorio:

```sh
task --list
task thesis
```

Las descripciones de las tareas se mantienen en [Taskfile.yaml](Taskfile.yaml), junto con los comandos de Typst y sus opciones. En VS Code también podés ejecutarlas desde la vista de la extensión **Task**, incluida entre las recomendaciones del proyecto.

Las tareas de documentos generan sus resultados y los actualizan al guardar cambios. Mantenelas abiertas mientras escribís y detenelas con `Ctrl+C`. Para trabajar con todos los documentos principales a la vez:

```sh
task
```

Para generar los documentos principales una sola vez, como hace CI:

```sh
task build
```

Los archivos generados quedan junto a los documentos fuente y no se incluyen en Git. La tesis se exporta en PDF/A-3a y PDF/UA-1; el currículum, en PDF y SVG; la entrega BIME usa Bundle. El estudio de factibilidad se ejecuta por separado con `task study`.

## Personalizar la plantilla

### Tipografía

La tipografía predeterminada combina [Alegreya](https://htfonts.com/en/fonts/alegreya/), [Alegreya Sans](https://htfonts.com/en/fonts/alegreya-sans/), [TeX Gyre Pagella Math](https://www.gust.org.pl/projects/e-foundry/tex-gyre) e [IBM Plex](https://www.ibm.com/plex/). También podés elegir entre:

- [TeX Gyre Termes y Heros](https://www.gust.org.pl/projects/e-foundry/tex-gyre), alternativas a Times New Roman y Arial/Helvetica.
- [Reforma](https://pampatype.com/reforma/), de PampaType.
- Adobe Source: [Sans](https://github.com/adobe-fonts/source-sans), [Serif](https://github.com/adobe-fonts/source-serif) y [Code Pro](https://github.com/adobe-fonts/source-code-pro).
- [Piazzolla](https://htfonts.com/en/fonts/piazzolla/) y [Andada](https://htfonts.com/en/fonts/andada/).
- [New Computer Modern](https://www.ctan.org/pkg/newcomputermodern).
- Arial, Helvetica, Helvetica Neue y Times New Roman, si están instaladas en tu sistema.

El ejemplo de currículum usa además Source Sans 3 y Source Serif 4; si no están instaladas, su paquete puede mostrar advertencias de sustitución. Las combinaciones disponibles están en [lib/typeface.typ](lib/typeface.typ). En `typeface-options`, `text` es obligatorio; `display` es opcional y usa `text` como valor predeterminado. `math` y `mono` también son opcionales y solo personalizan fórmulas y código cuando se proporcionan. Los roles opcionales `title-page` (texto complementario) y `title-page-title` (título del trabajo) se configuran en el mismo diccionario y también usan `text` como valor predeterminado.

### Bibliografía

Se configura en cada documento. La plantilla incluye estilos APA y ASCE, además de funciones para generar referencias de tu trabajo en BibLaTeX y Hayagriva.

El parámetro `supervisor` acepta un nombre único, que se muestra con el rol predeterminado «Guía», o una lista plana de pares rol y nombre. Por ejemplo, el Starter Kit muestra cómo añadir director, asesora y coasesor. Los pares aparecen en una tabla sin bordes en la portada y en la tabla del abstracto.

## Recursos y consultas

- [Documentación de Typst en español](https://jassielof.github.io/typst/).
- [Accesibilidad de la plantilla](ACCESSIBILITY.md).
- [Historial de cambios](CHANGELOG.md).
- [Issues](https://github.com/FAI-UPSA/thesis-template/issues) para errores y [Discussions](https://github.com/FAI-UPSA/thesis-template/discussions) para consultas.

## Licencia

El código de la plantilla se distribuye bajo [Apache 2.0](LICENSE.txt). El contenido de los trabajos pertenece a sus autores. El logo y los elementos de identidad visual de la UPSA pertenecen a la institución y están sujetos a sus propias licencias.
