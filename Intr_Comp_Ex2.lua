--Exercício 1
--2) Escreva um programa que peça ao usuário uma linha de texto e um caracter e determine (e mostre) o número de ocorrências desse caracter no texto dado.

--Pergunta

while true do
    print("Insira uma linha de texto:")

    --Atribui à variável t um texto recebido pelo usuário
    local t = io.read("*l")

    print("Insira um caracter:")

    --Atribui à variável c um caracter recebido pelo usuário
    local c = io.read("*l")

    --[[
    Chama a função string.gsub, recebendo o texto e o caracter inseridos pelo usuário
    string.gsub substitui todas as instâncias do caracter por ele mesmo
    Atribui à variável s o novo texto
    Atribui à variável o a quantidade de substituições
    A quantidade de substituições é igual à quantidade de ocorrências do caracter
    --]]
    s , o = string.gsub(t,c,c)

    --Resposta
    print("Número de ocorrências do caracter no texto:",o)
end
