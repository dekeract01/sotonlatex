# Southampton LaTeX Templates

A collection of LaTeX templates I put together during my time at the
University of Southampton, covering the common document types needed for
study and research: short reports, a doctoral thesis, conference posters
and Beamer presentations. Each template lives in its own directory and
compiles independently.

I wrote these to make my own life easier. The poster and Beamer templates
share the same underlying template, so all I had to do was keep one
figures folder and I could move content into any of the documents. The
only real rework was reformatting figures for the aspect ratio, or to fit
the slide width or page width.

## Templates

| Directory | Purpose |
| --- | --- |
| [`report/`](report/) | Short reports, coursework and lab write-ups |
| [`thesis/`](thesis/) | PhD/MPhil thesis following university formatting guidelines |
| [`poster/`](poster/) | Conference and research posters |
| [`beamer/`](beamer/) | Presentation slides with Southampton styling |

## Thesis

I based the thesis template on the standard Southampton thesis layout,
with two main additions.

### Dynamic glossaries

I use the `glossaries` package to build three separate, automatically
generated lists:

- **Acronyms**: defined once, expanded on first use, abbreviated
  afterwards, and collected into a List of Acronyms.
- **Non-dimensional numbers**: Reynolds, Mach, Prandtl and similar
  numbers, listed with their definitions.
- **Mathematical symbols**: a nomenclature of symbols with descriptions
  and, where relevant, units.

Only entries actually used in the text appear in the final lists, so the
glossaries stay in sync with the document as chapters are added or
removed. Entries are defined in a central file and referenced in the text
with `\gls{...}`, `\glssymbol{...}` and related commands.

### Front page

I added the university's heraldic crest to the title page, following the
traditional thesis front-matter layout.

## Poster and Beamer

The poster and Beamer templates follow the same template, with a shared
visual style: the same colour scheme, fonts and Southampton branding.
Slides and posters made from them look like they belong to the same body
of work, and content moves between them with minimal reformatting,
usually just adjusting figures to the aspect ratio and width of the
target document.

## Usage

Each directory contains a main `.tex` file and any supporting class or
style files, built with `pdflatex`. The easiest way to compile them is to
upload the folder you need to [Overleaf](https://www.overleaf.com) as a
new project: it handles the glossary and bibliography passes for you.

Feel free to message me if you would like me to share the templates with
you directly on Overleaf.

## Requirements

- A TeX distribution with `pdflatex` (TeX Live or MacTeX)
- The `glossaries` package with `makeglossaries` for the thesis (included
  in full TeX Live and MacTeX installations)
- The report, thesis and poster templates build on older distributions;
  the Beamer template requires TeX Live 2023 or later

## Known Issues

- Parts of the Beamer template depend on TeX Live 2023 or later. On older
  distributions the build may fail. Updating your TeX distribution is the
  current workaround while I find the time to fix it.

## Notes

- The thesis template follows the University of Southampton's thesis
  presentation guidelines. Always check the latest requirements from the
  Doctoral College before submission, as regulations can change.
- The official university logos, including the heraldic crest, are
  available to members of the university on the SUSSED SharePoint brand
  resources pages.

## Licence

I release the template code under the MIT Licence (see
[LICENSE](LICENSE)). University logos and branding remain the property of
the University of Southampton and are not covered by this licence.