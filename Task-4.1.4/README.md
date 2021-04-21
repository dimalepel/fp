### Задание

Тип `LogLevel` описывает различные уровни логирования.

`data LogLevel = Error | Warning | Info` 

Определите функцию `cmp`, сравнивающую элементы типа `LogLevel` так, чтобы было верно, что `Error > Warning > Info`.

```
GHCi> cmp Error Warning
GT
GHCi> cmp Info Warning
LT
GHCi> cmp Warning Warning
EQ
```

### Ответ

```
cmp :: LogLevel -> LogLevel -> Ordering
cmp Error Error = EQ
cmp Warning Warning = EQ
cmp Info Info = EQ
cmp Error _   = GT
cmp _ Error   = LT
cmp Warning _ = GT
cmp _ Warning = LT
```