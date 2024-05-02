/*===================================================*/
/*Database name: calcula_rota_db                     */
/*DBMS name:     Mysql 5.7                           */
/*Created on:    30/04/2024                          */
/*===================================================*/
USE calcula_rota_db;


/*===================================================*/
/*table: TbUsuarios                                  */
/*===================================================*/

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    endereco VARCHAR(255)
);

/*===================================================*/
/*table: TbPais                                      */
/*===================================================*/

CREATE TABLE TbPais (
    cdPais INTEGER AUTO_INCREMENT NOT NULL,
    nmPais VARCHAR(160) NOT NULL,
    flAtivo ENUM('S', 'N') NOT NULL,
    dtInclusao DATETIME NOT NULL,
    PRIMARY KEY (cdPais ASC)
);

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
    obsEndereco VARCHAR(200) NOT NULL,
    flAtivo ENUM('S', 'N') NOT NULL,
    PRIMARY KEY (cdEndereco ASC)
);

/*===================================================*/
/*table: TbPessoa                                    */
/*===================================================*/

CREATE TABLE TbPessoa (
    cdPessoa INTEGER AUTO_INCREMENT NOT NULL,
    nmPessoa VARCHAR(160) NOT NULL,
    tpPessoa ENUM('F', 'J') NOT NULL,
    flAtivo ENUM('S', 'N') NOT NULL,
    dtInclusao DATETIME NOT NULL,
    PRIMARY KEY (cdPessoa ASC)
);

/*===================================================*/
/*table: TbUsuario                                  */
/*===================================================*/

CREATE TABLE TbUsuario (
    cdUsuario INTEGER AUTO_INCREMENT NOT NULL,
    cdPessoa INTEGER NOT NULL,
    nmEmail(100) VARCHAR NOT NULL,
    nuSenha(30) VARCHAR NOT NULL,
    PRIMARY KEY (cdUsuario)
);

/*===================================================*/
/*table: TbPessoaEndereco                            */
/*===================================================*/

CREATE TABLE TbPessoaEndereco (
    cdPessoa INTEGER NOT NULL,
    cdEndereco  INTEGER NOT NULL,
    flAtivo ENUM('S', 'N') NOT NULL,
    dtInclusao DATETIME NOT NULL
);

/*===================================================*/
/*table: TbPessoaFisica                              */
/*===================================================*/

CREATE TABLE TbPessoaFisica (
    cdPessoa INTEGER NOT NULL,
    dtNascimento DATETIME NOT NULL,
    nuCpf VARCHAR(11) NOT NULL
);

/*===================================================*/
/*table: TbPessoaJuridica                            */
/*===================================================*/

CREATE TABLE TbPessoaJuridica (
    cdPessoa INTEGER NOT NULL,
    nuCnpj VARCHAR(14) NOT NULL,
    dsRazaoSocial VARCHAR(100) NOT NULL
);

/*===================================================*/
/*table: TbCliente                                   */
/*===================================================*/

CREATE TABLE TbCliente (
    cdCliente INTEGER AUTO_INCREMENT NOT NULL,
    cdPessoa INTEGER NOT NULL,
    obsCliente VARCHAR(200) NOT NULL,
    PRIMARY KEY (cdCliente)
);

/*===================================================*/
/*table: TbTransportadora                            */
/*===================================================*/

CREATE TABLE TbTransportadora (
    cdTransportadora INTEGER AUTO_INCREMENT NOT NULL,
    cdPessoa INTEGER NOT NULL,
    PRIMARY KEY (cdtransportadora)
);

/*===================================================*/
/*table: TpTipoTransporte                            */
/*===================================================*/

CREATE TABLE TpTipoTransporte (
    cdTipoTransporte INTEGER AUTO_INCREMENT NOT NULL,
    nmTipoTRansporte VARCHAR(255) NOT NULL,
    flAtivo ENUM('S', 'N') NOT NULL,
    dtInclusao DATETIME NOT NULL,
    PRIMARY KEY (cdTipoTransporte)
);

/*===================================================*/
/*table: TbTransportadoraTipoTransporte              */
/*===================================================*/


CREATE TABLE TbTRansportadoraTipoTransporte (
    cdTransportadora INTEGER NOT NULL,
    cdTipoTransporte INTEGER NOT NULL,
    flAtivo ENUM('S', 'N') NOT NULL,
    dtInclusao DATETIME NOT NULL
);

/*===================================================*/
/*table: TbProduto                                   */
/*===================================================*/

CREATE TABLE TbProduto (
    cdProduto INTEGER AUTO_INCREMENT NOT NULL,
    nmProduto VARCHAR(100) NOT NULL,
    nmClassificacaoProduto VARCHAR(255) NOT NULL,
    nmFabricante VARCHAR(50) NOT NULL,
    dsClasseProduto VARCHAR(50) NOT NULL,
    cdNCM VARCHAR(8) NOT NULL,
    dtInclusao DATETIME NOT NULL,
    PRIMARY KEY(cdProduto)
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

ALTER TABLE TbPessoaEndereco
  ADD CONSTRAINT FK1TbPessoaEndereco FOREIGN KEY (cdPessoa) REFERENCES TbPessoa (cdPessoa),
  ADD CONSTRAINT FK2TbPessoaEndereco FOREIGN KEY (cdEndereco) REFERENCES TbEndereco (cdEndereco);

ALTER TABLE TbPessoaFisica
  ADD CONSTRAINT FK1TbPessoaFisica FOREIGN KEY (cdPessoa) REFERENCES TbPessoa (cdPessoa);

ALTER TABLE TbPessoaJuridica
  ADD CONSTRAINT FK1TbPessoaJuridica FOREIGN KEY (cdPessoa) REFERENCES TbPessoa (cdPessoa);

ALTER TABLE TbFornecedor
  ADD CONSTRAINT FK1TbFornecedor FOREIGN KEY (cdPessoa) REFERENCES TbPessoa (cdPessoa);

ALTER TABLE TbCliente
  ADD CONSTRAINT FK1TbCliente FOREIGN KEY (cdPessoa) REFERENCES TbPessoa (cdPessoa);

ALTER TABLE TbTransportadora
  ADD CONSTRAINT FK1TbTransportadora FOREIGN KEY (cdPessoa) REFERENCES TbPessoa (cdPessoa);

ALTER TABLE TbTransportadoraTipoTransporte
  ADD CONSTRAINT FK1TbTransportadoraTipoTransporte FOREIGN KEY (cdTransportadora) REFERENCES TbTransportadora (cdTransportadora),
  ADD CONSTRAINT FK2TbTransportadoraTipoTransporte FOREIGN KEY (cdTipoTransporte) REFERENCES TbTipoTransporte (cdTipoTransporte);


