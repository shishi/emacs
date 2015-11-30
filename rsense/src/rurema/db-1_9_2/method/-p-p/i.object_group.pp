kind=defined
names=object_group
visibility=public

--- object_group(obj) { ... }    -> ()

以下と等価な働きをするもので簡便のために用意されています。
  group(1, '#<' + obj.class.name, '>') { ... }

@param obj 表示したいオブジェクトを指定します。

@see [[m:PrettyPrint#group]]

