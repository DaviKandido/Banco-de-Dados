
--Projeto o cpf, nome e telefone de funcionários voluntários que estão 
-- responsáveis por alguma doação, e qual tipo de item foi doado

SELECT F.cpf, F.nome, F.telefone, I.tipo
FROM (Funcionario as F join Gerencia AS G on G.funcionario_cpf = F.cpf)
 join Doacao as D on G.doacao_id = D.id
 join Item_da_doacao as ID on d.id = ID.doacao_id
 join Item as I on I.id = ID.item_id
WHERE voluntario = True;