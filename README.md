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

StreamWorld é uma aplicação web desenvolvida com ASP.NET Core MVC (.NET 8) e Entity Framework Core 8, criada para a disciplina Desenvolvimento de Aplicações em Ambiente Web da Universidade Anhembi Morumbi.
Seu objetivo é simular o site de uma plataforma de streaming, permitindo:
- Visualização pública do catálogo de filmes e séries
- Busca por títulos, artistas e gêneros
- Consulta de detalhes completos de produções
- Busca e detalhes de artistas
- Envio de mensagens por um formulário de contato
- Área administrativa protegida por autenticação
O sistema utiliza banco de dados relacional (SQL Server ou SQLite) e segue o padrão MVC, com organização completa em Models, Views e Controllers.

<details>
  <summary>Usuário administrador para login</summary>

  ```
    Email = "admin@admin.com",
    Senha = "Pa$$w0rd",
  ```
</details>

<h2 id="features">✨ Funcionalidades</h2>

- 🌐 Público Geral
  - 🏠 Página Inicial
    - Exibe os 10 títulos mais recentes
    - Mostrar capa + nome
  
  - 🔎 Busca de Produções
    - Busca por nome, gênero ou artista
    - Exibe capa, título e ano
    - Link para página de detalhes
  
  - 📄 Página de Detalhes da Produção
    - Título
    - Ano de lançamento
    - Diretor
    - Gêneros associados
    - Foto da capa
    - Lista de artistas com nome do personagem
  
  - 🎭 Busca de Artistas
    - Buscar por nome ou país
    - Exibe foto + nome
  
  - 👤 Página de Detalhes do Artista
    - Nome
    - Data de nascimento
    - País de origem
    - Foto
    - Produções que participou + personagem interpretado
  
  - ✉️ Página de Contato
    - Nome completo (obrigatório)
    - E-mail válido (com validação)
    - Assunto (obrigatório)
    - Mensagem (obrigatória)
    - Armazenamento no banco
    - Mensagem de sucesso após envio

- 🔐 Área Administrativa (somente usuários autenticados)
  - ✔ CRUD completo de:
    - Produções
    - Artistas
    - Gêneros
  
  - 📬 Visualização de Mensagens de Contato
    - Apenas administradores
    - Ordenadas da mais recente para a mais antiga

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

```
StreamWorld/
├── Controllers/
│   ├── ProductionsController.cs
│   ├── ArtistsController.cs
│   ├── GenresController.cs
│   └── ContactsController.cs
├── Models/
│   ├── Production.cs
│   ├── Artist.cs
│   ├── Genre.cs
│   └── Contact.cs
├── Views/
│   ├── Productions/
│   ├── Artists/
│   ├── Genres/
│   ├── Contacts/
│   └── Shared/
├── Data/
│   ├── ApplicationDbContext.cs
├── wwwroot/
│   ├── css/
│   ├── img/
│   ├── js/
└── StreamWorld.csproj
```

<h2 id="screenshots">📷 Screenshots</h2>

<img width="1863" height="1096" alt="image" src="https://github.com/user-attachments/assets/d8e06d3d-0606-4853-a372-9fa1e4141602" />

<img width="1863" height="3512" alt="image" src="https://github.com/user-attachments/assets/f154476c-5a20-47af-a12a-5ad8a4071b21" />

<img width="1086" height="816" alt="image" src="https://github.com/user-attachments/assets/cda2c0f7-9910-4d5e-b08d-175c8f2b2100" />

<img width="1863" height="877" alt="image" src="https://github.com/user-attachments/assets/bc4ccf8d-ad75-440c-905c-757a9ba79921" />

<img width="1863" height="877" alt="image" src="https://github.com/user-attachments/assets/8f2da147-368a-4973-8677-8f5ce22f1814" />

<img width="1863" height="933" alt="image" src="https://github.com/user-attachments/assets/22fd5791-b429-4849-b058-250e03e4b445" />

<img width="1863" height="987" alt="image" src="https://github.com/user-attachments/assets/aa9ba843-d816-4a2e-8de6-eeb460995d7a" />

<img width="1863" height="1008" alt="image" src="https://github.com/user-attachments/assets/0a98d335-4ee0-4c29-af11-148d81e2edb3" />

<img width="1863" height="877" alt="image" src="https://github.com/user-attachments/assets/a768385a-b101-4900-8d7d-3a43a165e397" />

<p align="center"> Desenvolvido com ❤️ por <a href="https://github.com/RafaelHDSV">RafaelHDSV</a>, <a href="https://github.com/Rafasouza03">Rafasouza03</a> e <a href="https://github.com/MatheusTakenaka">MatheusTakenaka</a></p>

