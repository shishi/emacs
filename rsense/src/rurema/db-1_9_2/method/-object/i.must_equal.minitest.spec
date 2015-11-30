kind=added
names=must_equal
visibility=public 

--- must_equal(expected) -> true

自身が比較対象のオブジェクトと等しい場合、検査にパスしたことになります。

@param expected 比較対象のオブジェクトを指定します。

@raise MiniTest::Assertion 与えられた期待値と実際の値が等しくない場合に発生します。

@see [[m:Object#==]], [[m:MiniTest::Assertions#assert_equal]]

