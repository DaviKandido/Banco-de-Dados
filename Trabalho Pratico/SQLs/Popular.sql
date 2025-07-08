INSERT INTO Pessoa (cpf, nome, telefone, email, bairro, rua, numero) VALUES
('86228011992', 'Pessoa 1', '923168479', 'pessoa1@mail.com', 'Bairro A', 'Rua X', '10'),
('52779856958', 'Pessoa 2', '960213616', 'pessoa2@mail.com', 'Bairro B', 'Rua X', '11'),
('93185257844', 'Pessoa 3', '923818624', 'pessoa3@mail.com', 'Bairro C', 'Rua X', '12'),
('33413599650', 'Pessoa 4', '980793931', 'pessoa4@mail.com', 'Bairro D', 'Rua X', '13'),
('43497834109', 'Pessoa 5', '970058253', 'pessoa5@mail.com', 'Bairro E', 'Rua X', '14'),
('84864947096', 'Pessoa 6', '999999999', 'pessoa6@email.com', 'Bairro F', 'Rua X', '15'),
('93728724568', 'Pessoa 7', '999999998', 'pessoa7@email.com', 'Bairro G', 'Rua X', '16'),
('90655110447', 'Pessoa 8', '999999997', 'pessoa8@email.com', 'Bairro H', 'Rua X', '17');

INSERT INTO Instituicao (cnpj, nome, telefone, email, bairro, rua, numero) VALUES 
('06983988830652', 'Instituicao 1', '934453096', 'inst1@org.com', 'Centro', 'Avenida Y', '100'),
('54569017184824', 'Instituicao 2', '983338268', 'inst2@org.com', 'Centro', 'Avenida Y', '101'),
('30655003647803', 'Instituicao 3', '982803191', 'inst3@org.com', 'Centro', 'Avenida Y', '102');

INSERT INTO Receptor (cpf, nome, telefone, email, bairro, rua, numero) VALUES 
('51371937936', 'Receptor 1', '960170904', 'receptor1@mail.com', 'Bairro B', 'Rua Z', '20'),
('02690769328', 'Receptor 2', '918624063', 'receptor2@mail.com', 'Bairro B', 'Rua Z', '21'),
('02010065644', 'Receptor 3', '988672205', 'receptor3@mail.com', 'Bairro B', 'Rua Z', '22'),
('51272777175', 'Receptor 4', '939637358', 'receptor4@mail.com', 'Bairro B', 'Rua Z', '23'),
('85165816540', 'Receptor 5', '966599131', 'receptor5@mail.com', 'Bairro B', 'Rua Z', '24');

INSERT INTO Funcionario (cpf, nome, descricao, telefone, email, tipo, voluntario, salario, gestor_cpf) VALUES 
('55285344788', 'Gestor 1', 'Função 1', '997279206', 'func1@mail.com', 'vendedor', TRUE, NULL, NULL),
('64363717730', 'Funcionario 1', 'Função 2', '979238202', 'func2@mail.com', 'vendedor', FALSE, 2640.00, NULL),
('59528384486', 'Funcionario 2', 'Função 3', '907615516', 'func3@mail.com', 'vendedor', TRUE, NULL, NULL),
('17438757054', 'Gestor 3', 'Função 4', '923191746', 'func4@mail.com', 'vendedor', FALSE, 1582.00, NULL),
('03899760394', 'Gestor 4', 'Função 5', '920920419', 'func5@mail.com', 'vendedor', TRUE, NULL, NULL);

INSERT INTO Funcionario (cpf, nome, descricao, telefone, email, tipo, voluntario, salario, gestor_cpf) VALUES 
('49897706351', 'Funcionario 3', 'Função 1', '997279206', 'func1@mail.com', 'vendedor', TRUE, NULL, '55285344788'),
('36917158992', 'Funcionario 4', 'Função 2', '979238202', 'func2@mail.com', 'vendedor', FALSE, 2640.00, '55285344788'),
('17962332182', 'Funcionario 5', 'Função 3', '907615516', 'func3@mail.com', 'vendedor', TRUE, NULL, '17438757054'),
('25923398456', 'Funcionario 6', 'Função 4', '923191746', 'func4@mail.com', 'vendedor', FALSE, 1582.00, '03899760394');

INSERT INTO Cliente (cpf, nome, telefone) VALUES
('80127797075', 'Cliente 1', '979938974'),
('96450220665', 'Cliente 2', '980969342'),
('92440506619', 'Cliente 3', '988304955'),
('43632157571', 'Cliente 4', '977102893'),
('58749731797', 'Cliente 5', '973359915');

INSERT INTO Item (id, tipo, quantidade, descricao) VALUES 
(1, 'Alimento', 4, 'Descrição do item 1'),
(2, 'Alimento', 3, 'Descrição do item 2'),
(3, 'Alimento', 5, 'Descrição do item 3'),
(4, 'Alimento', 5, 'Descrição do item 4'),
(5, 'Alimento', 20, 'Descrição do item 5');

INSERT INTO Doacao (id, data, finalidade, origem, Instituicao_cnpj, Pessoa_cpf, Receptor_cpf) VALUES 
(1, '2025-04-05', 'direta', 'Pessoa', NULL, '84864947096', '02690769328'),
(2, '2024-10-04', 'direta', 'Instituicao', '06983988830652', NULL, '02010065644'),
(3, '2025-01-16', 'direta', 'Pessoa', NULL, '93728724568', '51272777175'),
(4, '2024-07-06', 'direta', 'Instituicao', '54569017184824', NULL, '85165816540'),
(5, '2025-03-26', 'direta', 'Pessoa', NULL, '90655110447', NULL);

INSERT INTO Item_da_Doacao (Doacao_id, Item_id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO Estoque (numero_registro, preco, Item_id) VALUES
(1, 5.00, 1),
(2, 11.00, 2),
(3, 7.00, 3),
(4, 19.00, 4),
(5, 18.00, 5);

INSERT INTO Gerencia (Funcionario_cpf, Doacao_id) VALUES
('64363717730', 1),
('59528384486', 2),
('49897706351', 3),
('36917158992', 4),
('36917158992', 5);

INSERT INTO Venda (id, valor, data, forma_pagamento, Estoque_numero_registro, Estoque_Item_id, Funcionario_cpf, Cliente_cpf) VALUES
(1, 16.00, '2024-10-20', 'dinheiro', 1, 1, '25923398456', '80127797075'),
(2, 14.00, '2025-06-14', 'dinheiro', 2, 2, '25923398456', '96450220665'),
(3, 23.00, '2024-11-04', 'dinheiro', 3, 3, '25923398456', '92440506619'),
(4, 26.00, '2024-12-20', 'dinheiro', 4, 4, '17962332182', '43632157571'),
(5, 14.00, '2024-10-30', 'dinheiro', 5, 5, '17962332182', '58749731797');