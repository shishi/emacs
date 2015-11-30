kind=defined
names=seplist
visibility=public

--- seplist(list, sep = lambda { comma_breakable }, iter_method = :each){|e| ...}    -> ()

リストの各要素を何かで区切りつつ、自身に追加していくために使われます。

list を iter_method によってイテレートし、各要素を引数としてブロックを実行します。
また、それぞれのブロックの実行の合間に sep が呼ばれます。

つまり、以下のふたつは同値です。

  q.seplist([1,2,3]) {|v| q.pp v }

  q.pp 1
  q.comma_breakable
  q.pp 2
  q.comma_breakable
  q.pp 3

@param list 自身に追加したい配列を与えます。iter_method を適切に指定すれば、
            Enumerable でなくても構いません。

@param sep 区切りを自身に追加するブロックを与えます。list がイテレートされないなら、
           sep は決して呼ばれません。

@param iter_method list をイテレートするメソッドをシンボルで与えます。

@see [[m:PP#comma_breakable]]

