kind=added
names=must_be_instance_of
visibility=public 

--- must_be_instance_of(klass) -> true

自身が与えられたクラスのインスタンスである場合、検査にパスしたことになります。

@param klass 任意のクラスを指定します。

@raise MiniTest::Assertion 自身がが与えられたクラスの直接のインスタンスでない場合に発生します。

@see [[m:MiniTest::Assertions#assert_instance_of]]

