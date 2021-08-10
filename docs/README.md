# Managing Documentation

Sphinx is a powerful documentation generator that has many great features for writing
technical documentation and/or reports.

1. To initialize sphinx, run the following in your bash terminal:

```
# sphinx-quickstart will create core sphinx files and directory structure
cd ~/cookiecutter-gl-template/docs
sphinx-quickstart
```

2. Create your sphinx docs

```
cd ~/cookiecutter-gl-template
sphinx-build -b html docs docs/_build/html
```

For additional resources on using Sphinx:

* https://gitlab.frb.gov/BSR/FRBC_Surveillance/KnowledgeBase/Tutorials/sphinx-tutorial
* https://www.sphinx-doc.org/en/master/usage/quickstart.html

For R users, you might consider similar documenation tools available in the R ecosystem:
* https://github.com/r-lib/roxygen2
* https://github.com/yihui/knitr
* https://github.com/rstudio/bookdown