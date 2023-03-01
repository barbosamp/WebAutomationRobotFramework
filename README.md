
# Automação de testes Web

Este projeto é um exemplo de estrutura com robot framework para testes Web com paralelismo.

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
| Registro          | REGISTRO     |
| Login             | LOGIN        |

|                Description                 |     Tag         | 
| ------------------------------------------ | --------------- |
|   Executa todos os testes regressivos     |   REGRESSIVO    |
|   Executa todos os smoke tests.         |   SMOKE         |
|   * Executa um teste por id.   |   ID-XX         |


##                  MELHORES PRÁTICAS					 
* [Check Here!](https://github.com/robotframework/HowToWriteGoodTestCases/blob/master/HowToWriteGoodTestCases.rst#test-suite-names)


## Estrutura do Projeto
```

    ├── src                                         # Representa todo o código relacionado a automação de testes.
    │   ├── auto                                    # Código relacionado a execução dos testes.
    │   │   ├── data                                # Massa de testes, dados ou mensagens utilizados durante execução dos testes.
    │   │   │    └── .yaml                          
    │   │   ├── elements                            # Mapeamento de elementos, separados por tela da aplicação.
    │   │   │    └── .resource
    │   │   ├── keywords                            # Keywords criadas no projeto separadas por features.
    │   │   │    └── .robot
    │   │   └── resources
    │   │        └── libs                           # Bibliotecas e implementações externas que poderão ser aplicadas e utilizadas no projeto.
    │   │             └── .py
    │   └── config                                  # Contém arquivos de configuração do projeto.
    │       ├── setup.yaml                          # Arquivo de dados referente as configurações utilizadas no projeto: Browser, timeout, url...
    │       ├── package.resource                    # Dependências e arquivos utilizados no projeto.
    │       └── setup.robot                         # Keywords utilizadas para configurar o início e fim das execuções.
    ├── test                                        # Cenários de teste e relatórios de execução.
    │   ├── features                                # Cenários(Gherkin) de teste.
    │   │   └── .robot
    │   └── Results                                 # Evidências e relatórios pós execução.
    │       ├── .mp4  
    │       ├── .jpg
    │       ├── .xml
    │       └── .html
    ├── .gitignore                                  # Arquivos e pastas que devem ser excluídas no upload para o repositório remoto.
    ├── requirements.txt                            # Lista de dependências e suas respectivas versões.
    ├── pipeline                                    # Configurações de execução através de pipeline no repositório remoto.
    └── README.md                                   # Arquivo com orientações inicias do projeto e detalhes importantes.
```

## Configurando o ambiente:
- Faça o donwload do [Python 3.11.2](https://www.python.org/downloads/) 
#### PS: Para não ter problemas de compatibilidade,desinstale as versões do python da sua máquina.


Para realizar a instalação do python na versão do projeto, acesse:

- [Python](https://www.python.org/downloads/release/python-3104/)

#
- Após a instalação, verifique se as variáveis de ambiente foram configuradas corretamente. Para isso, basta executar o comando abaixo no terminal para visualizar a versão do python:
```
python --version
```
- O resultado deve ser algo como:
```
Python 3.11.2
```
- Agora verifique se o pip, gerenciador de pacotes do Python, foi instalado corretamente:
```
pip --version
```
- O resultado deve ser algo como:
```
pip 22.0.4 from C:\Program Files\Python311\lib\site-packages\pip (python 3.11)
```
- Nosso projeto possui um arquivo para gerenciar as dependências e bibliotecas que devem ser utilizadas.
- Realize o clone do projeto, usando como base a branch: develop
- Após realizar o clone em uma pasta de sua preferência, acesse o terminal dentro da pasta do projeto e execute o comando abaixo para realizar o download das dependências:

```
pip install -r requirements.txt
```
- Execute o comando abaixo para iniciar a biblioteca Browser:
```
rfbrowser init
```

##
## Editor de texto
Como editor de texto, a sugestão Visual Studio Code, porém você pode utilizar seu favorito.
Caso opte pelo Visual Studio Code, [clique aqui](https://code.visualstudio.com/download) e realize o downlaod e instalação pelo link.
- Para melhor utilização, recomenda-se a instalação das seguintes extensões:

| Extensão                   | Função       |
| ---------------            | -------------|
| Path Intellisense          | Auxilia no autocomplete ao inserir caminhos de arquivos e pastas no código.                     |
| Material Icon Theme        | Altera os ícones de arquivos de acordo com a extensão.                                          |
| Robot Code                 | Auxilia no autocomplete realizado para bibliotecas e código do projeto com RobotFramework.      |

----
## Executando os testes
 Para realizar a execução dos testes, utilize o comando:
```
robot -d test/Results test/features/nome_arquivo.robot
```
Onde: 
- robot - é o nome que se refere ao robotframework para inicio das execuções.
- -d test/Results - indica o local onde serão armazenados os relatórios e evidências.
- test/features/nome_arquivo.robot - Indica o arquivo de testes que será utilizado.

 Para execução paralela dos testes, utilize o pabot:
```
pabot -x xunit.xml -d test/Results test/features
```
 Para realizar a execução dos testes utilizando as tags:
```
robot -d test/Results -i NOME_TAG test/features
```
 Para realizar a execução dos testes excluindo uma tag:
```
robot -d test/Results -e NOME_TAG test/features
```


## Autores

- mbarbosa (Marcos Barbosa)

