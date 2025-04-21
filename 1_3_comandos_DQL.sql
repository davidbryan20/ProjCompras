--a) Categorias e seus produtos (incluindo categorias sem produtos)
 
SELECT
 
    cat.CD_CATEGORIA AS codigo_categoria,
 
    cat.DS_CATEGORIA AS nome_categoria,
 
    prod.CD_PRODUTO AS codigo_produto,
 
    prod.DS_COMPLETA_PROD AS descricao_produto,
 
    prod.VL_UNITARIO,
 
    prod.TP_EMBALAGEM,
 
    prod.VL_PERC_LUCRO
 
FROM
 
    MC_CATEGORIA_PROD cat
 
LEFT JOIN MC_PRODUTO prod ON cat.CD_CATEGORIA = prod.CD_CATEGORIA
 
ORDER BY
 
    cat.DS_CATEGORIA ASC,
 
    prod.DS_PRODUTO ASC;
 
--b) Clientes pessoas fÃ­sicas com dados formatados
 
SELECT
    cli.nr_cliente,
    cli.nm_cliente,
    cli.ds_email,
    cli.nr_telefone,
    cli.nm_login,
    TO_CHAR(fis.dt_nascimento, 'DD-MM-YYYY') AS data_nascimento,
    TO_CHAR(fis.dt_nascimento, 'DAY', 'NLS_DATE_LANGUAGE=PORTUGUESE') AS dia_da_semana,
    TRUNC(MONTHS_BETWEEN(SYSDATE, fis.dt_nascimento) / 12) AS anos_de_vida,
    fis.fl_sexo_biologico,
    fis.nr_cpf
FROM
    mc_cliente cli
JOIN
    mc_cli_fisica fis ON cli.nr_cliente = fis.nr_cliente;
 
 
--c) VisualizaÃ§Ãµes de vÃ­deos dos produtos (mais recentes primeiro)
 
SELECT
    p.cd_produto,
    p.ds_produto,
    v.dt_visualizacao,
    TO_CHAR(TO_DATE(v.nr_hora_visualizacao, 'HH24'), 'HH24') || ':' ||
    LPAD(v.nr_minuto_video, 2, '0') || ':' ||
    LPAD(v.nr_segundo_video, 2, '0') AS hora_visualizacao
FROM
    mc_sgv_visualizacao_video v
JOIN
    mc_produto p ON v.cd_produto = p.cd_produto
ORDER BY
    v.dt_visualizacao DESC,
    v.nr_hora_visualizacao DESC,
    v.nr_minuto_video DESC,
    v.nr_segundo_video DESC;
 