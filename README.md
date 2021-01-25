# Doctoral Thesis

This template is deposited in the GitHub repo [MikeSWang/ThesisTemplate](https://github.com/MikeSWang/ThesisTemplate). If the link does not work it's because it is private at the moment; it will be made public after my thesis submission or viva.

## Directory structure

The thesis source files are divided into three subdirectories:
* ``config/``: contains preamble ``.tex`` files for typesetting the thesis;
* ``contents/``: contains the actual substance of thesis, e.g. main matter and appendices, as well as ``.bib`` files etc.;
* ``attachments/``: contains elements that are embedded in the thesis, e.g. graphics and external PDFs.

Explore the source files to become familiar with the directory structure.


## Compilation

Since the compilation of LaTeX files is usually iterative (e.g. the bibliography requires a separate compilation), the use of ``latexmk`` is recommended---it is also the compiler program used by Overleaf.

This thesis should be compiled with XeLaTeX since it allows custom fonts to be used with the help of the (super-)package ``fontspec``, and it is more Unicode-friendly.  The configuration file, ``.latexmkrc``, tells ``latexmk`` the specifics for compiling your source files, e.g. where to look for local packages (e.g. file extensions ``.bst``, ``.sty`` etc.) and whether certain compilations need to be performed (e.g. for glossary files compiled with the package ``glossaries-extra`` with the ``perl`` program).  The ``.latexmkrc`` in this template is pre-configured and is platform-independent.  The command-line command used to compile this template is:
```
    latexmk -pdfxe -shell-escape -interaction=nonstopmode -file-line-error -synctex=1
```
Here ``-pdfxe`` ensures a PDF is the final product compiled with XeLaTeX, ``-shell-escape`` allows the command ``\quickwordcount`` (which includes the magic command ``\write19``) to count words with the ``texcount`` program in a bash shell, and ``-synctex=1`` is optional and used for e.g. Overleaf to synchronise and link between the source code and the PDF output (compatible with certain editors and PDF viewers, e.g. on Overleaf).

**In short, this template should be compilable straight away on Overleaf if you use XeLaTeX in your project settings.**

## Documentation

There is no further documentation, I'm afraid---life is too short. There are many comments embedded in this template, and you could use it as your source files or borrow individual elements to write your own.


## Copyright

All graphics contained in this template are in the public domain. You may find my actual thesis to be typeset to a higher quality, as reflected by e.g. the higher-resolution university logo and coat of arms as well as proprietary fonts (with other subtle settings, e.g. package ``microtype``, which have been fine-tuned accordingly). Unfortunately these elements are not covered by this template out of copyright concerns.
