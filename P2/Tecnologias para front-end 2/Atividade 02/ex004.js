/*4) Modifique os elementos do array da questão 3 de modo que a sequência de números fique ao contrário.
Exemplo: digitou: 1,2,3, Vai aparecer: 3,2,1.*/

var lista = [];
var listaReversa = [];
function numeros(){
    var num = 0;
    var stop = 'S';
    while(true){
        num = parseFloat(prompt("Insira um número: "));
        lista.push(num);
        stop = prompt("Você deseja continuar? [S/N]:").toUpperCase();
        if(stop == "N"){
            break;
        }
    }
    return lista;
}
var lista = numeros()
console.log("Lista: ", lista);

for(var i = 0; i < lista.length; i++){
  listaReversa.unshift(lista[i]);
}
console.log("Lista reversa: ", listaReversa);