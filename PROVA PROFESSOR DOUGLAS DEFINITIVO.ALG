Algoritmo "Algoritmo definitivo"
 // Grupo 07
 // Alunos: Leonardo, Allysson, Emily, Ygor e Vilmar
Var
   Ma: vetor [1..2,1..2]de inteiro
   Mb: vetor [1..2,1..8]de real
   MaI: vetor [1..2,1..2]de real
   Mc: vetor [1..2,1..8]de inteiro
   T: vetor [1..27] de caracter
   MbT: vetor [1..2,1..8] de caracter
   temp: real
   i,j,diag1,diag2,det,k:inteiro

Inicio
   //Atribuição da chave
   para i de 1 ate 2 faca
      para j de 1 ate 2 faca
         escreval("Digite a linha ",i,", coluna ",j," da chave:")
         leia(Ma[i,j])
      fimpara
   fimpara
   // Atribuição da mensagem cifrada
   para i de 1 ate 2 faca
      para j de 1 ate 8 faca
         escreval("Digite a linha ",i,", coluna ",j," da mensagem cifrada:")
         leia(Mc[i,j])
      fimpara
   fimpara
   //Achar o determinante
   para i de 1 ate 2 passo 1 faca
      para j de 1 ate 2 faca
         //Para comparar se é uma diagonal
         se(j = i) entao
            //Para comparar se é a diagonal principal
            se(j=1)entao
               diag1<- Ma[i,j] * Ma[j,i]
            senao
               //Para comparar se é a diagonal secundária
               diag2<- Ma[i,j] * Ma[j,i]
            fimse
         fimse
      fimpara
   fimpara
   det <- Ma[1,1]*Ma[2,2] - Ma[2,1] * Ma[1,2]
   escreval("Determinante:",det)
   para i de 1 ate 2 faca
      para j de 1 ate 2 faca
         MaI[i,j]<- Ma[i,j]/det
      fimpara
   fimpara
   //Permutação da Inversa
   temp <- MaI[1,1]
   MaI[1,1]<- MaI[2,2]

   MaI[2,2]<- temp
   MaI[1,2]<- MaI[1,2] * (-1)
   MaI[2,1]<- MaI[2,1] * (-1)

   para i de 1 ate 2 faca
      para j de 1 ate 8 faca
         Mb[i,j] <- (MaI[i,1] * Mc[1,j]) + (MaI[i,2] * Mc[2,j])
      fimpara
   fimpara
   para i de 1 ate 2 faca
      para j de 1 ate 8 faca
         escreva(Mb[i,j],"|")
      fimpara
      escreval
   fimpara

   para i de 1 ate 2 faca
      para j de 1 ate 8 faca
         temp <- Mb[i,j]


         escolha(temp)
         caso 1
            MbT[i,j]<- "a"
         caso 2
            MbT[i,j]<- "b"
         caso 3
            MbT[i,j]<- "c"
         caso 4
            MbT[i,j]<- "d"
         caso 5
            MbT[i,j]<- "e"
         caso 6
            MbT[i,j]<- "f"
         caso 7
            MbT[i,j]<- "g"
         caso 8
            MbT[i,j]:= "h"
         caso 9
            MbT[i,j]:= "i"
         caso 10
            MbT[i,j]<- "j"
         caso 11
            MbT[i,j]<- "k"
         caso 12
            MbT[i,j]<- "l"
         caso 13
            MbT[i,j]<- "m"
         caso 14
            MbT[i,j]<- "n"
         caso 15
            MbT[i,j]<- "o"
         caso 16
            MbT[i,j]<- "p"
         caso 17
            MbT[i,j]<- "q"
         caso 18
            MbT[i,j]<- "r"
         caso 19
            MbT[i,j]<- "s"
         caso 20
            MbT[i,j]<- "t"
         caso 21
            MbT[i,j]<- "u"
         caso 22
            MbT[i,j]<- "v"
         caso 23
            MbT[i,j]<- "x"
         caso 24
            MbT[i,j]<- "w"
         caso 25
            MbT[i,j]<- "z"
         caso 26
            MbT[i,j]<- "_"
         caso 27
            MbT[i,j]<- "y"
         fimescolha

         escreva(" ",MbT[i,j]," ")
      fimpara
      escreval
   fimpara
Fimalgoritmo
