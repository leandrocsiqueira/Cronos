/*****************************************************************************/
/*                              Tabela usuario                               */
/*****************************************************************************/
CREATE TABLE "usuarios" (
  "id"      CHAR(36) NOT NULL CONSTRAINT PK_USUARIOS PRIMARY KEY,
  "nome"    VARCHAR(50) NOT NULL,
  "login"   VARCHAR(20) NOT NULL,
  "senha"   VARCHAR(20) NOT NULL,
  "status"  CHAR(1) NOT NULL
);
/*****************************************************************************/
/*                                Comentários                                */
/*****************************************************************************/
COMMENT ON TABLE "usuarios"
  IS 'A tabela "usuario" tem o propósito de armazenar informações de
  autenticação e dados básicos dos usuários do sistema Cronos.';
COMMENT ON COLUMN "usuarios"."id"
  IS 'Identificador único do usuário';
COMMENT ON COLUMN "usuarios"."nome"
  IS 'Nome completo do usuário';
COMMENT ON COLUMN "usuarios"."login"
  IS 'Nome de usuário (login) para autenticação';
COMMENT ON COLUMN "usuarios"."senha"
  IS 'Senha do usuário';
COMMENT ON COLUMN "usuarios"."status"
  IS 'Status do usuário (A para ativo, I para inativo)';
COMMENT ON INDEX "PK_USUARIOS"
  IS 'Chave primária da tabela ''usuarios''.';

/*****************************************************************************/
/*                                   Tabela caixa                            */
/*****************************************************************************/
CREATE TABLE "caixas" (
  "id"                CHAR(36) NOT NULL CONSTRAINT PK_CAIXAS PRIMARY KEY,
  "numero_documento"  VARCHAR(20) NOT NULL,
  "descricao"         VARCHAR(200),
  "valor"             DECIMAL(18,2) NOT NULL,
  "tipo_transacao"    CHAR(10) NOT NULL,
  "data_cadastro"     DATE NOT NULL
);
/*****************************************************************************/
/*                                Comentários                                */
/*****************************************************************************/
COMMENT ON TABLE "caixas"
  IS 'A tabela ''caixas'' tem o objetivo de armazenar informações sobre
  transações ou documentos financeiros, como registros de movimentação
  de dinheiro, depósitos, saques e outros.';
COMMENT ON COLUMN "caixas"."id"
  IS 'Identificador único da transação';
COMMENT ON COLUMN "caixas"."numero_documento"
  IS 'Número do documento associado à transação (recibo, nota fiscal, etc.)';
COMMENT ON COLUMN "caixas"."descricao"
  IS 'Descrição detalhada sobre a transação ou o documento';
COMMENT ON COLUMN "caixas"."valor"
  IS 'Valor monetário da transação ou documento (ex: 1500.00)';
COMMENT ON COLUMN "caixas"."tipo_transacao"
  IS 'Tipo da transação (D para despesa, R para receita)';
COMMENT ON COLUMN "caixas"."data_cadastro"
  IS 'Data em que a transação foi registrada';
COMMENT ON INDEX "PK_CAIXAS"
  IS 'Chave primária da tabela ''caixas''.';

/*****************************************************************************/
/*                           Tabela contas_pagar                             */
/*****************************************************************************/
CREATE TABLE "contas_pagar"
(
    "id" CHAR(36) NOT NULL
	  CONSTRAINT "PK_CONTAS_PAGAR" PRIMARY KEY,
    "codigo_documento" VARCHAR(20) NOT NULL,
    "descricao" VARCHAR(200),
    "parcela" INTEGER NOT NULL,
    "valor_parcela" DECIMAL(18,2) NOT NULL,
    "valor_compra" DECIMAL(18,2) NOT NULL,
    "valor_abatimento" DECIMAL(18,2) NOT NULL,
    "data_compra" DATE NOT NULL,
    "data_cadastro"  DATE NOT NULL,
    "data_vencimento" DATE NOT NULL,
    "data_pagamento" DATE,
    "situacao" CHAR(1) NOT NULL
);
/*****************************************************************************/
/*                                Comentários                                */
/*****************************************************************************/
COMMENT ON TABLE "contas_pagar"
  IS  'A tabela "contas_pagar" tem o objetivo de armazenar informações
  relacionadas às obrigações financeiras a serem quitadas';
COMMENT ON COLUMN "contas_pagar"."id"
  IS 'Identificador único da conta a pagar';
COMMENT ON COLUMN "contas_pagar"."codigo_documento"
  IS 'Código do documento associado à conta (ex: nota fiscal, recibo)';
COMMENT ON COLUMN "contas_pagar"."descricao"
  IS 'Descrição detalhada da conta ou do serviço adquirido';
COMMENT ON COLUMN "contas_pagar"."parcela"
  IS 'Número da parcela, caso a conta seja parcelada';
COMMENT ON COLUMN "contas_pagar"."valor_parcela"
  IS 'Valor de cada parcela (se a conta for parcelada)';
COMMENT ON COLUMN "contas_pagar"."valor_compra"
  IS 'Valor total da compra ou do serviço adquirido';
COMMENT ON COLUMN "contas_pagar"."valor_abatimento"
  IS 'Valor de abatimento ou desconto aplicado à compra (se houver)';
COMMENT ON COLUMN "contas_pagar"."data_compra"
  IS 'Data em que a compra foi realizada';
COMMENT ON COLUMN "contas_pagar"."data_cadastro"
  IS 'Data em que a conta foi cadastrada no sistema';
COMMENT ON COLUMN "contas_pagar"."data_vencimento"
  IS 'Data de vencimento da conta a pagar';
COMMENT ON COLUMN "contas_pagar"."data_pagamento"
  IS 'Data em que a conta foi paga (caso já tenha sido quitada)';
COMMENT ON COLUMN "contas_pagar"."situacao"
  IS 'Status da conta, onde (P) significa paga e (A) significa a pagar';
COMMENT ON INDEX "PK_CONTAS_PAGAR"
  IS 'Chave primária da tabela ''contas_pagar''.';

/*****************************************************************************/
/*                           Tabela detalhamento_contas_pagar                */
/*****************************************************************************/
CREATE TABLE "detalhamento_contas_pagar"
(
    "id" CHAR(36) NOT NULL
	  CONSTRAINT "PK_DETALHAMENTO_CONTAS_PAGAR" PRIMARY KEY,
    "id_conta_pagar" CHAR(36) NOT NULL,
    "observacao" VARCHAR(200) NOT NULL,
    "valor_observacao" DECIMAL(18,2) NOT NULL,
    "data_registro" DATE NOT NULL,
    "usuario_responsavel" VARCHAR(50) NOT NULL
);
/*****************************************************************************/
/*                                Comentários                                */
/*****************************************************************************/
COMMENT ON TABLE "detalhamento_contas_pagar"
  IS 'A tabela "detalhamento_contas_pagar" tem o objetivo de armazenar detalhes
  adicionais sobre as contas a pagar, como observações específicas,
  valores relacionados e o histórico de alterações.';
COMMENT ON COLUMN "detalhamento_contas_pagar"."id"
  IS 'Identificador único do detalhamento da conta a pagar.';
COMMENT ON COLUMN "detalhamento_contas_pagar"."id_conta_pagar"
  IS 'Identificador da conta a pagar associada ao detalhamento.';
COMMENT ON COLUMN "detalhamento_contas_pagar"."observacao"
  IS 'Descrição ou observação sobre o detalhamento da conta a pagar. Pode
  incluir informações adicionais sobre o pagamento ou ajustes relacionados à
  transação.';
COMMENT ON COLUMN "detalhamento_contas_pagar"."valor_observacao"
  IS 'Valor associado à observação, como abatimentos ou acréscimos no valor
  original da conta a pagar.';
COMMENT ON COLUMN "detalhamento_contas_pagar"."data_registro"
  IS 'Data em que o detalhamento foi registrado no sistema.';
COMMENT ON COLUMN "detalhamento_contas_pagar"."usuario_responsavel"
  IS 'Nome ou identificação do usuário responsável pelo registro do
  detalhamento da conta a pagar.';
COMMENT ON INDEX "PK_DETALHAMENTO_CONTAS_PAGAR"
  IS 'Chave primária da tabela ''detalhamento_contas_pagar''.';

/*****************************************************************************/
/*                           Tabela contas_receber                           */
/*****************************************************************************/
CREATE TABLE "contas_receber"
(
    "id" CHAR(36) NOT NULL CONSTRAINT "PK_CONTAS_RECEBER" PRIMARY KEY,
    "codigo_documento" VARCHAR(20) NOT NULL,
    "descricao" VARCHAR(200),
    "parcela" INTEGER NOT NULL,
    "valor_parcela" DECIMAL(18,2) NOT NULL,
    "valor_venda" DECIMAL(18,2) NOT NULL,
    "valor_abatimento" DECIMAL(18,2) NOT NULL,
    "data_compra" DATE NOT NULL,
    "data_cadastro" DATE NOT NULL,
    "data_vencimento" DATE NOT NULL,
    "data_recebimento" DATE,
    "situacao" CHAR(1) NOT NULL
);
/*****************************************************************************/
/*                                Comentários                                */
/*****************************************************************************/
COMMENT ON TABLE "contas_receber"
  IS  'A tabela "contas_receber" tem o objetivo de armazenar informações
  relacionadas às transações de vendas, parcelamentos, valores a receber e a
  situação de cada conta.';
COMMENT ON COLUMN "contas_receber"."id"
  IS 'Identificador único da conta a receber';
COMMENT ON COLUMN "contas_receber"."codigo_documento"
  IS 'Código do documento associado à conta a receber (ex: nota fiscal,
  boleto, etc.)';
COMMENT ON COLUMN "contas_receber"."descricao"
  IS 'Descrição sobre a conta a receber (ex: venda de produto,
  prestação de serviço, etc.)';
COMMENT ON COLUMN "contas_receber"."parcela" IS
	'Número da parcela, caso a conta seja parcelada';
COMMENT ON COLUMN "contas_receber"."valor_parcela" IS
	'Valor de cada parcela, caso a conta seja parcelada';
COMMENT ON COLUMN "contas_receber"."valor_venda" IS
	'Valor total da venda ou serviço contratado';
COMMENT ON COLUMN "contas_receber"."valor_abatimento" IS
	'Valor de abatimento ou desconto aplicado à conta';
COMMENT ON COLUMN "contas_receber"."data_compra" IS
	'Data em que a compra ou serviço foi realizado';
COMMENT ON COLUMN "contas_receber"."data_cadastro" IS
	'Data em que a conta foi cadastrada no sistema';
COMMENT ON COLUMN "contas_receber"."data_vencimento" IS
	'Data de vencimento da conta a receber';
COMMENT ON COLUMN "contas_receber"."data_recebimento" IS
	'Data em que a conta foi recebida ou paga';
COMMENT ON COLUMN "contas_receber"."situacao" IS
	'Situação da conta: (A)tiva (não paga) ou (P)aga';
COMMENT ON INDEX "PK_CONTAS_RECEBER"
  IS 'Chave primária da tabela ''contas_receber''.';

/*****************************************************************************/
/*                           Tabela detalhamento_contas_receber              */
/*****************************************************************************/
CREATE TABLE "detalhamento_contas_receber"
(
    "id" CHAR(36) NOT NULL
	  CONSTRAINT "PK_DETALHAMENTO_CONTAS_RECEBER" PRIMARY KEY ,
    "id_conta_receber" CHAR(36) NOT NULL,
    "observacao" VARCHAR(200) NOT NULL,
    "valor_observacao" DECIMAL(18,2) NOT NULL,
    "data_registro" DATE NOT NULL,
    "usuario_responsavel" VARCHAR(50) NOT NULL
);
/*****************************************************************************/
/*                                Comentários                                */
/*****************************************************************************/
COMMENT ON TABLE "detalhamento_contas_receber"
  IS 'A tabela "detalhamento_contas_receber" armazena informações adicionais
  sobre as contas a receber, incluindo observações, valores relacionados e o
  histórico de registros realizados pelos usuários responsáveis.';
COMMENT ON COLUMN "detalhamento_contas_receber"."id"
  IS 'Identificador único do detalhamento da conta a receber.';
COMMENT ON COLUMN "detalhamento_contas_receber"."id_conta_receber"
  IS 'Identificador da conta a pagar associada ao detalhamento.';
COMMENT ON COLUMN "detalhamento_contas_receber"."observacao"
  IS 'Descrição ou observação sobre o detalhamento da conta a receber,
  como ajustes, justificativas ou informações adicionais sobre a transação.';
COMMENT ON COLUMN "detalhamento_contas_receber"."valor_observacao"
  IS 'Valor relacionado à observação, como abatimentos, acréscimos ou ajustes
  no valor original da conta a receber.';
COMMENT ON COLUMN "detalhamento_contas_receber"."data_registro"
  IS 'Data em que o detalhamento foi registrado no sistema,
  para controle de histórico.';
COMMENT ON COLUMN "detalhamento_contas_receber"."usuario_responsavel"
  IS 'Nome ou identificação do usuário responsável pelo registro do
  detalhamento da conta a receber.';
COMMENT ON INDEX "PK_DETALHAMENTO_CONTAS_RECEBER"
  IS 'Chave primária da tabela ''detalhamento_contas_receber''.';