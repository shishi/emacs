kind=added
names=must_be_same_as
visibility=public 

--- must_be_same_as(actual) -> true
自身と与えられたオブジェクトの [[m:Object#object_id]] が同じ場合、検査にパスしたことになります。

@param actual 任意のオブジェクトを指定します。

@raise MiniTest::Assertion 自身と与えられたオブジェクトが異なる場合に発生します。

