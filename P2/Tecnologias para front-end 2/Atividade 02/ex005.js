/*5) A empresa X resolvera dar um aumento de salário aos seus
colaboradores e lhe contrataram para desenvolver o programa que calculará os
reajustes. Faça um programa que recebe o salário de um colaborador e calcule
reajuste segundo o seguinte critério, baseado no salário atual: 
  - Salários até R$ 280,00 : aumento de 20% 
  - Salários entre R$ 280,00 e R$ 700,00: aumento de 15% 
  - Salários entre R$ 700,00 e R$ 1500,00: aumento de 10%
  - Salários de R$ 1500,00 em diante: aumento de 5% 

Após o aumento ser calculado, deverá ser informado: o salário antes do
reajuste; o percentual de aumento aplicado; o valor do aumento; o novo
salário, após o aumento.*/

salario = parseFloat(prompt("Insira o salário: "));
novoSalario = 0.0;
percentual = 0.0;
if(salario <= 280){
  novoSalario = salario * 1.2;
  percentual = 20;
}else if((salario > 280) && (salario <= 700)){
  novoSalario = salario * 1.15;
  percentual = 15;
}else if((salario > 700) && (salario < 1500)){
  novoSalario = salario * 1.1;
  percentual = 10;
}else if(salario >= 1500){
  novoSalario = salario * 1.05;
  percentual = 5;
}

console.log("Salário: ", salario);
console.log("Percentual de aumento: ", percentual);
console.log("Valor do aumento: ", (novoSalario - salario));
console.log("Novo salário: ", novoSalario);
