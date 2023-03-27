# Markdown

Markdown é uma linguagem de marcação, muito utilizada para criação documentação. Foi criada em 2004 por John Gruber e hoje é uma das mais populares linguagens de marcação, nos tópicos abaixo veremos suas principais ferramentas.

# Site oficial

<https://www.markdownguide.org/>

## Títulos

Para criar títulos em Markdown, utilizamos o símbolo cerquilha **#**, podemos criar até seis níveis de títulos, exemplos:

1. Nível 1;

   ```
   # Título nível 1
   ```

   **Resultado**

   # Título nível 1

2. Nível 2;

   ```
   ## Título nível 2
   ```

   **Resultado**

   ## Título nível 2

3. Nível 3;

   ```
   ### Título nível 3
   ```

   **Resultado**

   ### Título nível 3

4. Nível 4;

   ```
   #### Título nível 4
   ```

   **Resultado**

   #### Título nível 4

5. Nível 5;

   ```
   ##### Título nível 5
   ```

   **Resultado**

   ##### Título nível 5

6. Nível 6._itálico_
   ```
   ###### Título nível 6
   ```
   **Resultado**
   ###### Título nível 6

## Parágrafos

Parágrafos em Markdown são criados automaticamente quando digitamos um texto, para inserir um novo parágrafo basta pular uma linha, exemplos:

1. Parágrafo simples;

   ```
   Isso é um parágrafo simples
   ```

   **Resultado**

   Isso é um parágrafo simples

2. Novo parágrafo.

   ```
   Isso é um parágrafo simples

   Novo parágrafo
   ```

   **Resultado**
   Isso é um parágrafo simples

   Novo parágrafo

## Texto em itálico

Para criar um texto em itálico, utilizamos o símbolo underline ( \_ ), antes e depois do texto.

**Exemplo**

```
Texto em _itálico_
```

**Resultado**

Texto em _itálico_

## Texto em negrito

Para criar um texto em negrito, utilizamos o símbolo de dois asteriscos ( \*\* ), antes e depois do texto.

**Exemplo**

```
Texto em **negrito**
```

**Resultado**

Texto em **negrito**

## Texto riscado

Para criar um texto riscado, utilizamos o símbolo de tio **~**, antes e depois do texto, exemplo:

```
~~Texto riscado~~
```

**Resultado**
~~Texto riscado~~

## Separador

Para criar um separador, utilizamos três traços **---**, exemplo:

```
Parágrafo 1

---

Parágrafo 2
```

**Resultado**

Parágrafo 1

---

Parágrafo 2

## Variáveis de referência

Para criar variáveis de referência, utilizamos os símbolo s de colchetes **[ ]**, seguido de dois pontos ( : ) e por fim o texto que queremos referenciar, exemplos:

```
[site]: https://www.markdownguide.org/
[image]: ./images/markdown_logo.png
```

**Observação**

As variáveis de referência sempre são criadas no fim do arquivo.

## Links

Para criar um link, utilizamos os símbolos de colchetes [ ], com o nome do link, seguido dos símbolo s de parênteses ( ), com a url do link, exemplos:

1. Link simples;

   ```
   [Google](https://www.google.com.br)
   ```

   **Resultado**
   [Google](https://www.google.com.br)

2. Link com título;

   ```
   [Google](https://www.google.com.br "Link para o site do google")
   ```

   **Resultado**
   [Google](https://www.google.com.br)

3. Link direto.
   ```
   <https://www.google.com.br>
   ```
   **Resultado**
   <https://www.google.com.br>

## Imagens

Para usar uma imagem, utilizamos o símbolo de exclamação **!**, depois os símbolos de colchetes **[ ]** com o nome da imagem, e por fim os símbolos de parênteses **( )** com local da imagem, exemplos:

**Exemplo 1**

```
![Markdown logo local](./images/markdown_logo.png)
```

**Resultado**
![Markdown logo local](./images/markdown_logo.png)

**Exemplo 2**

```
![Markdown logo web](https://cdn.iconscout.com/icon/free/png-256/markdown-3627132-3029540.png)
```

**Resultado**
![Markdown logo web](https://cdn.iconscout.com/icon/free/png-256/markdown-3627132-3029540.png)

## Citação

Para criar citação, utilizamos o símbolo de seta para direta **>**, mais o nome de quem queremos citar, exemplo:

```
> John Gruber
```

**Resultado**

> John Gruber

## Lista não ordenada

Para criar listas não ordenadas, utilizamos os símbolos de traço **-** ou asterisco **\***, mas o texto da lista, exemplo:

```
- Item 1
- Item 2
- Item 3
- Item 4
```

**Resultado**

- Item 1
- Item 2
- Item 3
- Item 4

## Lista ordenada

Para criar listas ordenadas, utilizamos números para cada item da lista, exemplo:

```
1. Item 1
2. Item 2
3. Item 3
4. Item 4
```

**Resultado**

1. Item 1
2. Item 2
3. Item 3
4. Item 4

## Lista com subníveis

Para criar listas com subníveis, utilizamos um **tab** nos itens de nível abaixo, exemplos:

**Exemplo 1**

```
1. Aves
   1. Beija-flor
   2. Tucano
2. Mamíferos
   1. Gato
   2. Cachorro
3. Insetos
   1. Barata
   2. Aranha
```

**Resultado**

1. Aves
   1. Beija-flor
   2. Tucano
2. Mamíferos
   1. Gato
   2. Cachorro
3. Insetos
   1. Barata
   2. Aranha

**Exemplo 2**

```
- Aves
  - Beija-flor
  - Tucano
- Mamíferos
  - Gato
  - Cachorro
- Insetos
  - Barata
  - Aranha
```

**Resultado**

- Aves
  - Beija-flor
  - Tucano
- Mamíferos
  - Gato
  - Cachorro
- Insetos
  - Barata
  - Aranha

## Check list

Para criar uma check list, utilizamos o traço **-** para informar que queremos uma lista, depois colchetes **[ ]** para informar que é uma lista que pode ser marcada, e por fim o item da lista, exemplo:

```
- [ ] Fazer compras
- [ ] Limpar a casa
- [ ] Passear com o pet
- [ ] Assistir filme
```

**Resultado**

- [ ] Fazer compras
- [ ] Limpar a casa
- [ ] Passear com o pet
- [ ] Assistir filme

**Observação**

A lista pode ser criar com alguns itens já marcados, exemplo:

```
- [x] Fazer compras
- [x] Limpar a casa
- [ ] Passear com o pet
- [ ] Assistir filme
```

**Resultado**

- [x] Fazer compras
- [x] Limpar a casa
- [ ] Passear com o pet
- [ ] Assistir filme

## Tabelas

Para criar uma tabela, utilizamos o símbolo pipe **|**, para separar colunas e o símbolo traço **-** para separar linhas, exemplos:

**Exemplo 1**

```
Produto | Preço
--------|------
Arroz   | R$ 16,90
Feijão  | R$ 5,90
Açúcar  | R$ 4,99
Sal     | R$ 2,99
```

**Resultado**
Produto | Preço
--------|------
Arroz | R$ 16,90
Feijão | R$ 5,90
Açúcar | R$ 4,99
Sal | R$ 2,99

**Exemplo 2** (alinhando preços à direita)

```
Produto | Preço
--------|------:
Arroz   | R$ 16,90
Feijão  | R$ 5,90
Açúcar  | R$ 4,99
Sal     | R$ 2,99
```

**Resultado**
Produto | Preço
--------|------:
Arroz | R$ 16,90
Feijão | R$ 5,90
Açúcar | R$ 4,99
Sal | R$ 2,99

**Exemplo 3** (alinhando produtos ao centro)

```
Produto | Preço
:--------:|------:
Arroz   | R$ 16,90
Feijão  | R$ 5,90
Açúcar  | R$ 4,99
Sal     | R$ 2,99
```

**Resultado**
Produto | Preço
:--------:|------:
Arroz | R$ 16,90
Feijão | R$ 5,90
Açúcar | R$ 4,99
Sal | R$ 2,99

## Bloco de código

Para criar um bloco de código, utilizamos o símbolo acento grave **`** três vezes, para abrir e fechar um bloco de código, exemplo:

**Exemplo 1 sem definição da linguagem**

````
    ```
        public class app {
            public static void main(String[] args) {
                System.out.printl("Hello Word");
            }
        }
    ```
````

**Resultado**

```
    public class app {
        public static void main(String[] args) {
            System.out.printl("Hello Word");
        }
    }
```

**Exemplo 2 com definição da linguagem**

````
    ```java
        public class app {
            public static void main(String[] args) {
                System.out.printl("Hello Word");
            }
        }
    ```
````

**Resultado**

```java
    public class app {
        public static void main(String[] args) {
            System.out.printl("Hello Word");
        }
    }
```
