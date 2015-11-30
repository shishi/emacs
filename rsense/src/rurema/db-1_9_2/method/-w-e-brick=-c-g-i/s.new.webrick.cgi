kind=defined
names=new
visibility=public

--- new(config = {}, *options)    -> WEBrick::CGI

WEBrick::CGI オブジェクトを生成してかえします。

@param config 設定を保存したハッシュを指定します。

config で有効なキーとその値は以下のとおりです。
キーはすべて [[c:Symbol]] オブジェクトです。

: :ServerName     
 サーバ名を文字列で指定します。デフォルトでは ENV["SERVER_SOFTWARE"] が使われます。
 ENV["SERVER_SOFTWARE"] が nil の場合は "null" が使われます。
: :HTTPVersion
 HTTP バージョンを [[c:WEBrick::HTTPVersion]] オブジェクトで指定します。
 デフォルトでは ENV["SERVER_PROTOCOL"] の HTTP バージョンが使われます。 
 ENV["SERVER_PROTOCOL"] が nil の場合 HTTP バージョンは 1.0 です。
: :NPH            
 NPH スクリプトとして実行される場合に true を指定します。そうでない場合に false を指定します。
 デフォルトは false です。
: :Logger 
 ログを取るための [[c:WEBrick::BasicLog]] オブジェクトを指定します。デフォルトでは標準エラー出力に
 ログが出力されます。
: :RequestTimeout
 リクエストを読み込む時のタイムアウトを秒で指定します。デフォルトは 30 秒です。
: :Escape8bitURI
 この値が true の場合、クライアントからのリクエスト URI に含まれる 8bit 目が立った文字をエスケープします。
 デフォルトは false です。 

@param options ユーザがこのクラスを継承して作成したクラスで @options というインスタンス変数として使用できます。

