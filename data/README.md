# Managing Data with DVC

Generally, data files should not be tracked by Git. Other tools exist to help manage
different versions of data. One of these tools is DVC.

1. To initialize dvc to track your data files:

```
cd ~/cookiecutter-gl-template

dvc init
git add .dvc/*
git commit -m "Initialize DVC"
```

Note, if you have not installed DVC in your project environment, you can do so with: `pip install dvc`


2. When you add data files to your project, you can now track them with dvc:

```
cd ~/cookiecutter-gl-template

dvc add data/raw/datafile.csv 
git add data/raw/datafile.csv.dvc data/raw/.gitignore
git commit -m "Add raw data"
```

3. If working on a project with multiple developers, you can configure DVC to use a shared data storage 
location. This allows developers to easily share data or model output and seamlessly switch between different
versions of data that they or their colleauges have created. You can use a shared space on the Board's file server 
provisioned to FRBC Surveillance and accessible from ADAP:

```
cd ~/cookiecutter-gl-template

dvc chache dir /mnt/statdata/Projects/frb-cleveland-saa/WorkProducts/<project-name>/dvc-shared-cache
dvc config cache.shared group
dvc config cache.type reflink,hardlink,symlink,copy
``` 

For additional resources on using DVC:

* https://gitlab.frb.gov/BSR/FRBC_Surveillance/KnowledgeBase/Tutorials/dvc-tutorial
* https://dvc.org/doc/start
* https://dvc.org/doc/use-cases/shared-development-server
* https://dvc.org/doc/user-guide/external-dependencies
* See guidance here for [managing files and data on ADAP](http://bsr.gitlabpages.frb.gov/FRBC_Surveillance/KnowledgeBase/knowledge-base/1_data_science_best_practices/markdown/3_adap_configuration_required.html#managing-files-and-data-on-adap)