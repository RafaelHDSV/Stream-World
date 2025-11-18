# 📽️ Stream World

![C# language](https://img.shields.io/badge/C%23-239120?style=for-the-badge&logo=csharp&logoColor=white)
![.NET](https://img.shields.io/badge/.NET-512BD4?style=for-the-badge&logo=dotnet&logoColor=white)
![Windows Forms](https://img.shields.io/badge/Windows%20Forms-0078D4?style=for-the-badge&logo=windows&logoColor=white)
![Visual Studio 2022](https://img.shields.io/badge/Visual_Studio-5C2D91?style=for-the-badge&logo=visual%20studio&logoColor=white)
![GitHub language count](https://img.shields.io/github/languages/count/RafaelHDSV/Stream-World?style=for-the-badge)
![GitHub repo size](https://img.shields.io/github/repo-size/RafaelHDSV/Stream-World?style=for-the-badge)

<p align="center">
  <img width="1836" height="871" alt="image" src="https://github.com/user-attachments/assets/517593a8-15fc-417e-917f-269b28daf2c8" />
</p>

<p align="center">
    <a href="#about">📌 Sobre</a> • 
    <a href="#features">✨ Funcionalidades</a> • 
    <a href="#started">🚀 Como Executar</a> • 
    <a href="#structure">🏗️ Estrutura do Projeto</a> • 
    <a href="#screenshots">📷 Screenshots</a>
</p>

<h2 id="about">📌 Sobre o Projeto</h2>

TechMoto é um sistema desktop desenvolvido em Windows Forms com C#, projetado para gerenciar o estoque de motos em lojas e permitir que clientes demonstrem interesse pelos veículos disponíveis. O objetivo principal é facilitar a compra e venda de motos em um ambiente similar a um marketplace.

⚠️ **Observação:** O sistema não utiliza banco de dados permanente - todas as informações são armazenadas apenas em memória e serão perdidas ao fechar a aplicação.

<details>
  <summary>Usuário administrador para login</summary>

  ```
    Email = "admin@admin.com",
    Senha = "Pa$$w0rd",
  ```
</details>

<h2 id="features">✨ Funcionalidades</h2>

- 🏪 **Loja**
  - Cadastro de novas motos com foto, modelo, marca, cilindrada, cor, preço e descrição
  - Listagem de motos com visualização por imagem e em tabela
  - Edição e exclusão de motos cadastradas.
  - Visualização de clientes interessados em cada moto.

- 👤 **Cliente**
  - Cadastro e atualização de dados pessoais (nome, CPF, e-mail, telefone)
  - Visualização do catálogo de motos disponíveis
  - Demonstração de interesse por uma moto específica (com mensagem personalizada, telefone e proposta)

<h2 id="started">🚀 Como Executar o Projeto</h2>

### Pré-requisitos
- Visual Studio 2022
- .NET Framework 4.7.2 ou superior

### Passo a Passo

1. Clone o repositório:
  ```bash
  git clone https://github.com/RafaelHDSV/Stream-World.git
  ```

2.  Acesse a pasta do projeto:
  ```bash
  cd Steam-World
  ```

3.  Abra o arquivo .sln no Visual Studio 2022

4.  Compile e execute o projeto (F5)

<h2 id="structure">🏗️ Estrutura do Projeto</h2>

| Formulário | Descrição
|----------------------|-----------------------------------------------------
| frmMain | tela principal (MDI), que abre os outros formulários
| frmCadastroMotos | cadastro de motos no estoque
| frmListagemMotos | controle de estoque (adicionar/remover motos, visualizar interessados)
| frmListagemMotosTabela | controle de estoque em tabela
| frmLogin | tela de autenticação
| frmConfiguracaoUsuario | atualização de conta do usuário (loja ou cliente)
| frmInteresseCliente | formulário para clientes demonstrarem interesse em uma moto
| frmListagemInteressados | listagem de clientes interessados por moto

<h2 id="screenshots">📷 Screenshots</h2>

<p align="center"> Desenvolvido com ❤️ por <a href="https://github.com/RafaelHDSV">RafaelHDSV</a> </p>
