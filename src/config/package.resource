*** Settings ***
Documentation     Project Dependecies

#Dependencias
Library        Browser
Library        FakerLibrary       locale=pt_br
Library        DebugLibrary

# Keywords
Resource       setup.robot
Resource       ../auto/keywords/home_kws.robot
Resource       ../auto/keywords/login_kws.robot
Resource       ../auto/keywords/my_account_kws.robot
Resource       ../auto/keywords/common_kws.robot
Resource       ../auto/keywords/register_kws.robot

#Elementos
Resource      ../auto/elements/home_ets.resource
Resource      ../auto/elements/login_ets.resource
Resource      ../auto/elements/my_account_ets.resource
Resource      ../auto/elements/register_ets.resource

# Dados
Variables     ../auto/data/data.yaml
Variables     ../auto/data/messages.yaml

# Configuração
Variables     setup.yaml
