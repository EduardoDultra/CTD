// const participanteA =  [5, 8, 4, 9, 5]
// const participanteB =  [8, 7, 8, 6, 8]
// const participanteC =  [7, 5, 10, 8, 3]

// // Melhor média (a maior pontuação média entre os concorrentes)

// (5 + 8 + 4 + 9 + 5)/5  // Média

// const soma = (participanteA[0] + participanteA[1] + participanteA[2] + participanteA[3] + participanteA[4])

// let soma = 0;
// for(let indice = 0; indice < numeros.length ;indice++){

//   console.log("Valor da soma: " + soma);
//   const numero = numeros[indice];
//   soma += numero;

// const media = soma/participanteA.length;

// function media(array){
 

//   }


//   // Estrutua de repetição

//   return media;
// }

// function maior(array){
//   return maiorElemento;
// }


const ParticipanteA = [5, 8, 4, 9, 5];
const ParticipanteB = [8, 7, 8, 6, 8];
const ParticipanteC = [7, 5, 10, 8, 3];


function pontuacaoMedia(array){
  let soma = 0
  let indice = 0
  let media = 0

for (indice >=0; indice <= (array.length-1); indice++) {
  soma = soma + array[indice];
  media = soma / array.length;
}
console.log('A soma da sua pontuação é ' + soma)
console.log('A média é ' + media);
}

function pontuacaoMaior(array) {
  let pontuacaoalta = 0;

  for (indice = 0; indice <= (array.length-1); indice++) {
   if (pontuacaoalta < array[indice]){
      pontuacaoalta = array[indice];
  }

  }

  console.log(pontuacaoalta);

}


  function vencedor (ParticipanteA, ParticipanteB, ParticipanteC){
    let total1 = pontuacaoMedia(ParticipanteA);
    let total2 = pontuacaoMedia(ParticipanteB);
    let total3 = pontuacaoMedia(ParticipanteC);
    
        if (total1 > total2 && total1 > total3) {
            console.log('Participante A é o vencedor')
        } else if (total2 > total1 && total2 > total3) {
            console.log('Participante B é o vencedor')
        } else (total3 > total1 && total3 > total2) 
            console.log('Participante C é o vencedor' + total3)
        
    }
    
    


pontuacaoMedia (ParticipanteA);
pontuacaoMaior (ParticipanteA);

