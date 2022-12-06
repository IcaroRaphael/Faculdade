/*2) Crie uma função que receba uma quantidade indeterminada de números e informe o maior e menor 
número informado.*/
function comparacao(){
    var maior =  0;
    var menor = 0;
    for(var i = 0; i < arguments.length; i++){
      if(i == 0){
          maior = arguments[i];
          menor = arguments[i];
      }
      else{
          if(arguments[i] > maior){
              maior = arguments[i];
          }
          if(arguments[i] < menor){
              menor = arguments[i];
          }
      }
      }
    console.log("Maior: ", maior);
    console.log("Menor: ", menor);
    }
  
comparacao(1, 2, 3, 4, 5);