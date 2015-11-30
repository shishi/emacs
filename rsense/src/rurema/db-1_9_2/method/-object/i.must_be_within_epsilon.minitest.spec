kind=added
names=must_be_within_epsilon
visibility=public 

--- must_be_within_epsilon(actual, epsilon = 0.001) -> true
自身と実際の値の相対誤差が許容範囲内である場合、検査にパスしたことになります。

@param actual 実際の値を指定します。

@param epsilon 許容する相対誤差を指定します。

@raise MiniTest::Assertion 検査に失敗した場合に発生します。

