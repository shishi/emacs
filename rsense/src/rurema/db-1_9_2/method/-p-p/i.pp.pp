kind=defined
names=pp
visibility=public

--- pp(obj)    -> ()

指定されたオブジェクト obj を [[m:Object#pretty_print]] を使って自身のバッファに追加します。

obj がすでに、現在のノードの親において出力されていた場合には、
参照のループが存在しているので、[[m:Object#pretty_print]] の代わりに
[[m:Object#pretty_print_cycle]] が使われます。

@param obj 表示したいオブジェクトを指定します。

