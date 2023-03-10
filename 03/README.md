# Задания

## Задание 1

## to_rub

```
{ok,converter}
2> converter:to_rub({usd, 100}).
Convert usd to rub, amount 100
{ok,7550.0}
3> converter:to_rub({peso, 12}).
Convert peso to rub, amount 12
{ok,36}
4> converter:to_rub({yene, 30}).
yene - convert is not supported
{error,badarg}
5> converter:to_rub({euro, -15}).
-15 - number is less than 0
{error,badarg}
6> 
```

### комментарии 

2 - конвертация 100 usd в rub прошла успешно

3 - конвертация 12 peso в rub прошла успешно

4 - конвертация 30 yene в rub прошла с ошибкой; конвертация из yene не поддерживается

5 - конвертация -15 euro в rub прошла с ошибкой; -15 меньше 0 (нуля)

## Задание 2

## to_rub2

```
8> converter:to_rub2({usd, 100}).
Convert usd to rub, amount 100
Result {ok,7550.0}
{ok,7550.0}
9> converter:to_rub2({peso, 12}).
Convert usd to rub, amount 12
Result {ok,36}
{ok,36}
10> converter:to_rub2({yene, 30}).
yene - convert is not supported
Result {error,badarg}
{error,badarg}
11> converter:to_rub2({euro, -15}).
-15 - number is less than 0
Result {error,badarg}
{error,badarg}
12> 
```

### комментарии 

8 - конвертация 100 usd в rub прошла успешно

9 - конвертация 12 peso в rub прошла успешно

10 - конвертация 30 yene в rub прошла с ошибкой; конвертация из yene не поддерживается

11 - конвертация -15 euro в rub прошла с ошибкой; -15 меньше 0 (нуля)


## to_rub3

```
13> converter:to_rub3({usd, 100}).
Convert usd to rub, amount 100
{ok,7550.0}
14> converter:to_rub3({peso, 12}).
Convert usd to rub, amount 12
{ok,36}
15> converter:to_rub3({yene, 30}).
yene - convert is not supported
{error,badarg}
16> converter:to_rub3({euro, -15}).
-15 - number is less than 0
{error,badarg}
17> 
```

### комментарии 

13 - конвертация 100 usd в rub прошла успешно

14 - конвертация 12 peso в rub прошла успешно

15 - конвертация 30 yene в rub прошла с ошибкой; конвертация из yene не поддерживается

16 - конвертация -15 euro в rub прошла с ошибкой; -15 меньше 0 (нуля)
