CREATE UNIQUE INDEX email_UNIQUE_pessoa ON Pessoa (email ASC);
CREATE UNIQUE INDEX email_UNIQUE_instituicao ON Instituicao (email ASC);

CREATE INDEX fk_Doacao_Instituicao_idx ON Doacao (Instituicao_cnpj ASC);
CREATE INDEX fk_Doacao_Pessoa_idx ON Doacao (Pessoa_cpf ASC);
CREATE INDEX fk_Doacao_Receptor_idx ON Doacao (Receptor_cpf ASC);

CREATE INDEX fk_Item_da_Doacao_Doacao_idx ON Item_da_Doacao (Doacao_id ASC);
CREATE INDEX fk_Item_da_Doacao_Item_idx ON Item_da_Doacao (Item_id ASC);

CREATE INDEX fk_Estoque_Item_idx ON Estoque (Item_id ASC);

CREATE INDEX fk_Funcionario_Funcionario_idx ON Funcionario (gestor_cpf ASC);

CREATE INDEX fk_Venda_Estoque_idx ON Venda (Estoque_numero_registro ASC, Estoque_Item_id ASC);
CREATE INDEX fk_Venda_Funcionario_idx ON Venda (Funcionario_cpf ASC);
CREATE INDEX fk_Venda_Cliente_idx ON Venda (Cliente_cpf ASC);

CREATE INDEX fk_Gerencia_Doacao_idx ON Gerencia (Doacao_id ASC);