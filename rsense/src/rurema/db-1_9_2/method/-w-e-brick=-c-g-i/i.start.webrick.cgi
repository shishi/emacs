kind=defined
names=start
visibility=public

--- start(env = ENV, stdin = $stdin, stdout = $stdout)     -> ()

自身に定義されたサービスを実行します。

start メソッドは service メソッドを呼び出し、service メソッドはリクエストに応じて
do_XXX メソッドを呼び出します。このようにして CGI スクリプトは実行されます。

@param env CGI スクリプトが受け取った Meta-Variables (環境変数)を保持したハッシュか、
           それと同じ [] メソッドを持ったオブジェクトを指定します。

@param stdin リクエストデータの入力元を [[c:IO]] オブジェクトで指定します。

@param stdout レスポンスデータの出力先を [[c:IO]] オブジェクトで指定します。

