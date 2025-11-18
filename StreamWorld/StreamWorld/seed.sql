/* ============================================================
   SEED COMPLETO CORRIGIDO – STREAMWORLD
   COMPATÍVEL COM OS MODELS DO ENTITY FRAMEWORK
   ============================================================ */

/* ===========================
      TABELA: Genres
   =========================== */
INSERT INTO Genres (_id, name) VALUES
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
INSERT INTO Artists (_id, name, birthdate, countryBirth, photo) VALUES
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
INSERT INTO Productions (_id, titulo, releaseDate, type, director, coverPhoto, createdAt)
VALUES
(1, 'Vingadores: Ultimato',      '2019-04-26', 'Filme', 'Anthony e Joe Russo', '/images/posters/endgame.jpg', GETDATE()),
(2, 'Coringa',                    '2019-10-03', 'Filme', 'Todd Phillips', '/images/posters/joker.jpg', GETDATE()),
(3, 'La La Land',                 '2016-12-09', 'Filme', 'Damien Chazelle', '/images/posters/lalaland.jpg', GETDATE()),
(4, 'Matrix',                     '1999-03-31', 'Filme', 'Wachowski Sisters', '/images/posters/matrix.jpg', GETDATE()),
(5, 'Duna',                       '2021-10-22', 'Filme', 'Denis Villeneuve', '/images/posters/dune.jpg', GETDATE()),
(6, 'Homem-Aranha: Sem Volta',    '2021-12-17', 'Filme', 'Jon Watts', '/images/posters/nwh.jpg', GETDATE()),
(7, 'O Rei Leão',                 '1994-06-24', 'Filme', 'Roger Allers', '/images/posters/lionking.jpg', GETDATE()),
(8, 'John Wick',                  '2014-10-24', 'Filme', 'Chad Stahelski', '/images/posters/johnwick.jpg', GETDATE()),
(9, 'A Origem',                   '2010-07-16', 'Filme', 'Christopher Nolan', '/images/posters/inception.jpg', GETDATE()),
(10, 'Interestelar',              '2014-11-07', 'Filme', 'Christopher Nolan', '/images/posters/interstellar.jpg', GETDATE());


/* ===========================
   RELAÇÃO: ProductionsGenre
   =========================== */
INSERT INTO ProductionsGenre (productionId, genresId) VALUES
(1, 1),
(1, 7),
(2, 2),
(3, 9),
(4, 7),
(5, 7),
(6, 1),
(6, 5),
(7, 4),
(8, 1),
(9, 7),
(10, 7);


/* ===========================
   RELAÇÃO: ProductionsArtist
   =========================== */
INSERT INTO ProductionsArtist (productionId, artistsId, characterName) VALUES
(1, 1, 'Homem de Ferro'),
(1, 2, 'Viúva Negra'),
(2, 7, 'Arthur Fleck'),
(3, 6, 'Mia Dolan'),
(4, 8, 'Neo'),
(5, 3, 'Duke Leto Atreides'),
(6, 4, 'Peter Parker'),
(6, 5, 'MJ'),
(8, 8, 'John Wick'),
(9, 9, 'Professor Miles'),
(10, 9, 'Brand');


/* ===========================
         TABELA: Contacts
   =========================== */
INSERT INTO Contacts (_id, name, email, subject, message, submissionDate) VALUES
(1, 'Rafael Vieira', 'rafael@gmail.com', 'Problema no site', 'Não consigo acessar minha conta.', GETDATE()),
(2, 'João Souza', 'joao@example.com', 'Parceria', 'Gostaria de conversar sobre divulgação.', GETDATE()),
(3, 'Maria Lima', 'maria@email.com', 'Sugestão', 'Seria legal adicionar mais documentários.', GETDATE());
