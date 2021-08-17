*** Settings ***
Documentation     Dependências do projeto

#Dependencias
Library        SeleniumLibrary

# Keywords
Resource       setup.robot
Resource       ../auto/keywords/home_kws.robot
Resource       ../auto/keywords/login_kws.robot
Resource       ../auto/keywords/minha_conta_kws.robot 

#Elementos
Resource      ../auto/elements/home_ets.resource
Resource      ../auto/elements/login_ets.resource
Resource      ../auto/elements/minha_conta_ets.resource
