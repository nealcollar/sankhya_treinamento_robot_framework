*** Settings ***
Resource    ../resource/api/api_resource.resource



*** Test Cases ***
Consultar lista de Autores GET​ api​/v1​/Authors
    Requisitar todos os autores
    Conferir o status code 200
    Conferir o reason OK
    Conferir se retorna uma lista com 590 autores

Criar um novo autor
    Requisitar a criacao de um novo autor
    Coferir o status code 200
    Corferir o reason OK
    Conferir a resposta de retorno