CREATE TABLE mc_bairro (
    cd_bairro       NUMBER(8) GENERATED ALWAYS AS IDENTITY NOT NULL,
    cd_cidade       NUMBER(8) NOT NULL,
    nm_bairro       VARCHAR2(45),
    nm_zona_bairro  VARCHAR2(20)
);

COMMENT ON COLUMN mc_bairro.cd_bairro IS
    'Esta coluna irÃ¯Â¿Â½ receber o codigo do bairro e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_bairro.cd_cidade IS
    'Esta coluna irÃ¯Â¿Â½ receber o codigo da cidade e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_bairro.nm_bairro IS
    'Esta coluna ira receber o nome do Bairro. Esse conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_bairro.nm_zona_bairro IS
    'Esta coluna irÃ¯Â¿Â½ receber a localizaÃ¯Â¿Â½Ã¯Â¿Â½o da zona onde se encontra o bairro. Alguns exemplos: Zona Norte, Zona Sul, Zona Leste, Zona Oeste, Centro.';

ALTER TABLE mc_bairro ADD CONSTRAINT pk_mc_bairro PRIMARY KEY ( cd_bairro );

CREATE TABLE mc_categoria_prod (
    cd_categoria  NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL,
    tp_categoria  CHAR(1) NOT NULL,
    ds_categoria  VARCHAR2(500) NOT NULL,
    dt_inicio     DATE,
    dt_termino    DATE,
    st_categoria  CHAR(1) NOT NULL
);

COMMENT ON COLUMN mc_categoria_prod.cd_categoria IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a chave primÃ¯Â¿Â½ria da tabela de categoria de produtos da Melhorees Compras. Cada categoria nova cadastrada  serÃ¯Â¿Â½ acionada a Sequence  SQ_MC_CATEGORIA que se encarregarÃ¯Â¿Â½ de gerar o prÃ¯Â¿Â½ximo nÃ¯Â¿Â½mero Ã¯Â¿Â½nico da categoria..';

COMMENT ON COLUMN mc_categoria_prod.tp_categoria IS
    'Nessa  coluna  serÃ¯Â¿Â½  armazenada o tipo de categoria que poderÃ¯Â¿Â½  ser (V)Ã¯Â¿Â½deo ou (P)rodudto. Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_categoria_prod.ds_categoria IS
    'Essa coluna irÃ¯Â¿Â½ armazenar descriÃ¯Â¿Â½Ã¯Â¿Â½o da categoria de produtos da Melhorees Compras. Cada categoria tem uma  descriÃ¯Â¿Â½Ã¯Â¿Â½o Ã¯Â¿Â½nica e serve para organizar os produtos em categorias simliares, melhorando a tomada de decisÃ¯Â¿Â½o.';

COMMENT ON COLUMN mc_categoria_prod.dt_inicio IS
    'Essa coluna irÃ¯Â¿Â½ receber  a data de inÃ¯Â¿Â½cio da categoria. Seu formato Ã¯Â¿Â½ dd/mm/yyyy e seu conteÃ¯Â¿Â½do deve ser sempre  obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_categoria_prod.dt_termino IS
    'Essa coluna irÃ¯Â¿Â½ receber  a data de encerramento  da categoria. Seu formato Ã¯Â¿Â½ dd/mm/yyyy e seu conteÃ¯Â¿Â½do deve ser sempre  opcional. ConteÃ¯Â¿Â½do obrigatÃ¯Â¿Â½rio significa que a categoria foi encerrada a partir da data tÃ¯Â¿Â½rmino. JÃ¯Â¿Â½ o conteÃ¯Â¿Â½do opcional indica que a categoria estÃ¯Â¿Â½ ativa e operante.';

COMMENT ON COLUMN mc_categoria_prod.st_categoria IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o stauts da categoria da Melhorees Compras. Os valores permitidos aqui sÃ¯Â¿Â½o: A(tivo) e I(nativo).';

ALTER TABLE mc_categoria_prod ADD CONSTRAINT pk_mc_categoria PRIMARY KEY ( cd_categoria );

CREATE TABLE mc_cidade (
    cd_cidade  NUMBER(8) GENERATED ALWAYS AS IDENTITY NOT NULL,
    sg_estado  CHAR(2) NOT NULL,
    nm_cidade  VARCHAR2(60) NOT NULL,
    cd_ibge    NUMBER(8),
    nr_ddd     NUMBER(3)
);

COMMENT ON COLUMN mc_cidade.cd_cidade IS
    'Esta coluna irÃ¯Â¿Â½ receber o codigo da cidade e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_cidade.sg_estado IS
    'Esta coluna ira receber a siga do Estado. Esse conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_cidade.nm_cidade IS
    'Esta coluna ira receber o nome da Cidade. Esse conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_cidade.cd_ibge IS
    'Esta coluna irÃ¯Â¿Â½ receber o cÃ¯Â¿Â½digo do IBGE que fornece informaÃ¯Â¿Â½Ã¯Â¿Â½es para geraÃ¯Â¿Â½Ã¯Â¿Â½o da NFe.';

COMMENT ON COLUMN mc_cidade.nr_ddd IS
    'Esta coluna irÃ¯Â¿Â½ receber o nÃ¯Â¿Â½mero do DDD da cidade para ser utilizado no contato telefÃ¯Â¿Â½nico. Seu conteudo Ã¯Â¿Â½ opcional.';

ALTER TABLE mc_cidade ADD CONSTRAINT pk_mc_cidade PRIMARY KEY ( cd_cidade );

CREATE TABLE mc_cli_fisica (
    nr_cliente         NUMBER(10) NOT NULL,
    dt_nascimento      DATE NOT NULL,
    fl_sexo_biologico  CHAR(1) NOT NULL,
    ds_genero          VARCHAR2(100),
    nr_cpf             VARCHAR2(14) NOT NULL
);

COMMENT ON COLUMN mc_cli_fisica.nr_cliente IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o cÃ¯Â¿Â½digo Ã¯Â¿Â½nico do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio, Ã¯Â¿Â½nico e preenhcido a  parrtir da tabela NC_CLIENTE. ';

COMMENT ON COLUMN mc_cli_fisica.dt_nascimento IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a data de nascimento do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio. ';

COMMENT ON COLUMN mc_cli_fisica.fl_sexo_biologico IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o sexo biolÃ¯Â¿Â½gico do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio.. ';

COMMENT ON COLUMN mc_cli_fisica.ds_genero IS
    'Genero do sexo do Cliente. Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_cli_fisica.nr_cpf IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o nÃ¯Â¿Â½mero do CPF do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio. ';

ALTER TABLE mc_cli_fisica ADD CONSTRAINT pk_mc_cli_fisica PRIMARY KEY ( nr_cliente );

CREATE TABLE mc_cli_juridica (
    nr_cliente    NUMBER(10) NOT NULL,
    dt_fundacao   DATE,
    nr_cnpj       VARCHAR2(20),
    nr_inscr_est  VARCHAR2(15)
);

COMMENT ON COLUMN mc_cli_juridica.nr_cliente IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o cÃ¯Â¿Â½digo Ã¯Â¿Â½nico do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio, Ã¯Â¿Â½nico e preenhcido a  parrtir da tabela NC_CLIENTE. ';

COMMENT ON COLUMN mc_cli_juridica.dt_fundacao IS
    'Essa coluna irÃ¯Â¿Â½ armazenar data  de fundaÃ¯Â¿Â½Ã¯Â¿Â½o do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_cli_juridica.nr_cnpj IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o  numero do CNPJ do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_cli_juridica.nr_inscr_est IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o  numero da InscriÃ¯Â¿Â½Ã¯Â¿Â½o Estadual  do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser opcional';

ALTER TABLE mc_cli_juridica ADD CONSTRAINT pk_mc_cli_juridica PRIMARY KEY ( nr_cliente );

CREATE TABLE mc_cliente (
    nr_cliente       NUMBER(10) GENERATED ALWAYS AS IDENTITY NOT NULL,
    nm_cliente       VARCHAR2(160) NOT NULL,
    qt_estrelas      NUMBER(1),
    vl_medio_compra  NUMBER(10, 2),
    st_cliente       CHAR(1),
    ds_email         VARCHAR2(100),
    nr_telefone      VARCHAR2(20),
    nm_login         VARCHAR2(50) NOT NULL,
    ds_senha         VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN mc_cliente.nr_cliente IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o cÃ¯Â¿Â½digo Ã¯Â¿Â½nico do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio, Ã¯Â¿Â½nico e preenhcido a  parrtir da chamada de sequence  SQ_MC_CLIENTE, a qual terÃ¯Â¿Â½ sempre o nÃ¯Â¿Â½mero disponivel para uso.';

COMMENT ON COLUMN mc_cliente.nm_cliente IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o nome do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_cliente.qt_estrelas IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a quantiade de estrelas do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio e ser possÃ¯Â¿Â½vel de estar entre 1 e 5 estrelas.';

COMMENT ON COLUMN mc_cliente.vl_medio_compra IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o valor  mÃ¯Â¿Â½dio de gastos f eito pelo cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio e deve ser calculado diariamente.';

COMMENT ON COLUMN mc_cliente.st_cliente IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o stauts do cliente da Melhorees Compras. Os valores permitidos aqui sÃ¯Â¿Â½o: A(tivo) e I(nativo).';

COMMENT ON COLUMN mc_cliente.ds_email IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o email  do cliente da Melhorees Compras. No minimo Ã¯Â¿Â½ esperado um email contendo o caractere (@) em seu conteÃ¯Â¿Â½do.';

COMMENT ON COLUMN mc_cliente.nr_telefone IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o nÃ¯Â¿Â½mero do cliente da Melhorees Compras. A mascara de armazenamento deve ser: (<nr_ddd>) 99999-9999 e  deve ser utilizada prÃ¯Â¿Â½ definida.';

COMMENT ON COLUMN mc_cliente.nm_login IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o login de cada cliente na plataforma ecommerce da Melhores Compras. Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio e  Ã¯Â¿Â½nico para cada cliente.';

COMMENT ON COLUMN mc_cliente.ds_senha IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a senha de cada cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio.';

ALTER TABLE mc_cliente ADD CONSTRAINT pk_mc_cliente PRIMARY KEY ( nr_cliente );

ALTER TABLE mc_cliente ADD CONSTRAINT uk_mc_cliente_nome_cliente UNIQUE ( nm_cliente );

--
-- O script de criacao de unique key para login
--
ALTER TABLE MC_CLIENTE 
ADD CONSTRAINT UK_MC_CLIENTE_MM_LOGIN UNIQUE (NM_LOGIN);


CREATE TABLE mc_depto (
    cd_depto  NUMBER(3) GENERATED ALWAYS AS IDENTITY NOT NULL,
    nm_depto  VARCHAR2(100) NOT NULL,
    st_depto  CHAR(1) NOT NULL
);

COMMENT ON COLUMN mc_depto.cd_depto IS
    'Esta coluna irÃ¯Â¿Â½ receber o codigo do departamento  e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_depto.nm_depto IS
    'Esta coluna irÃ¯Â¿Â½ receber o nome do  departamento  e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_depto.st_depto IS
    'Esta coluna irÃ¯Â¿Â½ receber o status do  departamento  e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio. Os valores possÃ¯Â¿Â½veis sÃ¯Â¿Â½o: (A)tivo e (I)nativo.';

ALTER TABLE mc_depto ADD CONSTRAINT pk_mc_depto PRIMARY KEY ( cd_depto );

CREATE TABLE mc_end_cli (
    nr_cliente          NUMBER(10) NOT NULL,
    cd_logradouro_cli   NUMBER(10) NOT NULL,
    nr_end              NUMBER(8) NOT NULL,
    ds_complemento_end  VARCHAR2(80),
    dt_inicio           DATE,
    dt_termino          DATE,
    st_end              CHAR(1)
);

COMMENT ON COLUMN mc_end_cli.nr_cliente IS
    'Esta coluna irÃ¯Â¿Â½ receber o nÃ¯Â¿Â½mero do cliente e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_end_cli.cd_logradouro_cli IS
    'Esta coluna irÃ¯Â¿Â½ receber o cÃ¯Â¿Â½digo do logradouro  do cliente e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_end_cli.nr_end IS
    'NÃ¯Â¿Â½mero do EndereÃ¯Â¿Â½o do Cliente. O nÃ¯Â¿Â½mero da Rua/Localidade onde o cliente estÃ¯Â¿Â½ associado.';

COMMENT ON COLUMN mc_end_cli.ds_complemento_end IS
    'Esta coluna irÃ¯Â¿Â½ receber o complemento do endereÃ¯Â¿Â½o do cliente e seu conteÃ¯Â¿Â½do pode ser opcional.';

COMMENT ON COLUMN mc_end_cli.dt_inicio IS
    'Data de inÃ¯Â¿Â½cio do endereÃ¯Â¿Â½o associado ao cliente.';

COMMENT ON COLUMN mc_end_cli.dt_termino IS
    'Data de tÃ¯Â¿Â½rmino do endereÃ¯Â¿Â½o associado ao cliente.';

COMMENT ON COLUMN mc_end_cli.st_end IS
    'Status do endereÃ¯Â¿Â½o. (A)itvo ou (I)nativo.';

ALTER TABLE mc_end_cli ADD CONSTRAINT pk_mc_end_cli PRIMARY KEY ( nr_cliente,
                                                                  cd_logradouro_cli );

CREATE TABLE mc_end_func (
    cd_funcionario      NUMBER(10) NOT NULL,
    cd_logradouro       NUMBER(10) NOT NULL,
    nr_end              NUMBER(8) NOT NULL,
    ds_complemento_end  VARCHAR2(80),
    dt_inicio           DATE NOT NULL,
    dt_termino          DATE,
    st_end              CHAR(1) NOT NULL
);

COMMENT ON COLUMN mc_end_func.nr_end IS
    'NÃ¯Â¿Â½mero do EndereÃ¯Â¿Â½o do Cliente. O nÃ¯Â¿Â½mero da Rua/Localidade onde o cliente estÃ¯Â¿Â½ associado.';

COMMENT ON COLUMN mc_end_func.dt_inicio IS
    'Data de inÃ¯Â¿Â½cio do endereÃ¯Â¿Â½o associado ao cliente.';

COMMENT ON COLUMN mc_end_func.dt_termino IS
    'Data de tÃ¯Â¿Â½rmino do endereÃ¯Â¿Â½o associado ao cliente.';

ALTER TABLE mc_end_func ADD CONSTRAINT pk_mc_end_func_pk PRIMARY KEY ( cd_funcionario,
                                                                       cd_logradouro );

CREATE TABLE mc_estado (
    sg_estado  CHAR(2) NOT NULL,
    nm_estado  VARCHAR2(30) NOT NULL
);

COMMENT ON COLUMN mc_estado.sg_estado IS
    'Esta coluna ira receber a siga do Estado. Esse conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_estado.nm_estado IS
    'Esta coluna irÃ¯Â¿Â½ receber o nome do estado';

ALTER TABLE mc_estado ADD CONSTRAINT pk_mc_estado PRIMARY KEY ( sg_estado );

CREATE TABLE mc_funcionario (
    cd_funcionario     NUMBER(10) GENERATED ALWAYS AS IDENTITY NOT NULL,
    cd_depto           NUMBER(3) NOT NULL,
    cd_gerente         NUMBER(10),
    nm_funcionario     VARCHAR2(160),
    dt_nascimento      DATE NOT NULL,
    fl_sexo_biologico  CHAR(1),
    ds_genero          VARCHAR2(100),
    ds_cargo           VARCHAR2(80) NOT NULL,
    vl_salario         NUMBER(10, 2),
    ds_email           VARCHAR2(80),
    st_func            CHAR(1),
    dt_cadastramento   DATE,
    dt_desligamento    DATE
);

COMMENT ON COLUMN mc_funcionario.cd_funcionario IS
    'Esta coluna irÃ¯Â¿Â½ receber o codigo do funcionÃ¯Â¿Â½rio e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_funcionario.cd_depto IS
    'Esta coluna irÃ¯Â¿Â½ receber o codigo do departamento onde o funcionario trabalha  e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_funcionario.cd_gerente IS
    'Esta coluna irÃ¯Â¿Â½ receber o codigo do gestor do funcionario trabalha  e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ opcional.';

COMMENT ON COLUMN mc_funcionario.nm_funcionario IS
    'Esta coluna irÃ¯Â¿Â½ receber o nome do funcionÃ¯Â¿Â½rio e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_funcionario.dt_nascimento IS
    'Esta coluna irÃ¯Â¿Â½ receber a data de nascimento  do funcionÃ¯Â¿Â½rio e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_funcionario.fl_sexo_biologico IS
    'Esta coluna irÃ¯Â¿Â½ receber o sexo biolÃ¯Â¿Â½gico do funcionÃ¯Â¿Â½rio e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.Os valores permitidos aqui seriam: (F)eminino; (M)asculino ou (Hermafrodita)';

COMMENT ON COLUMN mc_funcionario.ds_genero IS
    'Esta coluna irÃ¯Â¿Â½ receber o genero atribuido ao funcionÃ¯Â¿Â½rio e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ opcional.';

COMMENT ON COLUMN mc_funcionario.ds_cargo IS
    'Esta coluna irÃ¯Â¿Â½ receber o cargo do funcionÃ¯Â¿Â½rio e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ opcional.';

COMMENT ON COLUMN mc_funcionario.vl_salario IS
    'Esta coluna irÃ¯Â¿Â½ receber o valor do salÃ¯Â¿Â½rio do funcionÃ¯Â¿Â½rio e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ opcional.';

COMMENT ON COLUMN mc_funcionario.ds_email IS
    'Esta coluna irÃ¯Â¿Â½ receber o email do funcionÃ¯Â¿Â½rio e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ opcional.';

COMMENT ON COLUMN mc_funcionario.st_func IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o stauts do funcionÃ¯Â¿Â½rio da Melhorees Compras. Os valores permitidos aqui sÃ¯Â¿Â½o: A(tivo) e I(nativo).';

COMMENT ON COLUMN mc_funcionario.dt_cadastramento IS
    'Data de cadastramento do Funcionario';

COMMENT ON COLUMN mc_funcionario.dt_desligamento IS
    'Data de desligamento  do Funcionario. Seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ opcional.';

ALTER TABLE mc_funcionario ADD CONSTRAINT pk_mc_funcionario PRIMARY KEY ( cd_funcionario );

CREATE TABLE mc_logradouro (
    cd_logradouro  NUMBER(10) GENERATED ALWAYS AS IDENTITY NOT NULL,
    cd_bairro      NUMBER(8) NOT NULL,
    nm_logradouro  VARCHAR2(160) NOT NULL,
    nr_cep         NUMBER(8)
);

COMMENT ON COLUMN mc_logradouro.cd_logradouro IS
    'Esta coluna irÃ¯Â¿Â½ receber o cÃ¯Â¿Â½digo do logradouro e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_logradouro.cd_bairro IS
    'Esta coluna irÃ¯Â¿Â½ receber o codigo do bairro e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_logradouro.nm_logradouro IS
    'Esta coluna irÃ¯Â¿Â½ receber o nome do logradouro e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_logradouro.nr_cep IS
    'Esta coluna irÃ¯Â¿Â½ receber o numero do CEP do Logradouro e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

ALTER TABLE mc_logradouro ADD CONSTRAINT pk_mc_logradouro PRIMARY KEY ( cd_logradouro );

CREATE TABLE mc_produto (
    cd_produto         NUMBER(10) GENERATED ALWAYS AS IDENTITY NOT NULL,
    cd_categoria       NUMBER NOT NULL,
    nr_cd_barras_prod  VARCHAR2(50),
    ds_produto         VARCHAR2(80) NOT NULL,
    vl_unitario        NUMBER(8, 2) NOT NULL,
    tp_embalagem       VARCHAR2(15),
    st_produto         CHAR(1),
    vl_perc_lucro      NUMBER(8, 2),
    ds_completa_prod   VARCHAR2(4000) NOT NULL
);

COMMENT ON COLUMN mc_produto.cd_produto IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a chave primÃ¯Â¿Â½ria da tabela de produtos da Melhorees Compras. A cada produto cadastrado serÃ¯Â¿Â½ acionada a Sequence  SQ_MC_PRODUTO que se encarregarÃ¯Â¿Â½ de gerar o prÃ¯Â¿Â½ximo nÃ¯Â¿Â½mero Ã¯Â¿Â½nico do produto.';

COMMENT ON COLUMN mc_produto.cd_categoria IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a chave primÃ¯Â¿Â½ria da tabela de categoria de produtos da Melhorees Compras. Cada categoria nova cadastrada  serÃ¯Â¿Â½ acionada a Sequence  SQ_MC_CATEGORIA que se encarregarÃ¯Â¿Â½ de gerar o prÃ¯Â¿Â½ximo nÃ¯Â¿Â½mero Ã¯Â¿Â½nico da categoria..';

COMMENT ON COLUMN mc_produto.nr_cd_barras_prod IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o nÃ¯Â¿Â½mero do codigo de barras  do produto. Seu conteÃ¯Â¿Â½do deve ser opcional.';

COMMENT ON COLUMN mc_produto.ds_produto IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a descriÃ¯Â¿Â½Ã¯Â¿Â½o principal do produto. Seu conteÃ¯Â¿Â½do deve ser  obrigatorio.';

COMMENT ON COLUMN mc_produto.vl_unitario IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o valor unitÃ¯Â¿Â½rio do produto. Seu conteÃ¯Â¿Â½do deve ser > 0 ';

COMMENT ON COLUMN mc_produto.tp_embalagem IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o tipo de embalagem do produto. Seu conteÃ¯Â¿Â½do pode ser opcional.';

COMMENT ON COLUMN mc_produto.st_produto IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o stauts do produto da Melhorees Compras. Os valores permitidos aqui sÃ¯Â¿Â½o: A(tivo) e I(nativo).';

COMMENT ON COLUMN mc_produto.vl_perc_lucro IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o percentual  do lucro mÃ¯Â¿Â½dio para cada produto. Seu conteÃ¯Â¿Â½do deve ser opcional.';

COMMENT ON COLUMN mc_produto.ds_completa_prod IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a descriÃ¯Â¿Â½Ã¯Â¿Â½o completa do produto. Seu conteÃ¯Â¿Â½do deve ser  obrigatorio.';

ALTER TABLE mc_produto ADD CONSTRAINT pk_mc_produto PRIMARY KEY ( cd_produto );

ALTER TABLE mc_produto
    ADD CONSTRAINT mc_produto_ck_st_prod CHECK ( st_produto IN (
        'A',
        'I'
    ) );

CREATE TABLE mc_sgv_produto_video (
    cd_produto          NUMBER(10) NOT NULL,
    nr_sequencia        NUMBER(3) NOT NULL,
    cd_categoria        NUMBER NOT NULL,
    vd_produto          BLOB,
    tp_video_prod       VARCHAR2(10),
    ds_path_video_prod  VARCHAR2(500),
    st_video_prod       CHAR(1)
);

COMMENT ON COLUMN mc_sgv_produto_video.cd_produto IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a chave primÃ¯Â¿Â½ria da tabela de produtos da Melhorees Compras. A cada produto cadastrado serÃ¯Â¿Â½ acionada a Sequence  SQ_MC_PRODUTO que se encarregarÃ¯Â¿Â½ de gerar o prÃ¯Â¿Â½ximo nÃ¯Â¿Â½mero Ã¯Â¿Â½nico do produto.';

COMMENT ON COLUMN mc_sgv_produto_video.nr_sequencia IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a sequencia do vÃ¯Â¿Â½deo a partir do codigo do produto. Sempre o primeiro vÃ¯Â¿Â½deo de determinado  produto deve iniciar com o nÃ¯Â¿Â½mero 1. Seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_sgv_produto_video.cd_categoria IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a chave primÃ¯Â¿Â½ria da tabela de categoria de produtos da Melhorees Compras. Cada categoria nova cadastrada  serÃ¯Â¿Â½ acionada a Sequence  SQ_MC_CATEGORIA que se encarregarÃ¯Â¿Â½ de gerar o prÃ¯Â¿Â½ximo nÃ¯Â¿Â½mero Ã¯Â¿Â½nico da categoria..';

COMMENT ON COLUMN mc_sgv_produto_video.vd_produto IS
    'Essa coluna irÃ¯Â¿Â½ armazenar oo vÃ¯Â¿Â½deo do produto no formato que melhor lhe  convier.  Para utilizar essa coluna tenha acesso a documentaÃ¯Â¿Â½Ã¯Â¿Â½o oficial da Oracle. Seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ opcional.';

COMMENT ON COLUMN mc_sgv_produto_video.tp_video_prod IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o tipo do  vÃ¯Â¿Â½deo do produto. Seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ opcional.';

COMMENT ON COLUMN mc_sgv_produto_video.ds_path_video_prod IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o caminho de acesso (link) contendo o  vÃ¯Â¿Â½deo do produto. Seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ opcional.';

COMMENT ON COLUMN mc_sgv_produto_video.st_video_prod IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o stauts do vÃ¯Â¿Â½deo do produto da Melhorees Compras. Os valores permitidos aqui sÃ¯Â¿Â½o: A(tivo) e I(nativo).';

ALTER TABLE mc_sgv_produto_video ADD CONSTRAINT pk_mc_produto_imagem PRIMARY KEY ( nr_sequencia,
                                                                                   cd_produto );

CREATE TABLE mc_sgv_sac (
    nr_sac                    NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL,
    nr_cliente                NUMBER(10) NOT NULL,
    cd_produto                NUMBER(10),
    cd_funcionario            NUMBER(10),
    ds_detalhada_sac          CLOB,
    dt_abertura_sac           DATE,
    hr_abertura_sac           NUMBER(2),
    dt_atendimento            DATE,
    hr_atendimento_sac        NUMBER(2),
    nr_tempo_total_sac        NUMBER(10),
    ds_detalhada_retorno_sac  CLOB,
    tp_sac                    CHAR(1) NOT NULL,
    st_sac                    CHAR(1),
    nr_indice_satisfacao      NUMBER(2)
);

COMMENT ON COLUMN mc_sgv_sac.nr_sac IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a chave primÃ¯Â¿Â½ria da tabela de SAC de vÃ¯Â¿Â½deo  da Melhorees Compras. A cada SAC cadastrado pelo cliente serÃ¯Â¿Â½ acionada a Sequence  SQ_MC_SGV_SAC que se encarregarÃ¯Â¿Â½ de gerar o prÃ¯Â¿Â½ximo nÃ¯Â¿Â½mero Ã¯Â¿Â½nico do chamado SAC feito pelo Cliente.';

COMMENT ON COLUMN mc_sgv_sac.nr_cliente IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o cÃ¯Â¿Â½digo Ã¯Â¿Â½nico do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio, Ã¯Â¿Â½nico e preenhcido a  parrtir da tabela NC_CLIENTE. ';

COMMENT ON COLUMN mc_sgv_sac.cd_produto IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a chave primÃ¯Â¿Â½ria da tabela de produtos da Melhorees Compras. A cada produto cadastrado serÃ¯Â¿Â½ acionada a Sequence  SQ_MC_PRODUTO que se encarregarÃ¯Â¿Â½ de gerar o prÃ¯Â¿Â½ximo nÃ¯Â¿Â½mero Ã¯Â¿Â½nico do produto.';

COMMENT ON COLUMN mc_sgv_sac.cd_funcionario IS
    'Esta coluna irÃ¯Â¿Â½ receber o codigo do funcionÃ¯Â¿Â½rio e seu conteÃ¯Â¿Â½do Ã¯Â¿Â½ obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_sgv_sac.ds_detalhada_sac IS
    'Essa coluna  irÃ¯Â¿Â½  receber a descriÃ¯Â¿Â½Ã¯Â¿Â½o completa do SAC aberto pelo cliente. Seu conteudo deve ser obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_sgv_sac.dt_abertura_sac IS
    'Essa coluna  irÃ¯Â¿Â½  receber a data e horÃ¯Â¿Â½rio do SAC aberto pelo cliente. Seu conteudo deve ser obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_sgv_sac.hr_abertura_sac IS
    'Essa coluna  irÃ¯Â¿Â½  receber a hora do SAC aberto pelo cliente. Seu conteudo deve ser obrigatÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_sgv_sac.dt_atendimento IS
    'Essa coluna  irÃ¯Â¿Â½  receber a data e horÃ¯Â¿Â½rio do atendmiento SAC feita pelo funcionÃ¯Â¿Â½rio da Melhores Compras. Seu conteudo deve ser opcional..';

COMMENT ON COLUMN mc_sgv_sac.hr_atendimento_sac IS
    'Essa coluna  irÃ¯Â¿Â½  receber a hora do SAC do atendimento  feito  pelo funcionario da Melhores Compras. Seu conteudo deve ser opcional.';

COMMENT ON COLUMN mc_sgv_sac.nr_tempo_total_sac IS
    'Essa coluna  irÃ¯Â¿Â½  receber o tempo total em horas  (HH24) computado desde a abertura atÃ¯Â¿Â½ a conclusÃ¯Â¿Â½o dele. A unidade de medida Ã¯Â¿Â½ horas, ou seja, em quantas horas o chamado foi concluÃ¯Â¿Â½do desde a sua abertura.';

COMMENT ON COLUMN mc_sgv_sac.ds_detalhada_retorno_sac IS
    'Essa coluna  irÃ¯Â¿Â½  receber a descriÃ¯Â¿Â½Ã¯Â¿Â½o detalhada do retorno feito pelo funcionÃ¯Â¿Â½rio a partir da solicitaÃ¯Â¿Â½Ã¯Â¿Â½o do cliente. Seu conteÃ¯Â¿Â½do deve ser opcional e preenchido pelo funcionÃ¯Â¿Â½rio.';

COMMENT ON COLUMN mc_sgv_sac.tp_sac IS
    'Essa coluna  irÃ¯Â¿Â½  receber o TIPO  do chamado SAC aberto pelo cliente.  Seu conteÃ¯Â¿Â½do deve ser  obrigatÃ¯Â¿Â½rio e os possÃ¯Â¿Â½veis valores sÃ¯Â¿Â½o: (S)ugestÃ¯Â¿Â½o; (D)Ã¯Â¿Â½vida ou  (E)logio.';

COMMENT ON COLUMN mc_sgv_sac.st_sac IS
    'Essa coluna  irÃ¯Â¿Â½  receber o STATUS  do chamado SAC aberto pelo cliente.  Seu conteÃ¯Â¿Â½do deve ser  obrigatÃ¯Â¿Â½rio e os possÃ¯Â¿Â½veis valores sÃ¯Â¿Â½o: (E)m Atendimento; (C)ancelado; (F)echado ou (X)Fechado com InsatisfaÃ¯Â¿Â½Ã¯Â¿Â½o do cliente.';

COMMENT ON COLUMN mc_sgv_sac.nr_indice_satisfacao IS
    'Essa coluna  irÃ¯Â¿Â½  receber o Ã¯Â¿Â½ndice de satisfaÃ¯Â¿Â½Ã¯Â¿Â½o, , computado como um valor simples de 1 a 10, onde 1 refere-se ao cliente menos satisfeito e 10 o cliente mais satisfeito. Esse Ã¯Â¿Â½ndice de satisfaÃ¯Â¿Â½Ã¯Â¿Â½o Ã¯Â¿Â½ opcional e informado pelo cliente ao final do atendimento.';

ALTER TABLE mc_sgv_sac ADD CONSTRAINT pk_mc_sgv_sac PRIMARY KEY ( nr_sac );

CREATE TABLE mc_sgv_visualizacao_video (
    cd_visualizacao_video  NUMBER(10) GENERATED ALWAYS AS IDENTITY NOT NULL,
    nr_cliente             NUMBER(10),
    cd_produto             NUMBER(10) NOT NULL,
    nr_sequencia           NUMBER(3) NOT NULL,
    dt_visualizacao        DATE NOT NULL,
    nr_hora_visualizacao   NUMBER(2) NOT NULL,
    nr_minuto_video        NUMBER(2),
    nr_segundo_video       NUMBER(2)
);

COMMENT ON COLUMN mc_sgv_visualizacao_video.cd_visualizacao_video IS
    'Essa coluna irÃ¯Â¿Â½ armazenar a chave primÃ¯Â¿Â½ria da tabela de visualizaÃ¯Â¿Â½Ã¯Â¿Â½o do vÃ¯Â¿Â½deo, onde a cada click que o usuario logado ou anÃ¯Â¿Â½nimo realizar, serÃ¯Â¿Â½ anotado o acesso realizado.';

COMMENT ON COLUMN mc_sgv_visualizacao_video.nr_cliente IS
    'Essa coluna irÃ¯Â¿Â½ armazenar o cÃ¯Â¿Â½digo Ã¯Â¿Â½nico do cliente na plataforma ecommerce da Melhores Compras.Seu conteÃ¯Â¿Â½do deve ser obrigatÃ¯Â¿Â½rio, Ã¯Â¿Â½nico e preenhcido a  parrtir da chamada de sequence  SQ_MC_CLIENTE, a qual terÃ¯Â¿Â½ sempre o nÃ¯Â¿Â½mero disponivel para uso.';

COMMENT ON COLUMN mc_sgv_visualizacao_video.dt_visualizacao IS
    'Essa  coluna  irÃ¯Â¿Â½  receber a data da visualizaÃ¯Â¿Â½Ã¯Â¿Â½o feita pelo  usuÃ¯Â¿Â½rio no formato dd/mm/yyyy. Essa coluna Ã¯Â¿Â½ obrigatÃ¯Â¿Â½ria.';

COMMENT ON COLUMN mc_sgv_visualizacao_video.nr_hora_visualizacao IS
    'Essa  coluna  irÃ¯Â¿Â½  receber o horÃ¯Â¿Â½rio no formato HH24 da visualizaÃ¯Â¿Â½Ã¯Â¿Â½o feita pelo  usuÃ¯Â¿Â½rio. Essa coluna Ã¯Â¿Â½ obrigatÃ¯Â¿Â½ria.';

COMMENT ON COLUMN mc_sgv_visualizacao_video.nr_minuto_video IS
    'Essa  coluna  irÃ¯Â¿Â½  receber o horÃ¯Â¿Â½rio do minuto do vÃ¯Â¿Â½deo quando foi feita a visualizaÃ¯Â¿Â½Ã¯Â¿Â½o pelo  usuÃ¯Â¿Â½rio. Essa coluna Ã¯Â¿Â½ obrigatÃ¯Â¿Â½ria e os valores possÃ¯Â¿Â½veis estÃ¯Â¿Â½o entre 00 e 59, representando os minutos.';

COMMENT ON COLUMN mc_sgv_visualizacao_video.nr_segundo_video IS
    'Essa  coluna  irÃ¯Â¿Â½  receber o horÃ¯Â¿Â½rio dos segundos do vÃ¯Â¿Â½deo quando foi feita a visualizaÃ¯Â¿Â½Ã¯Â¿Â½o pelo  usuÃ¯Â¿Â½rio. Essa coluna Ã¯Â¿Â½ obrigatÃ¯Â¿Â½ria e os valores possÃ¯Â¿Â½veis estÃ¯Â¿Â½o entre 00 e 59, representando os minutos.';

ALTER TABLE mc_sgv_visualizacao_video ADD CONSTRAINT pk_mc_sgv_visualizacao_video PRIMARY KEY ( cd_visualizacao_video );

ALTER TABLE mc_bairro
    ADD CONSTRAINT fk_mc_bairro_cidade FOREIGN KEY ( cd_cidade )
        REFERENCES mc_cidade ( cd_cidade );

ALTER TABLE mc_sgv_produto_video
    ADD CONSTRAINT fk_mc_categoria_video FOREIGN KEY ( cd_categoria )
        REFERENCES mc_categoria_prod ( cd_categoria );

ALTER TABLE mc_cidade
    ADD CONSTRAINT fk_mc_cidade_estado FOREIGN KEY ( sg_estado )
        REFERENCES mc_estado ( sg_estado );

ALTER TABLE mc_end_cli
    ADD CONSTRAINT fk_mc_cliente_end FOREIGN KEY ( nr_cliente )
        REFERENCES mc_cliente ( nr_cliente );

ALTER TABLE mc_cli_fisica
    ADD CONSTRAINT fk_mc_cliente_fisica FOREIGN KEY ( nr_cliente )
        REFERENCES mc_cliente ( nr_cliente );

ALTER TABLE mc_cli_juridica
    ADD CONSTRAINT fk_mc_cliente_juridica FOREIGN KEY ( nr_cliente )
        REFERENCES mc_cliente ( nr_cliente );

ALTER TABLE mc_sgv_sac
    ADD CONSTRAINT fk_mc_cliente_sgv_sac FOREIGN KEY ( nr_cliente )
        REFERENCES mc_cliente ( nr_cliente );

ALTER TABLE mc_sgv_visualizacao_video
    ADD CONSTRAINT fk_mc_cliente_visualiz_video FOREIGN KEY ( nr_cliente )
        REFERENCES mc_cliente ( nr_cliente );

ALTER TABLE mc_funcionario
    ADD CONSTRAINT fk_mc_depto_func FOREIGN KEY ( cd_depto )
        REFERENCES mc_depto ( cd_depto );

ALTER TABLE mc_end_func
    ADD CONSTRAINT fk_mc_end_func FOREIGN KEY ( cd_funcionario )
        REFERENCES mc_funcionario ( cd_funcionario );

ALTER TABLE mc_end_func
    ADD CONSTRAINT fk_mc_end_func_logradouro FOREIGN KEY ( cd_logradouro )
        REFERENCES mc_logradouro ( cd_logradouro );

ALTER TABLE mc_funcionario
    ADD CONSTRAINT fk_mc_func_superior FOREIGN KEY ( cd_gerente )
        REFERENCES mc_funcionario ( cd_funcionario );

ALTER TABLE mc_sgv_sac
    ADD CONSTRAINT fk_mc_funcionario_sgv_sac FOREIGN KEY ( cd_funcionario )
        REFERENCES mc_funcionario ( cd_funcionario );

ALTER TABLE mc_logradouro
    ADD CONSTRAINT fk_mc_logradouro_bairro FOREIGN KEY ( cd_bairro )
        REFERENCES mc_bairro ( cd_bairro );

ALTER TABLE mc_end_cli
    ADD CONSTRAINT fk_mc_logradouro_end FOREIGN KEY ( cd_logradouro_cli )
        REFERENCES mc_logradouro ( cd_logradouro );

ALTER TABLE mc_sgv_produto_video
    ADD CONSTRAINT fk_mc_produto_imagem FOREIGN KEY ( cd_produto )
        REFERENCES mc_produto ( cd_produto );

ALTER TABLE mc_sgv_sac
    ADD CONSTRAINT fk_mc_produto_sgv_sac FOREIGN KEY ( cd_produto )
        REFERENCES mc_produto ( cd_produto );

ALTER TABLE mc_sgv_visualizacao_video
    ADD CONSTRAINT fk_mc_sgv_prod_video_visual FOREIGN KEY ( nr_sequencia,
                                                             cd_produto )
        REFERENCES mc_sgv_produto_video ( nr_sequencia,
                                          cd_produto );

ALTER TABLE mc_produto
    ADD CONSTRAINT fk_mc_sub_categoria_prod FOREIGN KEY ( cd_categoria )
        REFERENCES mc_categoria_prod ( cd_categoria );

CREATE OR REPLACE TRIGGER arc_fk_arco_cli__mc_cli_fisica BEFORE
    INSERT OR UPDATE OF nr_cliente ON mc_cli_fisica
    FOR EACH ROW
DECLARE
    d NUMBER(10);
BEGIN
    SELECT
        a.nr_cliente
    INTO d
    FROM
        mc_cliente a
    WHERE
        a.nr_cliente = :new.nr_cliente;

    IF ( d IS NULL OR d <> :new.nr_cliente ) THEN
        raise_application_error(-20223, 'FK FK_MC_CLIENTE_FISICA in Table MC_CLI_FISICA violates Arc constraint on Table MC_CLIENTE - discriminator column NR_CLIENTE doesn''t have value NR_CLIENTE');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fk_arco_cl_mc_cli_juridica BEFORE
    INSERT OR UPDATE OF nr_cliente ON mc_cli_juridica
    FOR EACH ROW
DECLARE
    d NUMBER(10);
BEGIN
    SELECT
        a.nr_cliente
    INTO d
    FROM
        mc_cliente a
    WHERE
        a.nr_cliente = :new.nr_cliente;

    IF ( d IS NULL OR d <> :new.nr_cliente ) THEN
        raise_application_error(-20223, 'FK FK_MC_CLIENTE_JURIDICA in Table MC_CLI_JURIDICA violates Arc constraint on Table MC_CLIENTE - discriminator column NR_CLIENTE doesn''t have value NR_CLIENTE');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/