algoritmo "Atividade1_CestaBasica_LuanSouza"

//Variáveis
var nome_produto: vetor[1..3] de caractere
    preco_anterior: vetor[1..3] de real
    preco_atual: vetor[1..3] de real
    variacao: vetor[1..3] de real
    situacao: vetor[1..3] de caractere
    i, j: inteiro
    p_anterior, p_atual, varia: real

inicio
    para j de 1 ate 3 faca
        //Coleta informações dos produtos
        escreva("Nome do produto ", j, ": ")
        leia(nome_produto[j])
        escreva("valor anterior do ",nome_produto[j],": ")
        leia(preco_anterior[j])
        escreva("valor atual do ",nome_produto[j],": ")
        leia(preco_atual[j])
        escreva("passou!!!!")

        //Calcula a porcentagem da variação de preços
        variacao[j] <- ((preco_atual[j]-preco_anterior[j])/preco_anterior[j]) * 100

        //Verifica se a variação de preço foi positiva, negativa ou invariável
        se variacao[j] > 0 entao
            situacao[j] <- "Aumento"
        senao 
            se variacao[j] < 0 entao
                situacao[j] <- "Queda"
            senao 
                se variacao[j] = 0 entao
                    situacao[j] <- "Estável"
                fimse
            fimse        
        fimse

        limpatela
    fimpara

    escreval("Resumo de variação de preços:")

    para i de 1 ate 3 faca
        //Atribui os valores a novas variáveis para facilitar a formatação das casas decimais dos valores.
        p_anterior <- preco_anterior[i]
        p_atual <- preco_atual[i]
        varia <- variacao[i]
        
        //Imprime o resumo da variação de preço de cada produto
        escreval("--------------------------------")
        escreval("Produto: ",nome_produto[i])
        escreval("   Preço anterior: R$",p_anterior:4:2)
        escreval("   Preço atual: R$",p_atual:4:2)
        escreval("   Variação: ",varia:4:2,"%")
        escreval("   situação: ",situacao[i])
    fimpara

    escreval("--------------------------------")

fimalgoritmo