# Elixir Walk

Aqui ficará toda a minha caminhada e imersão nessa linguagem chamada **Elixir**. 

| _“Elixir é uma linguagem dinâmica e 
funcional projetada para construir aplicações 
escaláveis e de fácil manutenção.”_ - **[Elixir-lang.org](https://elixir-lang.org/)**

---

#### **Primeiros Passos**
* [Instalação](#primeirospassos)
#### **Tipos básicos**
 * [Integer](#integer)
 * [Float](#float)
 * [Atoms](#atom)
 * [String](#string)
#### **Operações Básicas**
 * [Aritméticas](#aritmeticas)
 * [Booleanas](#booleanas)
 * [Interpolação e Concatenação de Strings](#interconcastring)
#### **Collections**
 * [Listas](#listas)

---
## <a name="primeirospassos"> Primeiros passos </a>
Para a instalação do elixir, você pode consultar
o próprio site de instalação do elixir, pois lá está
mais detalhado o passo a passo de acordo com seu
sistema operacional, **[neste link](https://elixir-lang.org/install.html)**.

Após a instalação você pode ir no seu próprio prompt
de comandos, se estiver usando windows. Você pode verificar 
a versão instalada no seu computador com o seguinte comando.
```prompt
Microsoft Windows [versão 10.0.19044.2251]
(c) Microsoft Corporation. Todos os direitos reservados.

C:\Users\nomeUsuario> iex -v
IEx 1.14.2 (compiled with Erlang/OTP 25)
```

---
E para iniciar o console interativo do elixir é só utilizar o próprio `iex`.
## Tipos Básicos
São vários os tipos básicos do Elixir, irei tratar os estudados até agora
na medida da evolução no aprendizado!!

### <a name = "integer"> Inteiros (Integer) </a>
Um fato interessante sobre o elixir é o 
suporte para os números binários, octais e hexadecimais.

Se você inserir um valor hexadecimal o elixir retorna
o seguinte valor em número inteiro.

```elixir
iex(1)> 0b110 
6

iex(2)> 0o644
420

iex(3)> 0x1F
31
```
Para verificar determinado tipo e outras informações de uma variável
ou valor armazenado no sistema é só executar o comando `i(valor)` como abaixo:
```elixir
iex(4)> i(202)
Term
  202
Data type
  Integer
Reference modules
  Integer
Implemented protocols
  IEx.Info, Inspect, List.Chars, String.Chars
iex(3)> i(0x1F)
Term
  31
Data type
  Integer
Reference modules
  Integer
Implemented protocols
  IEx.Info, Inspect, List.Chars, String.Chars
```

### <a name = "float"> Pontos flutuantes (Float) </a>
Em Elixir, os flutuantes exigem um decimal depois de no mínimo, um digito,
eles possuem uma precisão de 64 bits e suportam a letra `e`
para números exponenciais.

```elixir
iex(5)>3.14123123
3.14123123

iex(6)> 5.0e-15
5.0e-15
```

### <a name = "atom"> Átomos (Atoms) </a>
Um átomo é uma constante, no qual o nome é seu valor, segue os exemplos:
```elixir
iex(7)> :cavalo
:cavalo

iex(8)> :cavalo == :porco
false
```

Os valores booleanos também são átomos `:true` e `:false`, respectivamente.

### <a name = "string"> Strings </a>
O elixir utiliza como unicode o UTF-8, 
suas strings são representadas por aspas duplas:
```elixir
iex(9)> "Hello World!"
"Hello World!"
```

As strings suportam quebra de linha com o `\n`.
## Operações Básicas

#### <a name = "aritmeticas"> Aritméticas </a>

O Elixir suporta os operadores básicos `+` `-` `*` e `/`, 
porém toda divisão com `/` retornará um número de tipo float. 
Caso necessite de uma divisão inteira ou resto de divisão, você
pode utilizar a função `rem` e `div` respectivamente.
```elixir
iex(10)> 1 + 1
2

iex(11)> 2 - 2
0

iex(12)> 2 * 2
4

iex(13)> 2/2
1.0

iex(14)> div(4,2)
2

iex(15)> rem(2, 2)
0
```

#### <a name = "booleanas"> Booleanas </a>
Elixir provê os operadores booleanos `||` `&&` e `!`.

```elixir
iex(16)> true || false
true

iex(17)> true && false
false

iex(18)> !true
false
```

Para comparação de números inteiros e flutuantes utiliza-se o `===`.

```elixir
iex(19)> 2 == 2.0
true

iex(20)> 2 === 2.0
false
```
No elixir, **todos os tipos podem ser comparados**, 
sendo isso particularmente útil em ordenação.
Sendo a ordem de classificação: 

`number < atom < reference < function < port < pid < tuple < map < list < bitstring`

#### <a name = "interconcastring"> Interpolação e Concatenação de Strings </a>

Para interpolar uma string em Elixir é muito simples, basta, com a variavel declarada
usar na string o `#{variavel}`, como por exemplo:

```elixir
iex(21)> nome = "Ivisson"
"Ivisson"

iex(22)> "Welcome #{nome}"
"Welcome Ivisson"

iex(23)> nome = "Ivisson"
"Ivisson"

iex(24)> "Hello " <> nome
"Hello Ivisson"
```

---
## Coleções (Collections)

### <a name = "listas"> Lists </a>

As listas são coleções que 
podem possuir diferentes tipos diferentes.

```elixir
iex(25)> list = [1, :foo, "1", 1.0]
[1, :foo, "1", 1.0]
```

Elixir utiliza suas listas como listas encadeadas, ou seja,
para acessar o tamanho da lista é uma operação que levará
mais tempo pois rodará em tempo linear `(O(n))`. Consequentemente
será mais rápido inserir um elemento no ínicio `(head)` do que no
seu final `(tail)` e para consultar o ínicio e o resto da lista
é bastantes simples com esses comandos.

```elixir
iex(25)> hd list
1

iex(26)> tl list
[:foo, "1", 1.0]
```
#### Concatenação de Lists
Para a junção de duas listas basta utilizar `++`.

```elixir
iex(27)> list ++ [1, 2, 3, 4]
[1, :foo, "1", 1.0, 1, 2, 3, 4]
```
#### Subtração de Lists
Para a subtração de duas listas basta utilizar o `--`.

```elixir
iex(28)> list -- [1, :foo]
["1", 1.0]
```

Obs: A subtração utiliza a **comparação estrita** entre seus valores.
```elixir
iex(29)> [30] -- [30.0]
[30]

iex(30)> [30.0] -- [30.0]
[]
```

Alem dos tópicos citados, as listas podem utilizar 
o pattern matching (assunto que será trabalhado mais a frente)
e o operador cons(`|`) pra dividir a lista em head e tail.

```elixir
iex(31)> [head | tail] = [3.14, :pie, "Apple"]
[3.14, :pie, "Apple"]

iex(32)> head
3.14

iex(33)> tail
[:pie, "Apple"]
```
