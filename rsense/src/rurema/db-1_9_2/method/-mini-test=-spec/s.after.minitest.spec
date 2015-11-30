kind=defined
names=after
visibility=public

--- after(type = :each){ ... } -> Proc

各テストの後に実行するブロックを登録します。

@param type :each を指定することができます。

@raise RuntimeError type に :each 以外を指定すると発生します。

