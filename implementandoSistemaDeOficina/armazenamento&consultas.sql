-- inserção de dados e queries
USE oficina;

ShOW tables;

-- INSERIR: 
INSERT INTO cliente(fNome,minit,lNome,cpf,contact )
			values("Maria","M","Silva",123456789,"12345678910"),
				  ("Matheus","O","Pimentel",987654321,"12345678910"),
				  ("Ricardo","F","Silva",475678913,"12345678910"),
				  ("Julia","S","França",789123456,"12345678910"),
				  ("Roberta","G","Assis",987456312,"12345678910"),
				  ("Isadora","M","Cruz",654789123,"12345678910");
                  
INSERT INTO pedido(idpedidoVeiculo,	valorServico, descricao, statusVeiculo)
			values(1,2000,"frente batida",true);
            
INSERT INTO pedido(idpedidoVeiculo,	valorServico, descricao, statusVeiculo)
			values(2,4000,"traseira batida",true),
				  (4,2000,"traseira batida",default),
                  (3,2000,"traseira batida",default);
                  
INSERT INTO mecanico(nome)
			  values("João"),
					("Pedro"),
                    ("Janaina"),
                    ("Gustavo"),
                    ("Kaio");

select * FROM mecanico;
select * FROM pedido;


INSERT INTO EquipeAvaliad(idEAMecanico,idEAPedido)
				   values(1,2),
						 (2,3),
                         (3,1),
                         (1,3);
                         
INSERT INTO ordemServico(idServico,pecasValor,maoDeObra,dataEmissao,dataEntrega,statusOS)
				  values(1,900,1100,"2022-08-11","2022-09-1",true);
INSERT INTO ordemServico(idServico,pecasValor,maoDeObra,dataEmissao,dataEntrega,statusOS)
				  values(2,1900,2100,"2022-08-11","2022-09-1",true);





