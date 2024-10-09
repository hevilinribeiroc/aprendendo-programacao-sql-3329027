-- Insira 3 classes salariais na tabela salario_classe
INSERT INTO salario_classe (SALARIO, NIVEL)
VALUES 
(3500, 'estgiária'),
(4700, 'iniciante - grade 1'),
(5300, 'iniciante - grade 2');

-- Insira 1 nova classe salarial, sem declarar o atributo id_salario

INSERT INTO salario_classe (SALARIO, NIVEL)
VALUES 
(8500, 'gerência'),
(10700, 'coordenação de área');