console.log(`
Selecione uma das opções e o tempo desejado:

1 - Pipoca
2 - Macarrão
3 - Carne
4 - Feijão
5 - Brigadeiro
`);

const opcao = 0
const tempo = 0

//---------------------------------------------------------------------------------------//
switch (opcao) {

  case 1:
    console.log("Pipoca");
    let tempopipoca = 10;
    if (tempo < tempopipoca) {
      console.log("Tempo insuficiente");
    } else if (tempo > tempopipoca * 2 && tempo <= tempopipoca * 3) {
      console.log("A comida queimou");
    } else if (tempo > tempopipoca * 3) {
      console.log("Kabumm");
    } else {
      console.log("Prato pronto, bom apetite!!!");
    }
    break;

  case 2:
    console.log("Macarrão");
    let tempomacarrao = 8;
    if (tempo < tempomacarrao) {
      console.log("Tempo insuficiente");
    } else if (tempo > tempomacarrao * 2 && tempo <= tempomacarrao * 3) {
      console.log("A comida queimou");
    } else if (tempo > tempomacarrao * 3) {
      console.log("Kabumm");
    } else {
      console.log("Prato pronto, bom apetite!!!");
    }
    break;

  case 3:
    console.log("Carne");
    let tempocarne = 15;
    if (tempo < tempocarne) {
      console.log("Tempo insuficiente");
    } else if (tempo > tempocarne * 2 && tempo <= tempocarne * 3) {
      console.log("A comida queimou");
    } else if (tempo > tempocarne * 3) {
      console.log("Kabumm");
    } else {
      console.log("Prato pronto, bom apetite!!!");
    }
    break;

  case 4:
    console.log("Feijão");
    let tempofeijao = 12;
    if (tempo < tempofeijao) {
      console.log("Tempo insuficiente");
    } else if (tempo > tempofeijao * 2 && tempo <= tempofeijao * 3) {
      console.log("A comida queimou");
    } else if (tempo > tempofeijao * 3) {
      console.log("Kabumm");
    } else {
      console.log("Prato pronto, bom apetite!!!");
    }
    break;

  case 5:
    console.log("Brigadeiro");
    let tempobrigadeiro = 8;
    if (tempo < tempobrigadeiro) {
      console.log("Tempo insuficiente");
    } else if (tempo > tempobrigadeiro * 2 && tempo <= tempobrigadeiro * 3) {
      console.log("A comida queimou");
    } else if (tempo > tempobrigadeiro * 3) {
      console.log("Kabumm");
    } else {
      console.log("Prato pronto, bom apetite!!!");
    }
    break;

    default:
    console.log("Prato inexistente")


}
