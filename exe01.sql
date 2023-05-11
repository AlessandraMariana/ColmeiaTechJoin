CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  descricao VARCHAR(100)
);

CREATE TABLE tb_personagens (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  nivel INT,
  poder_ataque INT,
  poder_defesa INT,
  id_classe INT,
  FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (id, nome, descricao) VALUES(1, 'Guerreiro', 'Personagem especializado em combate corpo a corpo');
INSERT INTO tb_classes (id, nome, descricao) VALUES (2, 'Mago', 'Personagem com habilidades mágicas');
INSERT INTO tb_classes (id, nome, descricao) VALUES (3, 'Arqueiro', 'Personagem especializado em ataques à distância');
INSERT INTO tb_classes (id, nome, descricao) VALUES (4, 'Assassino', 'Personagem furtivo e ágil');
INSERT INTO tb_classes (id, nome, descricao) VALUES (5, 'Curandeiro', 'Personagem com habilidades de cura');

INSERT INTO tb_personagens (id, nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES (1, 'Ragnar', 10, 2500, 1500, 1);
INSERT INTO tb_personagens (id, nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES (2, 'Feiticeira Escarlate', 8, 1800, 1200, 2);
INSERT INTO tb_personagens (id, nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES (3, 'Galadriel', 12, 2200, 1800, 3);
INSERT INTO tb_personagens (id, nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES (4, 'Brotherhood', 9, 1600, 900, 4);
INSERT INTO tb_personagens (id, nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES (5, 'Sage', 7, 1000, 2000, 5);
INSERT INTO tb_personagens (id, nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES (6, 'Bjorn', 11, 2800, 2000, 1);
INSERT INTO tb_personagens (id, nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES (7, 'Merlin', 10, 2100, 1100, 2);
INSERT INTO tb_personagens (id, nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES (8, 'Arqueira Merinda', 9, 1900, 1300, 3);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS classe_nome, c.descricao AS classe_descricao
FROM tb_personagens AS p
INNER JOIN tb_classes AS c ON p.id_classe = c.id;

SELECT p.*, c.nome AS classe_nome, c.descricao AS classe_descricao
FROM tb_personagens AS p
INNER JOIN tb_classes AS c ON p.id_classe = c.id
WHERE c.nome = 'Arqueiro';