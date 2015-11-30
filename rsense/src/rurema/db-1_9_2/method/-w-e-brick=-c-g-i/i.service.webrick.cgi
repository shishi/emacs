kind=defined
names=service
visibility=public

--- service(req, res)     -> ()

指定された [[c:WEBrick::HTTPRequest]] オブジェクト req の [[m:WEBrick::HTTPRequest#request_method]] に応じて、
自身の do_GET, do_HEAD, do_POST, do_OPTIONS... いずれかのメソッドを req と res を引数として呼びます。

特に理由が無い限り [[c:WEBrick::CGI]] のサブクラスがこのメソッドを定義する必要はありません。

@param req クライアントからのリクエストを表す [[c:WEBrick::HTTPRequest]] オブジェクトです。

@param res クライアントへのレスポンスを表す [[c:WEBrick::HTTPResponse]] オブジェクトです。

@raise WEBrick::HTTPStatus::MethodNotAllowed 指定された
       [[c:WEBrick::HTTPRequest]] オブジェクト req が自身に定義されてい
       ないHTTP のメソッドであった場合発生します。

