kind=added
names=must_be_empty
visibility=public 

--- must_be_empty -> true

自身が空である場合、検査にパスしたことになります。

@raise MiniTest::Assertion 自身が empty? メソッドを持たない場合に発生します。
                           また、自身が空でない場合にも発生します。

@see [[m:MiniTest::Assertions#assert_empty]]

