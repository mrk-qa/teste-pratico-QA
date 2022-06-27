# language: pt

Teste Prático QA - BugBank
${site} = 'https://vermillion-pavlova-8ff398.netlify.app'

Funcionalidade: Transferência de valores entre usuários
    Eu como cliente
    Quero realizar uma transferência para outro usuário no BugBank
    Para pagar a minha dívida com esse usuário

Cenário: Transferir valor para usuário com dados válidos
    Dado que efetuei o login com sucesso no ${site} BugBank
    E na página ${site}/home confirmo que tenho saldo positivo
    E clico em 'transferência'
    Quando estou na página ${site}/transfer preencho os campos 'número da conta', 'dígito', 'valor' e 'descrição' válidos
    Então será exibido o resultado 'Transferência realizada com sucesso'

Cenário: Transferir valor para usuário com conta inválida
    Dado que efetuei o login com sucesso no ${site} BugBank
    E na página ${site}/home confirmo que tenho saldo positivo
    E clico em 'transferência'
    Quando estou na página ${site}/transfer preencho os campos 'número da conta' inválida, 'dígito', 'valor' e 'descrição'
    Então será exibido o resultado 'Conta inválida ou inexistente'

Cenário: Transferir valor para usuário sem ter saldo
    Dado que efetuei o login com sucesso no ${site} BugBank
    E na página ${site}/home confirmo que não tenho saldo positivo
    E clico em 'transferência'
    Quando estou na página ${site}/transfer preencho os campos 'número da conta', 'dígito', 'valor' e 'descrição' válidos
    Então será exibido o resultado 'Você não tem saldo suficiente para essa transação'

Melhorias:
- Não permitir a transferência de valor sem as casas decimais (centavos);
- Inserir a separação de casas decimais no campo valor com a separação de ',' ao invés de '.' de acordo com a moeda local.