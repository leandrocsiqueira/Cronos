CREATE TABLE "Caixas" 
(
    "cxId"               CHAR(36) 	 		NOT NULL 	CONSTRAINT "PK_Caixas" 					PRIMARY KEY,
    "cxNumeroDocumento"  VARCHAR(20) 		NOT NULL,
    "cxDescricao"        VARCHAR(200),
    "cxValor"            DECIMAL(18,2) 		NOT NULL,
    "cxTipo"             CHAR(1) 			NOT NULL,
    "cxDataCadastro"     DATE 				NOT NULL
);

CREATE TABLE "ContasPagar" 
(
    "cpId"               	CHAR(36) 		NOT NULL    CONSTRAINT "PK_ContasPagar" 			PRIMARY KEY,
    "cpNumDocumento"     	VARCHAR(20) 	NOT NULL,
    "cpDescricao"        	VARCHAR(200),
    "cpParcela"          	INTEGER 		NOT NULL,
    "cpValorParcela"     	DECIMAL(18,2) 	NOT NULL,
    "cpValorCompra"      	DECIMAL(18,2) 	NOT NULL,
    "cpValorAbatimento"  	DECIMAL(18,2) 	NOT NULL,
    "cpDataCompra"       	DATE 			NOT NULL,
    "cpDataCadastro"     	DATE 			NOT NULL,
    "cpDataVencimento"   	DATE 			NOT NULL,
    "cpDataPagamento"    	DATE,
    "cpStatus"           	CHAR(1) 		NOT NULL
);

CREATE TABLE "DetalhesContasPagar" 
(
    "dcpId"             	CHAR(36) 		NOT NULL 	CONSTRAINT "PK_DetalhesContasPagar" 	PRIMARY KEY,
    "dcpIdContasPagar"  	CHAR(36) 		NOT NULL,
    "dcpDetalhes"       	VARCHAR(200) 	NOT NULL,
    "dcpValor"          	DECIMAL(18,2) 	NOT NULL,
    "dcpData"           	DATE 			NOT NULL,
    "dcpUsuario"        	VARCHAR(50) 	NOT NULL,
	
	CONSTRAINT "FK_DetalhesContasPagar" 
		FOREIGN KEY ("dcpIdContasPagar") 
		REFERENCES "ContasPagar"("cpId")
);

CREATE TABLE "ContasReceber" 
(
    "crId"               	CHAR(36) 		NOT NULL 	CONSTRAINT "PK_ContasReceber" 			PRIMARY KEY,
    "crNumDocumento"     	VARCHAR(20) 	NOT NULL,
    "crDescricao"        	VARCHAR(200),
    "crParcela"          	INTEGER 		NOT NULL,
    "crValorParcela"     	DECIMAL(18,2) 	NOT NULL,
    "crValorVenda"       	DECIMAL(18,2) 	NOT NULL,
    "crValorAbatimento"  	DECIMAL(18,2) 	NOT NULL,
    "crDataCompra"       	DATE 			NOT NULL,
    "crDataCadastro"     	DATE 			NOT NULL,
    "crDataVencimento"   	DATE 			NOT NULL,
    "crDataRecebimento"  	DATE,
    "crStatus"           	CHAR(1) 		NOT NULL
);

CREATE TABLE "DetalhesContasReceber" 
(
    "dcrId"               	CHAR(36) 		NOT NULL 	CONSTRAINT "PK_DetalhesContasReceber" 	PRIMARY KEY ,
    "dcrIdContasReceber"  	CHAR(36) 		NOT NULL,
    "dcrDetalhes"         	VARCHAR(200) 	NOT NULL,
    "dcrValor"            	DECIMAL(18,2) 	NOT NULL,
    "dcrData"             	DATE 			NOT NULL,
    "dcrUsuario"          	VARCHAR(50) 	NOT NULL,
	CONSTRAINT "FK_DetalhesContasReceber" 
		FOREIGN KEY ("dcrIdContasReceber") 
		REFERENCES "ContasReceber"("crId")
);