## How to build

The following command will create a local copy of the source code for you.

`git clone https://github.com/anton-petrunin/comparison-geometry.git`

### MetaPost

Go into subfolder `comparison-geometry/mppics/`, run `mpost pic`, come back to `comparison-geometry/`:

`cd comparison-geometry/mppics/`<br/>
`mpost pic`<br/>
`cd ..`<br/>

### Asymptote

Go into subfolder `asy/`, run `asy` for each `.asy`-file, come back to `comparison-geometry/`:

`cd asy`<br/>
`asy deformation.asy`<br/>
...<br/>
`cd ..`<br/>

### LaTeX

Run `pdflatex`, `makeindex curves-and-surfaces` and `biber`:

`pdflatex curves-and-surfaces.tex`<br/>
`makeindex curves-and-surfaces`<br/>
`biber curves-and-surfaces`<br/>
`pdflatex curves-and-surfaces.tex`<br/>
