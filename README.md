# Mapa Fictício

Como projeto da faculdade, criamos uma *database* no MySQL sobre um mapa fictício de nossa autoria.
Segue abaixo uma vizualização do mapa, bem como o link para a ferramenta utilizada.

![imagem do mapa](https://raw.githubusercontent.com/lfzinho/projeto-de-BD/master/imagem_mapa.png)

https://azgaar.github.io/Fantasy-Map-Generator/

Para que o trabalho ficasse mais dinâmico, decidimos criar 6 nações cada, totalizando 18. 
Cada nação possui no mínimo 2 estados, sendo no total 58 estados. Para que os dados parecessem mais verdadeiros e naturais, decidimos marcar no mapa quais seriam as delimitações de cada estaço dentro de uma nação. O resultado foi o seguinte:

![imagem dos estados](https://raw.githubusercontent.com/lfzinho/projeto-de-BD/master/estados.png)

Ademais, também foi feita uma delimitação dos biomas, baseado em um mapa dos biomas presente em nosso planeta. As nações posicionadas mais ao canto superior direito são mais frias, enquanto as posicionadas mais ao canto inferior esquerdo são mais quentes. Para o preenchimento dos dados na tabela, os dois mapas foram analisados simultaneamente para ver quais biomas estavam presente dentro de um estado. Segue uma imagem do mapa dividido de acordo com seus biomas.

![imagem dos biomas](https://raw.githubusercontent.com/lfzinho/projeto-de-BD/master/biomas.png)

Por fim, foi feito um mapa para as religiões. Como as religiões são totalmente fictícias, não utilizamos uma base. Ao invés disso, dividimos o mapa em cinco regiões aleatórias. Feito isso, realizamos a análise do mapa principal com o de religião para conseguirmos os dados mais exatos. Segue a imagem da divisão de religião.

![imagem das religiões](https://raw.githubusercontent.com/lfzinho/projeto-de-BD/master/religiões.png)

A relação entre países foi feita a partir da ferramenta antes mencionada e a decisão de comércio foi feita com base nos biomas principais de uma nação. A linguagem foi escolhida arbitrariamente. 
