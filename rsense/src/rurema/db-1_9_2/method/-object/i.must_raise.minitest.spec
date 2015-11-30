kind=added
names=must_raise
visibility=public 

--- must_raise(*args) -> true
自身を評価中に与えられた例外が発生する場合、検査にパスしたことになります。

@param args 自身を評価中に発生する可能性のある例外クラスを一つ以上指定します。

@raise MiniTest::Assertion 自身を評価した結果、例外が発生しない場合に発生します。
                           また、自身を評価中に発生した例外が、与えられた例外
                           またはそのサブクラスでない場合に発生します。

@see [[m:MiniTest::Assertions#assert_raises]]

