--Exercício 1
--1) Escreva um programa que peça ao usuário um número de segundos e calcule (e mostre) o número de dias, horas e segundos correspondente.

-- a ser testado
converter = function( s , v , n )
        
    v = math.floor(s / n)
        
    s = s % n
        
    return s , v
  
end

--Pergunta

while true do
    print("Insira uma quantidade de segundos:")

    --Atribui à variável s um valor de segundos recebido pelo usuário
    local s = io.read("*n")
    
    --[[
    Atribui à variável d a quantidade de dias que corresponde à quantidade de segundos em s
    O valor é arredondado para o próximo inteiro menor que ele
    Quantidade de segundos em 1 dia: 60*60*24
    --]]
    local d = math.floor( s / (60*60*24) )

    --Segundos restantes em s
    s = s % (60*60*24)
    
    --[[
    Atribui à variável h a quantidade de horas que corresponde aos segundos restantes
    O valor é arredondado para o próximo inteiro menor que ele
    Quantidade de segundos em 1 hora: 60*60
    --]]
    local h = math.floor( s / (60*60) )

    --Segundos restantes em s
    s = s % (60*60)
        
    --[[
    Atribui à variável m a quantidade de minutos que corresponde aos segundos restantes
    O valor é arredondado para o próximo inteiro menor que ele
    Quantidade de segundos em 1 minuto: 60
    --]]
    local m = math.floor( s / 60 )

    --Segundos restantes em s
    s = s % 60

    --Resposta
    print("Dias:",d,"Horas: ",h,"Minutos: ",m,"Segundos: ",s)
end
