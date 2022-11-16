
// somarArray([1,2,3])                // 6
// somarArray([10, 3, 10, 4])     // 27
// somarArray([-5,100])             // 95

function somararray(array = []){
    let num = array[0] + array[1] + array[2] + array [3]
console.log (num)

}

somararray([-5,100,0,0])


function join (array = []) {
    let join = array [0] + array [1]
    console.log(join)
    
}

join(['0','i'])

let filmes = ["star wars", "matrix",  "mr. robot", "o preço do amanhã",  "a vida é bela"]

console.log(filmes[0])

console.log(filmes[0].toUpperCase(),filmes[1].toUpperCase(),filmes[2].toUpperCase(),filmes[3].toUpperCase(),filmes[4].toUpperCase())

let filmesb = ["toy story", "finding Nemo", "kung-fu panda", "wally", "fortnite"]

function juntarfilmes (filmes1 = [], filmes2 = []){

let juntarfilmes = filmes1 + filmes2

console.log(juntarfilmes)

}

juntarfilmes(["toy story", " finding Nemo", " kung-fu panda, "], ["wally", " fortnite"])

let game = filmesb.pop()

console.log(game)
console.log(filmesb)