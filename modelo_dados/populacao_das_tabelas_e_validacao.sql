# INSERÇÕES: 

# 1.inserindo uma pessoa física que é aluno
INSERT INTO Pessoa (id, nome, email, telefone) 
VALUES (1, 'João Silva', 'joao.silva@exemplo.com', '11966933108');

INSERT INTO Pessoa_fisica (id, cpf, rg, dataNascimento) 
VALUES (1, '62589976786', '12345678', '2001-05-20');

INSERT INTO Aluno (id, matricula, curso) 
VALUES (1, '2025001', 'Análise e Desenvolvimento de Sistemas');


# 2.inserindo um Professor
INSERT INTO Pessoa (id, nome, email, telefone) 
VALUES (2, 'Carlos Souza', 'carlos.souza@exemplo.com', '11998887777');

INSERT INTO Pessoa_fisica (id, cpf, rg, dataNascimento) 
VALUES (2, '98765432100', '87654321', '1980-03-15');

INSERT INTO Professor (id, email_corporativo, disciplina, matricula) 
VALUES (2, 'carlos.souza@universidade.com', 'Lógica de Programação', 'PRF2025');


# 3.inserindo pessoa jurídica que é Fornecedor
INSERT INTO Pessoa (id, nome, email, telefone) 
VALUES (3, 'TechBooks LTDA', 'contato@techbooks.com', '1133224455');

INSERT INTO Pessoa_juridica (id, cnpj, endereco) 
VALUES (3, '11222333444455', 'Av. Paulista, 1000, São Paulo');

INSERT INTO Fornecedor (id, data_contrato, servico) 
VALUES (3, '2024-02-09', 'Distribuição de livros didáticos');


# SELEÇÕES PARA VALIDAÇÃO: 

# visualizando os dados do aluno
SELECT p.nome, p.email, p.telefone, a.matricula, a.curso
FROM Aluno a
JOIN Pessoa p ON a.id = p.id;

# visualizando os dados do professor
SELECT p.nome, p.email, f.disciplina, f.matricula
FROM Professor f
JOIN Pessoa p ON f.id = p.id;

# visualizando os dados do fornecedor 
SELECT pj.cnpj, p.nome, f.servico, f.data_contrato
FROM Fornecedor f
JOIN Pessoa_juridica pj ON f.id = pj.id
JOIN Pessoa p ON pj.id = p.id;
