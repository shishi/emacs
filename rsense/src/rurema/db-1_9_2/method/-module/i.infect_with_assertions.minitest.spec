kind=added
names=infect_with_assertions
visibility=public 

--- infect_with_assertions(positive_prefix, negative_prefix, skip_regexp, map = {}) -> ()

BDD 風にテストを書くために使用するメソッド群を定義します。

@param positive_prefix assert の代わりのプレフィックスを指定します。

@param negative_prefix refute の代わりのプレフィックスを指定します。

@param skip_regexp この正規表現にマッチしたメソッドは定義しません。

@param map メソッド名の変換規則のハッシュを指定します。

