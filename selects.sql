-- Seleções de dados

-- 1)

SELECT
      pe.id,
      pe.status,
      pe.cliente_id,
      pro.id,
      pro.nome,
      pro.tipo,
      pro.preço,
      pro.pts_de_lealdade
FROM
      pedidos pe
      JOIN produtos_pedidos pp ON pe.id = pp.pedidos_id
      JOIN produtos pro ON pp.produtos_id = pro.id;

-- 2)

SELECT 
      pe.id
FROM
      pedidos pe
      JOIN produtos_pedidos pp ON pe.id = pp.pedidos_id
      JOIN produtos pro ON pp.produtos_id = pro.id
WHERE 
      pro.nome = 'Fritas';

-- 3)

ALTER TABLE
      pedidos
ADD
      COLUMN gostam_de_fritas VARCHAR(50);
  
SELECT 
      cl.nome AS gostam_de_fritas
FROM 
      clientes cl
      JOIN pedidos pe ON cl.id = pe.cliente_id
      JOIN produtos_pedidos pp ON pe.id = pp.pedidos_id 
      JOIN produtos pro ON pp.produtos_id = pro.id 
WHERE 
      pro.nome = 'Fritas';

-- 4)

SELECT 
      SUM(pro.preço)  
FROM 
      clientes cl
      JOIN pedidos pe ON cl.id = pe.cliente_id
      JOIN produtos_pedidos pp ON pe.id = pp.pedidos_id 
      JOIN produtos pro ON pp.produtos_id = pro.id 
WHERE 
      cl.nome = 'Laura';

-- 5)

SELECT
      pro.nome,
      COUNT(pp.pedidos_id)     
FROM
      pedidos pe
      JOIN produtos_pedidos pp ON pe.id = pp.pedidos_id
      JOIN produtos pro ON pp.produtos_id = pro.id 
GROUP BY 
      pro.nome;