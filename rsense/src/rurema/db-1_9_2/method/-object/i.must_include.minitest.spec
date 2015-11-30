kind=added
names=must_include
visibility=public 

--- must_include(object) -> true

自身に与えられたオブジェクトが含まれている場合、検査にパスしたことになります。

@param object 任意のオブジェクトを指定します。

@raise MiniTest::Assertion 自身が include? メソッドを持たない場合に発生します。
                           自身に与えられたオブジェクトが含まれていない場合に発生します。

@see [[m:MiniTest::Assertions#assert_includes]]

