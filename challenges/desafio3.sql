SELECT
  u.nome_pessoa_usuaria AS pessoa_usuaria,
  COUNT(h.cancao_id) AS musicas_ouvidas,
  ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM
  pessoa_usuaria u
  INNER JOIN historico_reproducao h ON u.pessoa_usuaria_id = h.pessoa_usuaria_id
  INNER JOIN cancao c ON h.cancao_id = c.cancao_id
GROUP BY
  u.pessoa_usuaria_id
ORDER BY
  pessoa_usuaria;

