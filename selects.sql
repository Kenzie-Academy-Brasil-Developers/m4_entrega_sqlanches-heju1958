-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)

SELECT
      pe.id,
      pe.status,
      pe.cliente_id,
      pr.id,
      pr.nome,
      pr.tipo,
      pr.preço,
      pr.pts_de_lealdade
    FROM
      pedidos pe
    JOIN produtos_pedidos pr_pe
        ON
      pe.id = pr_pe.pedidos_id
    JOIN produtos pr 
        ON 
      pr_pe.produtos_id = pr.id;

-- 2)

SELECT 
      pe.id
    FROM
      pedidos pe
    JOIN produtos_pedidos pr_pe
        ON
      pe.id = pr_pe.pedidos_id
    JOIN produtos pr 
        ON 
      pr_pe.produtos_id = pr.id
      WHERE pr.nome = 'Fritas';

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

-- 5)