

function calculaImc(peso,altura,nome,idade) {
    const imc = peso/altura**2;
    console.log(nome + ' tem ' + idade + ' anos e seu indice de massa corporal é de: ' + imc.toFixed(2))

}

calculaImc(83.5,1.70,'José da Silva',27);

calculaImc(63.7,1.53,'Aline Ferreira',33)