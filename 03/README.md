# Задания

## Задание 1

``
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
``

### комментарии 

2 - конвертация 100 usd в rub прошла успешно

3 - конвертация 12 peso в rub прошла успешно

4 - конвертация 30 yene в rub прошла с ошибкой; конвертация в yene не поддерживается

5 - конвертация -15 euro в rub прошла с ошибкой; -15 меньше 0 (нуля)
