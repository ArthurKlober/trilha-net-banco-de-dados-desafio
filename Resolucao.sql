-- 1
SELECT nome, ano FROM Filmes

-- 2
SELECT nome, ano, duracao FROM Filmes ORDER BY ano asc

-- 3
SELECT nome, ano, duracao FROM Filmes WHERE nome = 'De Volta para o Futuro'

-- 4
SELECT  nome, ano, duracao from FILMES where ano = 1997

-- 5
SELECT  nome, ano, duracao from FILMES where ano > 2000

-- 6
SELECT  nome, ano, duracao from FILMES where duracao > 100 and duracao < 150 ORDER BY duracao asc

-- 7
SELECT ano, COUNT(ano) as quantidade from FILMES GROUP BY ano order by quantidade DESC

-- 8
SELECT primeironome, ultimonome, genero FROM Atores WHERE genero = 'M'

-- 9
SELECT primeironome, ultimonome, genero FROM Atores WHERE genero = 'F' ORDER BY primeironome ASC

-- 10
SELECT nome, Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11
SELECT nome, Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

--12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.nome, Atores.PrimeiroNome,Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
