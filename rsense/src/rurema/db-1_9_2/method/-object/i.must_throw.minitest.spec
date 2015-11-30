kind=added
names=must_throw
visibility=public 

--- must_throw(tag) -> true
自身を評価中に、与えられたタグが [[m:Kernel.#throw]] された場合、検査にパスしたことになります。

@param tag 自身を評価中に [[m:Kernel.#throw]] されるタグを任意のオブジェクトとして指定します。

@raise MiniTest::Assertion 与えられたタグが [[m:Kernel.#throw]] されなかった場合に発生します。

@see [[m:MiniTest::Assertions#assert_throws]]

