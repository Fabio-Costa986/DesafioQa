#language: pt

@users
Funcionalidade: Users
    validar operações da API Users

    @get_users
    Cenário: Validar GET DOTZ-API Users cidade origem
        Quando  que eu faço uma requisição GET para buscar a cidade de origem
        Então retornar status code 200 


    @get_user
    Cenário: Validar GET DOTZ-API Users com lat e lon
        Quando faço uma requisição GET para buscar a latitude e longitude
        Então retorna o usuario com 200

    @get_invalido         
     Cenário: Validar GET DOTZ-API Users inválido
        Quando faço uma requisição GET invalida
        Então retorna o usuario invalido com 401    
    
        