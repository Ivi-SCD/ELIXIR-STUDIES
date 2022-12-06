
## Operações Básicas
#### language: pt-BR
#### Aritméticas

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

#### Booleanas
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

#### Interpolação e Concatenação de Strings

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