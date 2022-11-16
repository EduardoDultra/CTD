/* Aula 10 - Strings e 
Propriedades -> Caracteristicas do objeto
length -> Indica a quantidade caracteres da string
Metódos -> Ações do objeto

*/


// const senha = "";
// senha.length // 6
// // Validação de senha

// if(senha.length > 3) {
//     console.log("Senha válida");
// }

// const email = "teste@gmail.com";
// if(email.includes("@")){
// console.log("Email válido");
// } else {
//     console.log("Email inválido");
// }

// const nome = "      Eduardo Dultra      ";
// console.log(nome.trim());

// // @ - a
// // & - b
// // * - p

// const mensagemCriptografada = "@&* @*****&&& @&*";
// console.log('Mensagem decodificada', mensagemCriptografada.replaceAll("@","a").replaceAll("&","b").replaceAll("*","c"));




// const nota = 7.5;
// const nota = 8.5;
// const nota = 5;

/* 
Arrays - Lista

Array - Uma variavel que armazena dados indexados em apenas uma variavel

Lista de notas
Lista de nomes
Lista de carros

...

*/

//              0   1   2
const notas = [7.5, 9, 6.4];
const tamanho = notas.length// - Retorna a quantidade deelementos no array -> 3
//O ultimo elemento do array vai ser sempre o tamanho - 1
const ultimaNota = notas[tamanho - 1] // 6.4;

const arrayMisto = [0,true,NaN,undefined,"astdfasfdasf",function(){}];
//                   0               1         2
const matriz = [[0, 1, 2[0,0,0]],[3, 4, 5],[6, 7, 8]
]
// matriz[0] -> [0, 1, 2];
matriz[0] // 0

const nomes = []; // Array vazio -> Lista de nomes vazia

// push -> Adiciona um novo elemento no final do array
nomes.push("Pedro");
nomes.push("Abel");

// unshift -> Adiciona um novo elemento no inicio do array

nomes.unshift("Luana");

// pop -> Remove o ultimo elemento do array

const nomeRemovido = nomes.pop() // Retorna o elemento que foi removido

// shift -> Remove o primero elemento do array

const primeiroRemovido = nomes.shift();


console.table(nomes);