Teste Prático QA - BugBank
${site} = 'https://vermillion-pavlova-8ff398.netlify.app'

Funcionalidade: Cadastro de novo usuário
    Eu como cliente
    Quero realizar meu cadastro no BugBank
    Para poder usufruir dos serviços que o banco tem a me oferecer

Cenário: Cadastrar usuário com dados válidos
    Dado que estou no ${site} BugBank
    E clico em 'registrar'
    E insiro minhas informações de 'email', 'nome' e 'senha' válidos
    Quando clico em 'cadastrar'
    Então será exibido o resultado 'A conta 551-4 foi criada com sucesso'

Cenário: Cadastrar usuário sem repetir a mesma senha
    Dado que estou no ${site} BugBank
    E clico em 'registrar'
    E insiro minhas informações de 'email', 'nome' e 'senha' sem repetir a mesma senha
    Quando clico em 'cadastrar'
    Então será exibido o resultado 'As senhas não são iguais'

Cenário: Cadastrar usuário com email inválido
    Dado que estou no ${site} BugBank
    E clico em 'registrar'
    E insiro minhas informações de 'email' com formato inválido, 'nome' e 'senha'
    Quando clico em 'cadastrar'
    Então será exibido o resultado no campo email 'Formato inválido'

Melhorias:
- Corrigir a duplicidade de cadastro de usuário com as mesmas informações;
- Corrigir o campo de email para que insira apenas emails válidos;
- Corrigir o campo de email para que não autorize o cadastro de emails iniciados com carácteres especiais exemplo: '!', '_', '-', '$' e etc.