methods=
sublibraries=
requires=webrick.httpstatus,webrick.httprequest,webrick.htmlutils,webrick.cookie,webrick.httputils,webrick.httpresponse,webrick.httpversion,webrick.log,webrick.utils,webrick.config
classes=WEBrick=CGI,WEBrick=CGI=CGIError
is_sublibrary=true

一般の CGI 環境で [[lib:webrick]] ライブラリのサーブレットと同じように CGI スクリプトを書くための
ライブラリです。サーバが WEBrick でなくても使うことが出来ます。

=== 使い方

WEBrick のサーブレットを作成するのと同じように、[[c:WEBrick::CGI]] のサブクラスでメソッド
do_GET や do_POST を定義することによって CGI スクリプトを書きます。

スクリプトの最後で [[m:WEBrick::CGI#start]] メソッドを呼ぶ必要があります。
WEBrick::CGI#start メソッドは service メソッドを呼び出し、service メソッドはリクエストに応じて
do_XXX メソッドを呼び出します。このようにしてスクリプトは実行されます。

例:

 #!/usr/local/bin/ruby
 require 'webrick/cgi'

 class MyCGI < WEBrick::CGI
   def do_GET(req, res)
     res["content-type"] = "text/plain"
     ret = "hoge\n"
     res.body = ret
   end
 end
 
 MyCGI.new.start()

==== do_XXX メソッド

do_XXX メソッドの XXX には GET, HEAD, POST, PUT, DELETE, OPTIONS が使用できます。

[[c:WEBrick::CGI]] のサブクラスで定義された do_XXX メソッドは [[m:WEBrick::CGI#service]] メソッド
から HTTP のリクエストに応じて自動的に呼び出されます。
なので [[c:WEBrick::CGI]] のサブクラスはこれらのメソッドを適切に実装しなければなりません。
これらのメソッドの返り値は特に規定されていません。

[[c:WEBrick::CGI]] のサブクラスでは、クライアントが使う可能性のある RFC で定義された HTTP の
メソッドはすべて実装する必要があります。
クライアントからのリクエストに使われないと分かっているメソッドは実装しなくてもかまいません。
実装されていない HTTP メソッドであった場合、[[m:WEBrick::CGI#service]] メソッドが例外を発生させます。

do_XXX メソッドが呼ばれた時点では、クライアントからのリクエストに含まれる Entity Body の読み込みは
まだ行われていません。[[m:WEBrick::HTTPRequest#query]], [[m:WEBrick::HTTPRequest#body]] などの
メソッドが読ばれた時点で読み込みが行われます。クライアントから巨大なデータが送られてくることを考慮して
ユーザはプログラミングを行うべきです。

do_XXX メソッドには二つの引数があります。
第一引数は、クライアントからのリクエストを表す [[c:WEBrick::HTTPRequest]] オブジェクトです。
第二引数は、クライアントへのレスポンスを表す [[c:WEBrick::HTTPResponse]] オブジェクトです。

==== フォームフィールドの値を得る

フォームフィールドの値は [[m:WEBrick::HTTPRequest#query]] メソッドが返す Hash オブジェクトに
収納されています。

 require "webrick/cgi"
 class MyCGI < WEBrick::CGI
   def do_GET(req, res)
     req.query               #=> Hash を返します。
     req.query['q']          
     req.query['num']       
   end
 end
 MyCGI.new.start()

同じ名前のフィールドが複数ある場合、list メソッドや each_data メソッドを使います。

 require "webrick/cgi"
 class MyCGI < WEBrick::CGI
   def do_GET(req, res)
     req.query['q'].list     #=> フォームの値を保持した文字列の配列を返します。
   end
 end
 MyCGI.new.start()

query メソッドが返す Hash オブジェクトのキーと値のうち値は [[c:WEBrick::HTTPUtils::FormData]] クラスの
インスタンスになります。FormData クラスは String クラスのサブクラスです。


==== マルチパートフィールドの値を取得する（ファイル送信）

 require "webrick/cgi"
 class MyCGI < WEBrick::CGI
   def do_GET(req, res)
     d = req.query['field_name']   #=> FormData クラスのインスタンス
     d.name                        #=> "field_name"
     d.filename                    #=> もしあればファイル名を返す。
     d['content-type']             #=> ヘッダの値は [] メソッドで取得する
     d                             #=> 送られてきたファイルの中身
   end
 end
 MyCGI.new.start()


==== クライアントにクッキーを渡す

 require "webrick/cgi"
 class MyCGI < WEBrick::CGI
   def do_GET(req, res)
     c1 = WEBrick::Cookie.new("name1", "val1")
     c1.expires = Time.now + 30
     res.cookies << c1
     
     c2 = WEBrick::Cookie.new("name2", "val2")
     c2.expires = Time.now + 30
     res.cookies << c2
   end
 end
 MyCGI.new.start()

==== クライアントからクッキーを得る

 require "webrick/cgi"
 class MyCGI < WEBrick::CGI
   def do_GET(req, res)
     req.cookies                                   #=> WEBrick::Cookie オブジェクトの配列
     c = req.cookies.find{|c| c.name == "name1" }  #=> WEBrick::Cookie オブジェクト
   end
 end
 MyCGI.new.start()


==== CGI に関連する環境変数の値を取得する

CGI に関連する環境変数の値は直接 ENV から得る他に、
WEBrick::HTTPRequest オブジェクトの各メソッドから得ることができます。

 require "webrick/cgi"
 class MyCGI < WEBrick::CGI
   def do_GET(req, res)
     req.content_length
     req.content_type
     req.path_info
     req.query_string
     req.peeraddr
     req.host
     req.user
     req.request_method
     req.script_name
     req.port
   end
 end
 MyCGI.new.start()

=== リンク

 * [[rfc:3875]]
