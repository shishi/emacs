kind=defined
names=make
visibility=public

--- make(dest_path, results)

Makefile を編集して make, make install を実行します。

@param dest_path ???

@param results 結果を入れるための配列です。この変数は破壊的に変更されます。

@raise Gem::InstallError Makefile が存在しない場合に発生します。

@raise Gem::InstallError make の実行に失敗した場合に発生します。

