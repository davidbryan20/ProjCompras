-- a) Cadastro de clientes (Pessoa Física e Jurídica) e endereços

-- Inserção de cliente pessoa física
INSERT INTO MC_CLIENTE (NM_CLIENTE, DS_EMAIL, nm_login, ds_senha)
VALUES ('Carlos Silva', 'carlos.silva@exemplo.com', 'carlos.silva', 'carlos234');

INSERT INTO MC_CLI_FISICA (nr_cliente, NR_CPF, FL_SEXO_BIOLOGICO, dt_nascimento)
VALUES ('3', '56815625510', 'M', '19/12/2001');

--Inserção de cliente pessoa Jurídica
INSERT INTO MC_CLIENTE (
    nm_cliente, ds_email, nm_login, ds_senha
) VALUES (
    'Tech Solutions LTDA', 'contato@techsolutions.com', 'techlogin2025', 'tech9384'
);

INSERT INTO mc_cli_juridica (
    nr_cliente, nr_cnpj
) VALUES(
    '4', '42987153000145'
);

-- Endereço para cliente pessoa física
INSERT INTO mc_end_cli( nr_cliente, nr_end, cd_logradouro_cli
)VALUES (
'3', '345', '8'
);
-- Endereço para cliente pessoa jurídica
INSERT INTO mc_end_cli (
    nr_cliente, nr_end, cd_logradouro_cli
) VALUES (
   '4', '424', '1'
);

-- b) Tentativa de inserir cliente com login duplicado

-- (Supondo que 'joaninha2025' já exista)
-- Tentativa:

-- Tentativa de inserir cliente com login duplicado
INSERT INTO MC_CLIENTE (NM_CLIENTE, DS_EMAIL, nm_login, ds_senha)
VALUES ('David Bryan', 'david.bryan@exemplo.com', 'joaninha2025', 'teste345');

--segue erro dado: ORA-00001: restrição exclusiva (RM565407.UK_MC_CLIENTE_MM_LOGIN) violada

-- c) Atualização de cargo e salário de funcionário

UPDATE MC_FUNCIONARIO
SET DS_CARGO = 'Supervisor(a) de Vendas',
    VL_SALARIO = VL_SALARIO * 1.12
WHERE CD_FUNCIONARIO = 2;

-- d) Alterar status de endereço de cliente e colocar data final

UPDATE MC_END_CLI
SET ST_END = '',
    DT_TERMINO = TO_DATE('22-04-2025', 'DD-MM-YYYY')
WHERE NR_CLIENTE = '3' AND CD_LOGRADOURO_CLI = '8';

--Resultado: Sucesso 
--Justificativa: 1 linha atualizado.

-- e) Tentativa de deletar estado com cidade cadastrada

DELETE FROM mc_estado
WHERE sg_estado = 'SP';

-- Resultado: FALHA.
-- Justificativa: ORA-02292: restrição de integridade (RM565407.FK_MC_CIDADE_ESTADO) violada - registro filho localizado

-- f) Atualizar produto com status inválido

UPDATE mc_produto
SET st_produto = 'X'
WHERE cd_produto = 100;

-- Resultado: 0 linhas atualizado

-- g) Confirmar todas as transações pendentes