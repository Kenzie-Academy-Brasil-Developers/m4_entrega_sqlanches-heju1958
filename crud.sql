-- Simulações de um CRUD

-- Criação

-- 1)

INSERT INTO clientes
       (nome, lealdade)
VALUES
       ('Georgia', 0);

-- 2)

INSERT INTO pedidos 
       (status, cliente_id)
VALUES
       ('Recebido', 6);

-- 3)

INSERT INTO produtos_pedidos
       (pedidos_id, produtos_id)
VALUES
       (6, 1),
 	   (6, 2),
       (6, 6),
       (6, 8),
       (6, 8);

-- Leitura

-- 1)

SELECT 
      cl.id,
      cl.nome,
      cl.lealdade,
      pe.id,
      pe.status,
      pe.cliente_id,
      pro.id,
      pro.nome,
      pro.tipo,
      pro.preço,
      pro.pts_de_lealdade 
FROM 
      clientes cl
      JOIN pedidos pe ON cl.id = pe.cliente_id
      JOIN produtos_pedidos pp ON pe.id = pp.pedidos_id 
      JOIN produtos pro ON pp.produtos_id = pro.id 
WHERE  
      cl.nome = 'Georgia';

-- Atualização

-- 1)



-- Deleção

-- 1)


