# Thesis Template

## Get the template

This template is deposited in the GitHub repo [``MikeSWang/ThesisTemplate``](https://github.com/MikeSWang/ThesisTemplate).  If the link does not work, it is because the repo remains private at the moment; it will be made public after I have passed my viva (and any corrections).


## Directory structure

The thesis source files are divided into three subdirectories:
* [``config/``](config/): contains the document preamble including ``.tex`` files, local packages ``.sty`` and bibliography styles ``.bst`` for typesetting the thesis;
* [``contents/``](contents/): contains the actual substance of thesis, e.g. main matter and appendices, as well as bibliography entries ``.bib`` etc.;
* [``attachments/``](attachments/): contains contents that are embedded in the thesis, e.g. graphics and external PDFs.

Explore the source files to become familiar with the directory structure and the function of each file.  One particular note: the file [``meta.tex``](contents/meta.tex) defines some Boolean switches for different compilation settings, and these switches are set in [``parameters.tex``](parameters.tex) at the directory root (together with the master file [``thesis.tex``](thesis.tex)).


## Compilation

Since the compilation of LaTeX files is usually iterative (e.g. the bibliography requires separate compilations), the use of ``latexmk`` is recommended&mdash;it is the compiler program used by Overleaf.

This thesis should be compiled with XeLaTeX since it allows custom fonts to be used with the help of the (super-)package ``fontspec``, and it is more Unicode-friendly.  The configuration file, [``.latexmkrc``](.latexmkrc), tells ``latexmk`` the specifics for compiling your source files, e.g. where to look for local packages (e.g. file extensions ``.sty``, ``.bst`` etc.) and whether certain compilations need to be performed (e.g. for the ``glossaries-extra`` package with the ``perl`` program).  The [``.latexmkrc``](.latexmkrc) in this template is pre-configured and is platform-independent.  The command-line command used to compile this template is:
```
latexmk -pdfxe -shell-escape -interaction=nonstopmode -file-line-error -synctex=1
```
Here ``-pdfxe`` ensures a PDF is the final product compiled with XeLaTeX; ``-shell-escape`` allows the commands ``\gitdateversion`` and ``\quickwordcount`` (which employ the magic command ``\write18``) to extract ``git`` ``HEAD`` reference (like a version mark) and count words with the ``texcount`` program in a bash shell; and ``-synctex=1`` is optional and used (by e.g. Overleaf) to synchronise and link between the source code and the PDF output (compatible with certain editors and PDF viewers, e.g. on Overleaf).

**In short, this template should be compilable straight away on Overleaf if you use XeLaTeX in your project settings.**


## Documentation

The documentation is really in the source files themselves; there are a lot of comments.  Individual package documentations are hugely useful, too.  You could use this template as your source files or borrow individual elements to write your own.  There is no further documentation, I'm afraid&mdash;life is too short.  Though feel free to contact me if you are stuck.


## Alternative thesis templates/examples

The truth is, there are a few theses/templates that I personally like but chose not to use: the first is [this thesis](http://aturon.github.io/academic/turon-thesis.pdf), an exemplar of the [``classicthesis`` template](https://ctan.org/pkg/classicthesis?lang=en); the second example is [this thesis](https://linyangchen.files.wordpress.com/2015/10/lin_yangchen_phd_thesis.pdf), where the author happens to use a font I adore (for typesetting poems), 'IMFell'; the third is ['University of Bristol Thesis Template'](https://www.overleaf.com/latex/templates/university-of-bristol-thesis-template/kzqrfvyxxcdm), which is so far the best one I have seen in the thesis template library on Overleaf.


## Copyright

All graphics contained in this template are in the public domain.  In my own theses I have used potentially copyrighted materials (e.g. higher-resolution logos and icons with transparency, proprietary fonts) with typesetting more fine-tuned, but unfortunately these elements are not covered by this template out of copyright concerns.

Copyright (C) 2021 Mike Shengbo Wang

Licensed under GPL v3.0
