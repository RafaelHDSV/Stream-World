/* ============================================================
   SEED COMPLETO CORRIGIDO – STREAMWORLD
   COMPATÍVEL COM OS MODELS DO ENTITY FRAMEWORK
   ============================================================ */

/* ===========================
      TABELA: Genres
   =========================== */
SET IDENTITY_INSERT Genre ON;
INSERT INTO Genre (_id, name) VALUES
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
SET IDENTITY_INSERT Genre OFF;

/* ===========================
      TABELA: Artists
   =========================== */
SET IDENTITY_INSERT Artist ON;
INSERT INTO Artist (_id, name, birthdate, countryBirth, photo) VALUES
(1, 'Robert Downey Jr.', '1965-04-04', 'Estados Unidos', 'https://imgs.search.brave.com/U-pPgQHYZV0NmGcHhZKTJnJTshaaDlnBXGuqJi0-RK4/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi85Lzk0L1Jv/YmVydF9Eb3duZXlf/SnJfMjAxNF9Db21p/Y19Db25fJTI4Y3Jv/cHBlZCUyOS5qcGcv/NTEycHgtUm9iZXJ0/X0Rvd25leV9Kcl8y/MDE0X0NvbWljX0Nv/bl8lMjhjcm9wcGVk/JTI5LmpwZw'),
(2, 'Scarlett Johansson', '1984-11-22', 'Estados Unidos', 'https://imgs.search.brave.com/2h7xQzR9k7JbU3kbfKWkoo0S9rrplqpKrW2awmnLR5c/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9hL2FkL1Nj/YXJsZXR0X0pvaGFu/c3Nvbi04NTg4Lmpw/Zy81MTJweC1TY2Fy/bGV0dF9Kb2hhbnNz/b24tODU4OC5qcGc'),
(3, 'Pedro Pascal', '1975-04-02', 'Chile', 'https://imgs.search.brave.com/NmAAabhT8nJEokj3DRZSIojixYZbIjrNzKllrNHE4mc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9iL2JkL1Bl/ZHJvX1Bhc2NhbF9h/dF90aGVfMjAyNV9D/YW5uZXNfRmlsbV9G/ZXN0aXZhbF8wNS5q/cGcvNTEycHgtUGVk/cm9fUGFzY2FsX2F0/X3RoZV8yMDI1X0Nh/bm5lc19GaWxtX0Zl/c3RpdmFsXzA1Lmpw/Zw'),
(4, 'Tom Holland', '1996-06-01', 'Reino Unido', 'https://imgs.search.brave.com/rRP1KScRvTTCeInreRIVg6wUTu5Cf15NiUwUG9XwSJ4/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi81LzU4L1Rv/bV9Ib2xsYW5kX2R1/cmluZ19wcm8tYW1f/V2VudHdvcnRoX2dv/bGZfY2x1Yl8yMDIz/LTIuanBnLzUxMnB4/LVRvbV9Ib2xsYW5k/X2R1cmluZ19wcm8t/YW1fV2VudHdvcnRo/X2dvbGZfY2x1Yl8y/MDIzLTIuanBn'),
(5, 'Zendaya', '1996-09-01', 'Estados Unidos', 'https://imgs.search.brave.com/NWdnb58zahKMIuoPVtRyi5ALpmaC4l1sCanFmK51RDc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9lL2VkL1pl/bmRheWFfTk1BQ0Nf/MDEuanBnLzUxMnB4/LVplbmRheWFfTk1B/Q0NfMDEuanBn'),
(6, 'Emma Stone', '1988-11-06', 'Estados Unidos', 'https://imgs.search.brave.com/dUP6IL1Xss-CIKQ6YvJJv9SnUVjkQbXITFEQwWsL_Ys/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi85LzliL0Vt/bWFfU3RvbmVfYXRf/dGhlXzIwMjVfQ2Fu/bmVzX0ZpbG1fRmVz/dGl2YWxfMDNfJTI4/Y3JvcHBlZCUyOS5q/cGcvNTEycHgtRW1t/YV9TdG9uZV9hdF90/aGVfMjAyNV9DYW5u/ZXNfRmlsbV9GZXN0/aXZhbF8wM18lMjhj/cm9wcGVkJTI5Lmpw/Zw'),
(7, 'Christian Bale', '1974-01-30', 'Reino Unido', 'https://imgs.search.brave.com/Mwld_jEKfFsdY5AZOc96Xybr4084tu1dzXKgyGoZcMw/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9jL2MyL0No/cmlzdGlhbl9CYWxl/LTc4MzguanBnLzUx/MnB4LUNocmlzdGlh/bl9CYWxlLTc4Mzgu/anBn'),
(8, 'Keanu Reeves', '1964-09-02', 'Canadá', 'https://imgs.search.brave.com/-Luf04tSzLaPUsfsHo5xVl_7_cAoHT_GMow3mtj4rCs/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9iL2I0L0tl/YW51X1JlZXZlc19h/dF9USUZGXzIwMjVf/MDJfJTI4Q3JvcHBl/ZCUyOS5qcGcvNTEy/cHgtS2VhbnVfUmVl/dmVzX2F0X1RJRkZf/MjAyNV8wMl8lMjhD/cm9wcGVkJTI5Lmpw/Zw'),
(9, 'Morgan Freeman', '1937-06-01', 'Estados Unidos', 'https://imgs.search.brave.com/1gjKUM8jWU6mMwStjiPO4ZMD84CMMsAV9AaZqWB4Sog/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi80LzQyL01v/cmdhbl9GcmVlbWFu/X2F0X1RoZV9QZW50/YWdvbl9vbl8yX0F1/Z3VzdF8yMDIzXy1f/MjMwODAyLUQtUE0x/OTMtMzM2M18lMjhj/cm9wcGVkJTI5Lmpw/Zy81MTJweC1Nb3Jn/YW5fRnJlZW1hbl9h/dF9UaGVfUGVudGFn/b25fb25fMl9BdWd1/c3RfMjAyM18tXzIz/MDgwMi1ELVBNMTkz/LTMzNjNfJTI4Y3Jv/cHBlZCUyOS5qcGc'),
(10, 'Angelina Jolie', '1975-06-04', 'Estados Unidos', 'https://imgs.search.brave.com/m0qkyg0pb61-tAKpkIT4oTVslqU6PeuDVSg9VA7FwZ0/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9mL2YzL0pv/bGllTWFyaWFCRklM/RkYxODEwMjRfJTI4/MThfb2ZfMjglMjlf/JTI4NTQwODEwNjQ1/OTElMjlfJTI4Y3Jv/cHBlZCUyOS5qcGcv/NTEycHgtSm9saWVN/YXJpYUJGSUxGRjE4/MTAyNF8lMjgxOF9v/Zl8yOCUyOV8lMjg1/NDA4MTA2NDU5MSUy/OV8lMjhjcm9wcGVk/JTI5LmpwZw');
SET IDENTITY_INSERT Artist OFF;

/* ===========================
      TABELA: Productions
   =========================== */
SET IDENTITY_INSERT Production ON;
INSERT INTO Production (_id, titulo, releaseDate, type, director, coverPhoto, createdAt)
VALUES
(1, 'Vingadores: Ultimato',      '2019-04-26', 'Filme', 'Anthony e Joe Russo', 'https://imgs.search.brave.com/i4iyUSxDQqGMgAjdiw7rnOJJ-VvH2W-H53eN5bUNNYw/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvcHQvdGh1bWIv/OS85Yi9BdmVuZ2Vy/c19FbmRnYW1lLmpw/Zy81MTJweC1BdmVu/Z2Vyc19FbmRnYW1l/LmpwZw', GETDATE()),
(2, 'Coringa',                    '2019-10-03', 'Filme', 'Todd Phillips', 'https://imgs.search.brave.com/7P2-HbN3kL0XLsRbwz0ntEGmyHOunUtr5RGtHQ-p4p4/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL1Mv/cHYtdGFyZ2V0LWlt/YWdlcy82MzFjZDgw/MzUwNmZhNjAzYmNk/Njk4MTJiOWJhNmJi/ZDhmYTc2OWQ3OWY1/OWZhNzhiNjk4MjVk/M2M1YjQ0OGMxLmpw/Zw', GETDATE()),
(3, 'La La Land',                 '2016-12-09', 'Filme', 'Damien Chazelle', 'https://imgs.search.brave.com/7qPeFpWCO145w3YfoWl9QfjZCFYcwUODKZ3nSnrwfTs/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk9HVmpaRGM1/WVRndFl6ZzBOQzAw/Wm1FekxUa3hZamt0/TW1FM1pHSmhaR1Jo/TVRVelhrRXlYa0Zx/Y0djQC5fVjFfLmpw/Zw', GETDATE()),
(4, 'Matrix',                     '1999-03-31', 'Filme', 'Wachowski Sisters', 'https://imgs.search.brave.com/WjnEDNStN-BbdoB6xISFHXTGhRUBnzcxoOZtZS5yaPQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvcHQvYy9jMS9U/aGVfTWF0cml4X1Bv/c3Rlci5qcGc', GETDATE()),
(5, 'Duna',                       '2021-10-22', 'Filme', 'Denis Villeneuve', 'https://imgs.search.brave.com/h426RMPcIOrN72gTxoJOhl0o499MElYgdPJgjDHOxds/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk56azVNVEU0/WVRVdE5HVTJNeTAw/TVRZeExXRTVOR0l0/T0RrNFlXRmtPV1l5/TWpBNVhrRXlYa0Zx/Y0djQC5qcGc', GETDATE()),
(6, 'Homem-Aranha: Sem Volta',    '2021-12-17', 'Filme', 'Jon Watts', 'https://imgs.search.brave.com/jw0cJLWDiCqBRBAUz2lvX3boJ8UDTF9paN0mkD8qPXw/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvcHQvdGh1bWIv/MC8wMC9TcGlkZXIt/TWFuX05vX1dheV9I/b21lX3Bvc3Rlci5q/cGcvNTEycHgtU3Bp/ZGVyLU1hbl9Ob19X/YXlfSG9tZV9wb3N0/ZXIuanBn', GETDATE()),
(7, 'O Rei Leão',                 '1994-06-24', 'Filme', 'Roger Allers', 'https://imgs.search.brave.com/C0IAbGRkZfWJ7YxLaqQtv85TNN0uMF0OliAfx4IvTzQ/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9kaXNu/ZXkuaW1hZ2VzLmVk/Z2UuYmFtZ3JpZC5j/b20vcmlwY3V0LWRl/bGl2ZXJ5L3YyL3Zh/cmlhbnQvZGlzbmV5/L2M2ZThjZWFjLWYz/ODYtNDMyYy05M2M2/LThlMjkyYjFkMmI1/My9jb21wb3NlP2Fz/cGVjdFJhdGlvPTEu/NzgmYW1wO2Zvcm1h/dD13ZWJwJmFtcDt3/aWR0aD0xMjAw', GETDATE()),
(8, 'John Wick',                  '2014-10-24', 'Filme', 'Chad Stahelski', 'https://imgs.search.brave.com/aPkiKVVmXXjFqWVx1lhXXcRcLthetJPbNCCa4xIWaYk/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL1Mv/cHYtdGFyZ2V0LWlt/YWdlcy8yMTEwOWNh/YTIwNzUwZjYxNmY4/NGJkYWQxZTNiNTg5/ZTNlZDRjYzFiYWNh/NDlkNTUwNDJhYzdk/ZTFkNDFlZGM5Lmpw/Zw', GETDATE()),
(9, 'A Origem',                   '2010-07-16', 'Filme', 'Christopher Nolan', 'https://imgs.search.brave.com/i98bF7HuXd0SW18pWITLxFrHkpnLDx8OePpInsCFwGs/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9ici53/ZWIuaW1nMy5hY3N0/YS5uZXQvbWVkaWFz/L25tZWRpYS8xOC84/Ny8zMi8zMS8yMDAy/ODY4OC5qcGc', GETDATE()),
(10, 'Interestelar',              '2014-11-07', 'Filme', 'Christopher Nolan', 'https://imgs.search.brave.com/SHJuzJ1B2lTKrzpDQvnrXd5eHGTLgGM8zZ9Im_2ziOI/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvcHQvdGh1bWIv/My8zYS9JbnRlcnN0/ZWxsYXJfRmlsbWUu/cG5nLzUxMnB4LUlu/dGVyc3RlbGxhcl9G/aWxtZS5wbmc', GETDATE());
SET IDENTITY_INSERT Production OFF;

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
SET IDENTITY_INSERT Contact ON;
INSERT INTO Contact (_id, name, email, subject, message, submissionDate) VALUES
(1, 'Rafael Vieira', 'rafael@gmail.com', 'Problema no site', 'Não consigo acessar minha conta.', GETDATE()),
(2, 'João Souza', 'joao@example.com', 'Parceria', 'Gostaria de conversar sobre divulgação.', GETDATE()),
(3, 'Maria Lima', 'maria@email.com', 'Sugestão', 'Seria legal adicionar mais documentários.', GETDATE());
SET IDENTITY_INSERT Contact OFF;

/* ===============================================
   CRIAÇÃO DE USER – PRONTO PARA USO
   =============================================== */

DECLARE @UserId NVARCHAR(450) = NEWID();
DECLARE @RoleId NVARCHAR(450) = NEWID();

/* ===============================================
   CRIAR ROLE ADMIN
   =============================================== */
INSERT INTO AspNetRoles (Id, Name, NormalizedName)
VALUES (@RoleId, 'Admin', 'ADMIN');

/* ===============================================
   CRIAR USUÁRIO ADMIN
   =============================================== */
INSERT INTO AspNetUsers 
(Id, UserName, NormalizedUserName, Email, NormalizedEmail,
 EmailConfirmed, PasswordHash, SecurityStamp, ConcurrencyStamp,
 PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnabled, AccessFailedCount)
VALUES
(
  @UserId,
  'admin@admin.com',
  'ADMIN@ADMIN.COM',
  'admin@admin.com',
  'ADMIN@ADMIN.COM',
  1,
  'AQAAAAEAACcQAAAAEGdQ6VbUaz2YsmiVjCwXTlzAIXazhbugzuDUFcPRl1BDpRP70dNDO7xjMnIKh4j/wQ==', -- Pa$$w0rd
  NEWID(),
  NEWID(),
  0,
  0,
  1,
  0
);

/* ===============================================
   VINCULAR USUÁRIO À ROLE ADMIN
   =============================================== */
INSERT INTO AspNetUserRoles (UserId, RoleId)
VALUES (@UserId, @RoleId);

