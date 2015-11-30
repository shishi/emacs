kind=added
names=must_respond_to
visibility=public 

--- must_respond_to(method_name) -> true
自身が与えられたメソッドを持つ場合、検査にパスしたことになります。

@param method_name メソッド名を指定します。

@raise MiniTest::Assertion 自身が与えられたメソッドを持たない場合に発生します。

@see [[m:MiniTest::Assertions#assert_respond_to]]

