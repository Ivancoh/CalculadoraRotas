# Calcula Rotas

## Ideia Geral:

A ideia geral da ferramenta é calcular uma rota apresentando a melhor alternativa em tempo/quilometragem e também apresentar uma rota alternativa para escolha do usuário.

## Requisitos:

* O sistema deve ter um sistema de login para que somente usuários cadastrados tenham acesso à ferramenta;
* O sistema deverá enviar email de recuperação de senha para email cadastrado pelo usuário;
* A ferramenta deve ter um sistema de cálculo para medir a distância da rota, onde o usuário consiga alocar mais destinos que foram necessários para entrega; 
* O sistema deve mostrar o tempo médio de percorrimento dessa distância;
* A ferramenta deve dispor de ao menos uma rota alternativa. A rota alternativa deverá ser mostrada juntamente do motivo dela ser uma rota secundária (maior tempo, maior quilometragem, etc);

## Funcionalidades:

* Página de recuperação de senha com envio de recuperação para email cadastrado;
* Página de cálculo de rota;

## Ferramentas utilizadas no projeto:
* Front-end: Angular
* Back-end: Spring Boot
* DB: MySQL
* Mensageria: RabbitMQ
* Segurança: Keycloak


