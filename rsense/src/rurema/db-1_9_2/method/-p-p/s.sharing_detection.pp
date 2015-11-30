kind=defined
names=sharing_detection,sharing_detection=
visibility=public

--- sharing_detection                 -> bool
--- sharing_detection=(boolean)

共有検出フラグを表すアクセサです。
デフォルトは false です。true である場合、
[[m:PP.pp]] は一度出力したオブジェクトを再び出力する時
[[m:Object#pretty_print_cycle]] を使います。

@param boolean 共有検出フラグを true か false で指定します。

例:

  require 'pp'
  b = [1, 2, 3]
  a = [b, b]
    
  pp a                        #=> [[1, 2, 3], [1, 2, 3]]
  
  PP.sharing_detection = true
  pp a                        #=> [[1, 2, 3], [...]]


