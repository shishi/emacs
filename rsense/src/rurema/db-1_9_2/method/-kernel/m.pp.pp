kind=added
names=pp
visibility=public

--- pp(*obj)    -> object

指定されたオブジェクト obj を標準出力に見やすい形式(プリティプリント)で出力します。
obj それぞれを引数として [[m:PP.pp]] を呼びことと同等です。

@param obj 表示したいオブジェクトを指定します。

例:
  require 'pp'

  b = [1, 2, 3] * 4
  a = [b, b]
  a << a    
  pp a

  #=> [[1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3],
       [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3],
       [...]]

@see [[m:PP.pp]]

