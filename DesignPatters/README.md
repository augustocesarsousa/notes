# Design Patters

Aqui abordaremos os principais Design Patters ou também conhecidos Padrões de Projetos mais utilizados no mercado atual, mas antes de começarmos primeiro devemos fazer uma pergunta, por que utilizar Padrões de Projetos? Os Padrões de Projetos foram criados para solucionar problemas recorrentes das formas mais eficientes até então encontradas, aplicando Padrão de Projeto em nossos projetos podemos maximizar a eficiência não necessitando focar em criar soluções para problemas que já foram solucionados.
Vamos dividir os padrões em três categorias que são:

 - Padrões de Projetos Criacionais
 - Padrões de Projetos Estruturais
 - Padrões de Projetos Comportamentais
 
 ## Padrões de Projetos Criacionais

 Os Padrões de Projetos Criacionais são utilizados quando precisamos padronizar a criação de objetos quando a sua criação exigem uma maior complexidade, não apenas instanciando um novo objeto com **new**.

 ### Factory Method

 O padrão Factory pode ser utilizado quando as classes instanciadas possam variar dentro de uma mesma **interface** podendo extrair a lógica de criação para dentro da Factory e ao invoca-la ela pode receber uma instância qualquer que implemente uma determinada **classe abstrata** que implementa a interface.

 **Exemplo**

 Supondo que temos uma **classe** que representa um objeto **Veiculo**, essa classe possua os atributos (rodas, motor, cor, modelo e marca), depois temos a **interface** **Iveiculo** que define a criação de um veículo com os métodos(getAtributes e test), depois temos três **classes abstratas** Carro, Moto e Onibus, que implementam a **interface**, por fim criamos a **Factory** VaiculoFactory com o método (create(String veiculo))que possuem a lógica de criação dos veículos retornando o veículo passado por parâmetro, assim podemos criar um veículo com apenas uma linha de código conforme abaixo:<br>

 ```
 Veiculo vaiculo1 = VaiculoFactory.create("carro");
 Veiculo vaiculo2 = VaiculoFactory.create("moto");
 Veiculo vaiculo3 = VaiculoFactory.create("onibus");
 ```

 No exemplo acima utilizamos uma variação da Factory chamada **Simple Factory**, abaixo o link para um exemplo em código:

 [Exemplo](https://github.com/augustocesarsousa/design-patterns-java/tree/main/creational-patterns/src/main/java/br/com/cod3r/factory/apple)