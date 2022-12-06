/*Obtenha dados da altura e o sexo (M ou F) de 15 pessoas e apresente os seguintes resultados:

- A maior e a menor altura do grupo;
- A media de altura dos homens;
- O numero de mulheres.*/
var maior = 0.0;
var menor = 0.0;
var contHomem = 0.0;
var somaHomem = 0.0;
var mediaHomem = 0.0;
var contMulher = 0.0;

for(var i = 1; i <= 15; i++){
    console.log("INSIRA OS DADOS DA %dº PESSOA...", i);
    var altura = parseFloat(prompt("Insira a altura: "));
    var sexo = prompt("Insira o sexo [M/F]: ").toUpperCase().charAt(0);
    if(i == 1){
        maior = altura;
        menor = altura;
    }else{
        if(altura > maior){
            maior = altura;
        }else if(altura < menor){
            menor = altura;
        }
    }
    if(sexo == "M"){
        contHomem++;
        somaHomem += altura;
    }else if(sexo == "F"){
        contMulher++;
    }
  console.log("-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-")
}
mediaHomem = somaHomem / contHomem;

console.log("Maior altura: ", maior);
console.log("Menor altura: ", menor);
console.log("Media de altura dos homens: ", parseFloat(mediaHomem.toFixed(2)));
console.log("Numero de mulheres: ", contMulher);
