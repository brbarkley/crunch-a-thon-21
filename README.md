# Crunch-a-thon: Transcribe This!

- Describe very briefly but clearly what the project does.
- List its most useful/innovative/noteworthy features.
- State its goals/what problem(s) it solves.
- Note and briefly describe any key concepts (technical, philosophical, or both) important to the user’s understanding.
- Note its development status.

## Background

- Why does this project exist?
- Who is the project for? i.e. which Bank, program, entity, team, etc.
- Is this project related to any other past or existing projects?

## Getting Started

### environment setup

```
conda create -f conda.yaml
conda activate crunch-a-thon-21
```

### download external dependencies

```
# Download pre-trained English model files
curl -LO https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.pbmm
mv deepspeech-0.9.3-models.pbmm src/

curl -LO https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.scorer
mv deepspeech-0.9.3-models.scorer src/
```



## Project Organization
--------------------

``` .
    ├── README.md          <- The top-level README for developers using this project
    ├── CHANGELOG.md       <- changelog to record notable changes for each version of the project
    │
    ├── data               <- (Only data metafiles or file links should be stored in git repo)
    │   ├── processed      <- Processed data with variable transformations for modeling
    │   │                     created from intermediate datasets.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- Model and data documentation, validation, and analysis.
    │   ├── README.md      <- A README for getting started with Sphinx
    │
    ├── output             <- Generated analysis and model output
    │   ├── figures        <- Generated graphics and figures to be used in reporting
    │   ├── models         <- Trained and serialized models, model predictions, or model summaries
    │   └── tables         <- Tables summarizing model output and/or summary statistics
    │
    ├── scripts            <- Bash scripts for automating certain tasks or running SLURM batch jobs
    │
    ├── tests              <- Store unit tests of src modules as test_<submodulename>.py
    │
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py       <- Makes src a Python module
    │
    ├── conda.yaml         <- Requirments for reproducing the analysis environment with conda
    ├── pytest.ini         <- pytest configuration file
    ├── requirements.txt   <- Requirements for reproducing the analysis environment with pip
    ├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
    ├── .dvcignore         <- optionally, add file patterns that dvc should ignore
    ├── .env               <- dotenv and vscode compatible file for storing environment variables (do NOT add to git!)
    ├── .flake8            <- minimal black-compatible flake8 configuration
    └── .gitignore         <- standard .gitignore file for python projects
```


## Contributing

- Guidelines for contributing 
- Name current and past contributors, and their roles (include project sponsors, SMEs, project managers, etc.)

## Project Status

- Is the project under active development? If not, is the project being maintained? If not, has the project been placed on hold or abandoned completely
  (and, if so, why?)?

## TODO

- Next steps
- Future direction of the project
