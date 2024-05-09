/*===================================================*/
/*Database name: calcula_rota_db                     */
/*DBMS name:     Mysql 5.7                           */
/*Created on:    30/04/2024                          */
/*===================================================*/
USE calcula_rota_db;

/*===================================================*/
/*table: TbUnidadeFederativa                         */
/*===================================================*/

CREATE TABLE TbUnidadeFederativa (
    cdUnidadeFederativa INTEGER AUTO_INCREMENT NOT NULL,
    nmUnidadeFederativa VARCHAR(160) NOT NULL,
    sgUnidadeFederativa CHAR(2) NOT NULL,
    cdPais INTEGER NOT NULL,
    flAtivo ENUM('S', 'N') NOT NULL,
    dtInclusao DATETIME NOT NULL,
    PRIMARY KEY (cdUnidadeFederativa ASC)
);

/*===================================================*/
/*table: TbCidade                                    */
/*===================================================*/

CREATE TABLE TbCidade (
    cdCidade INTEGER AUTO_INCREMENT NOT NULL,
    nmCidade VARCHAR(160) NOT NULL,
    cdUnidadeFederativa INTEGER NOT NULL,
    flAtivo ENUM('S', 'N') NOT NULL,
    dtInclusao DATETIME NOT NULL,
    PRIMARY KEY (cdCidade ASC)
);

/*===================================================*/
/*table: TbEndereco                                  */
/*===================================================*/

CREATE TABLE TbEndereco (
    cdEndereco INTEGER AUTO_INCREMENT NOT NULL,
    cdCidade INTEGER NOT NULL,
    nmBairro VARCHAR(160) NOT NULL,
    dsComplemento VARCHAR(160) NOT NULL,
    nmLogradouro VARCHAR(160) NOT NULL,
    nuLogradouro VARCHAR(50) NOT NULL,
    tpEndereco VARCHAR(100) NOT NULL,
    flAtivo ENUM('S', 'N') NOT NULL,
    PRIMARY KEY (cdEndereco ASC)
);

/*===================================================*/
/*table: TbUsuario                                  */
/*===================================================*/

CREATE TABLE TbUsuario (
    cdUsuario INTEGER AUTO_INCREMENT NOT NULL,
    nmEmail(100) VARCHAR NOT NULL,
    nuSenha(30) VARCHAR NOT NULL,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    endereco VARCHAR(255),    
    PRIMARY KEY (cdUsuario)
);

/*===========================================================*/
/* FKs                                                       */
/*===========================================================*/

ALTER TABLE TbUnidadeFederativa 
  ADD CONsTRAINT Fk1TbUnidadeFederativa FOREIGN KEY (cdPais) REFERENCES TbPais (cdPais);
  
ALTER TABLE TbCidade 
  ADD CONSTRAINT Fk1TbCidade FOREIGN KEY (cdUnidadeFederativa) REFERENCES TbUnidadeFederativa (cdUnidadeFederativa);
 
ALTER TABLE TbEndereco 
  ADD CONSTRAINT Fk1TbEndereco FOREIGN KEY (cdCidade) REFERENCES TbCidade (cdCidade);


