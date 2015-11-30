kind=added
names=must_be_kind_of
visibility=public 

--- must_be_kind_of(klass) -> true

自身がが与えられたクラスまたはそのサブクラスのインスタンス
である場合、検査にパスしたことになります。

@param klass 自身が所属することを期待するクラスを指定します。

@raise MiniTest::Assertion 自身が与えられたクラスまたはそのサブクラスのインスタンスではない場合に発生します。

@see [[m:MiniTest::Assertions#assert_kind_of]]

