/* ============================================================
   SEED COMPLETO DO BANCO STREAMWORLD
   ============================================================ */

/* ===========================
      TABELA: Genres
   =========================== */

INSERT INTO Genres (Id, Name) VALUES
(1, 'Ação'),
(2, 'Drama'),
(3, 'Comédia'),
(4, 'Animação'),
(5, 'Fantasia'),
(6, 'Terror'),
(7, 'Ficção Científica'),
(8, 'Suspense'),
(9, 'Romance'),
(10, 'Documentário');


/* ===========================
      TABELA: Artists
   =========================== */

INSERT INTO Artists (Id, Name, BirthDate, BirthCountry, PhotoUrl) VALUES
(1, 'Robert Downey Jr.', '1965-04-04', 'Estados Unidos', '/images/artists/rdj.jpg'),
(2, 'Scarlett Johansson', '1984-11-22', 'Estados Unidos', '/images/artists/scarlett.jpg'),
(3, 'Pedro Pascal', '1975-04-02', 'Chile', '/images/artists/pedro.jpg'),
(4, 'Tom Holland', '1996-06-01', 'Reino Unido', '/images/artists/tom.jpg'),
(5, 'Zendaya', '1996-09-01', 'Estados Unidos', '/images/artists/zendaya.jpg'),
(6, 'Emma Stone', '1988-11-06', 'Estados Unidos', '/images/artists/emma.jpg'),
(7, 'Christian Bale', '1974-01-30', 'Reino Unido', '/images/artists/bale.jpg'),
(8, 'Keanu Reeves', '1964-09-02', 'Canadá', '/images/artists/keanu.jpg'),
(9, 'Morgan Freeman', '1937-06-01', 'Estados Unidos', '/images/artists/freeman.jpg'),
(10, 'Angelina Jolie', '1975-06-04', 'Estados Unidos', '/images/artists/angelina.jpg');


/* ===========================
      TABELA: Productions
   =========================== */

INSERT INTO Productions (Id, Title, ReleaseYear, GenreId, Synopsis, PosterUrl) VALUES
(1, 'Vingadores: Ultimato', 2019, 1, 'Os heróis restantes se unem para tentar desfazer o estalo de Thanos.', '/images/posters/endgame.jpg'),
(2, 'Coringa', 2019, 2, 'A origem sombria de um dos vilões mais marcantes da cultura pop.', '/images/posters/joker.jpg'),
(3, 'La La Land', 2016, 9, 'Um romance musical entre uma atriz e um pianista.', '/images/posters/lalaland.jpg'),
(4, 'Matrix', 1999, 7, 'Um hacker descobre que o mundo é uma simulação.', '/images/posters/matrix.jpg'),
(5, 'Duna', 2021, 7, 'Paul Atreides enfrenta conflitos políticos e ambientais em Arrakis.', '/images/posters/dune.jpg'),
(6, 'Homem-Aranha: Sem Volta Para Casa', 2021, 1, 'Peter Parker enfrenta o multiverso após um feitiço dar errado.', '/images/posters/nwh.jpg'),
(7, 'O Rei Leão', 1994, 4, 'A emocionante jornada de Simba.', '/images/posters/lionking.jpg'),
(8, 'John Wick', 2014, 1, 'Um ex-assassino parte em busca de vingança.', '/images/posters/johnwick.jpg'),
(9, 'A Origem', 2010, 7, 'Um ladrão invade sonhos para roubar segredos.', '/images/posters/inception.jpg'),
(10, 'Interestelar', 2014, 7, 'Uma equipe viaja através de um buraco de minhoca em busca de um novo lar.', '/images/posters/interstellar.jpg');


/* ===========================
      RELACIONAMENTO: ProductionArtists
   =========================== */

INSERT INTO ProductionArtists (ProductionId, ArtistId) VALUES
(1, 1),
(1, 2),
(2, 7),
(3, 6),
(4, 8),
(5, 3),
(6, 4),
(6, 5),
(8, 8),
(9, 9),
(10, 9);


/* ===========================
      TABELA: Contacts
   =========================== */

INSERT INTO Contacts (Id, FullName, Email, Subject, Message, SentAt) VALUES
(1, 'Rafael Vieira', 'rafael@gmail.com', 'Problema no site', 'Não consigo acessar minha conta.', GETDATE()),
(2, 'João Souza', 'joao@example.com', 'Parceria', 'Gostaria de conversar sobre divulgação.', GETDATE()),
(3, 'Maria Lima', 'maria@email.com', 'Sugestão', 'Seria legal adicionar mais documentários.', GETDATE());
