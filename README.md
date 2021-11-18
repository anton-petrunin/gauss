## How to build

The following command will create a local copy of the source code for you.

`git clone https://github.com/anton-petrunin/gauss.git`

### MetaPost

Go into subfolder `mppics/`, run `mpost pic`, come back:

`cd mppics/`<br/>
`mpost pic`<br/>
`cd ..`<br/>

### Asymptote

Go into subfolder `asy/`, run `asy` for each `.asy`-file, come back:

`cd asy`<br/>
`asy deformation.asy`<br/>
...<br/>
`cd ..`<br/>

### LaTeX

Run `pdflatex`, `makeindex` and `biber`:

`pdflatex curves-and-surfaces.tex`<br/>
`makeindex curves-and-surfaces`<br/>
`biber curves-and-surfaces`<br/>
`pdflatex curves-and-surfaces.tex`<br/>

To get arXiv.tar with all needed files do

`tar -cvf arXiv.tar --files-from list-of-files.txt`

