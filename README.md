
# Web Test Automation Example

This project is a example how to use robotframework for web automation tests.

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/) 

![Badge Done](http://img.shields.io/static/v1?label=status&message=Done&color=GREEN&style=fill)

![Badge Python Version](http://img.shields.io/static/v1?label=python&message=3.11.2&color=blue&style=fill)

![Badge Robot Framework](http://img.shields.io/static/v1?label=robot-framework&message=6.0.2&color=blue&style=fill)

![Badge PyYAML](http://img.shields.io/static/v1?label=PyYAML&message=6.0&color=blue&style=fill)

![Badge Faker](http://img.shields.io/static/v1?label=robot-framework-faker&message=5.0.0&color=blue&style=fill)

![Badge DebugLibrary](http://img.shields.io/static/v1?label=debug-library&message=2.3.0&color=blue&style=fill)

![Badge Browser Playwright](http://img.shields.io/static/v1?label=robotframework-browser&message=16.0.0&color=blue&style=fill)

![Badge Pabot](http://img.shields.io/static/v1?label=robotframework-pabot&message=2.13.0&color=blue&style=fill)

## Feature list for execution

| Feature           | Tag          |
| ---------------   | -------------|
| Cadastro          | CADASTRO     |
| Login             | LOGIN        |

|                Description                 |     Tag         | 
| ------------------------------------------ | --------------- |
|   Execute all regressive tests     |   REGRESSIVO    |
|   Execute all smoke tests.         |   SMOKE         |
|   * Execute specific test by id.   |   ID-XX         |


##                  BEST PRACTICES USED					 
* [Check Here!](https://github.com/robotframework/HowToWriteGoodTestCases/blob/master/HowToWriteGoodTestCases.rst#test-suite-names)


## Project Structure
```

    ├── src                                         # Here is present all the source code of automation.
    │   ├── auto                                    # Test code execution.
    │   │   ├── data                                # Test data, messages or data used in test run.
    │   │   │    └── .yaml                          
    │   │   ├── elements                            # Elements mapping, separetad by screens or feature of the application.
    │   │   │    └── .resource
    │   │   ├── keywords                            # Created keywords in this poject, separetad by feature.
    │   │   │    └── .robot
    │   │   └── resources
    │   │        └── libs                           # Libraries and external code, case necessary.
    │   │             └── .py
    │   └── config                                  # Configuration files.
    │       ├── setup.yaml                          # Data file with the setup for the browser.
    │       ├── package.resource                    # Robot Libraries and all files of the project.
    │       └── setup.robot                         # Test setup and test teardown for the project.
    ├── test                                        # Test scenarios and reports.
    │   ├── features                                # Test scenarios separated by feature.
    │   │   └── .robot
    │   └── Results                                 # Test evidence and reports after run.
    │       ├── .mp4  
    │       ├── .jpg
    │       ├── .xml
    │       └── .html
    ├── .gitignore                                  # Files and folders does not push to version control.
    ├── requirements.txt                            # Dependency list and your versions.
    ├── .gitlab-ci.yml                              # Pipeline file setup.
    └── README.md                                   # Start instructions and important details of the project.
```
## Environment Setup
- Download the [Python 3.11.2](https://www.python.org/downloads/) 
#### PS: To avoid compatibility issues, uninstall the current version of python on your machine.

#
- After instalation, check if the environment variables is correct configuration. For that, run the following command in your terminal and see the python version.
```
python --version
```
- The result should be similar that:
```
Python 3.11.2
```
- Now, verify that pip, python package manager, has been successfully installed: 
```
pip --version
```
- The result should be similar that:
```
pip 22.0.4 from C:\Program Files\Python311\lib\site-packages\pip (python 3.11)
```
- This project have a file for manage the dependencies and libraries that are in use.
- Clone develop branch.
- After clone this project in your preference folder, acccess the terminal inside main folder of the project and run the below command for download dependencies.

```
pip install -r requirements.txt
```
- Run below command for start setup that Browser Libary:
```
rfbrowser init
```

##
## Text Editor
How to text editor, I suggest Visual Studio Code, but use your favorite.
If choice Visual Studio Code, [Click Here](https://code.visualstudio.com/download) to go download and install.
- For the best use, recommended the extensions:

| Extensão                   | Função                                                       |
| ---------------            | -------------------------------------------------------------|
| Path Intellisense          | Auto complete folder path in your code.                      |
| Material Icon Theme        | Change the icons of the project files.                                          |
| Robot Code                 | Autocomplete the RobotFramework keywords.      |

----
## Test Execution
 Run tests with this command:
```
robot -d test/Results test/features/file_name.robot
```
Where: 
- robot - the name that robotframework refers for start the execution. 
- -d test/Results - Set the local where store the reports and evidence.
- test/features/file_name.robot - Set the test file for execution.

 For parallel tests:
```
pabot -x xunit.xml -d test/Results test/features
```
 For include the tags:
```
robot -d test/Results -i TAG_NAME test/features
```
 For exclude a test by tag:
```
robot -d test/Results -e TAG_NAME test/features
```


## Author

- mbarbosa (Marcos Barbosa)

