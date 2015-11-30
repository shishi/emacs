kind=defined
names=run
visibility=public

--- run(command, results)

与えられたコマンドを実行します。

@param command 実行するコマンドを文字列で指定します。

@param results 結果を入れるための配列です。この変数は破壊的に変更されます。

@raise Gem::InstallError コマンドの実行に失敗した場合に発生します。
