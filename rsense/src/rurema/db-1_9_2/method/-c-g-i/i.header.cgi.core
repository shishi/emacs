kind=defined
names=header
visibility=public

--- header(options = "text/html") -> String

HTTP ヘッダを options に従って生成します。 [[m:CGI#out]] と違い、標準出力には出力しません。
[[m:CGI#out]] を使わずに自力で HTML を出力したい場合などに使います。
このメソッドは文字列エンコーディングを変換しません。

ヘッダのキーとしては以下が利用可能です。

: type
  Content-Type ヘッダです。デフォルトは "text/html" です。
: charset
  ボディのキャラクタセットを Content-Type ヘッダに追加します。
: nph
  真偽値を指定します。真ならば、HTTP のバージョン、ステータスコード、
  Date ヘッダをセットします。また Server と Connection の各ヘッダにもデフォルト値をセットします。
  偽を指定する場合は、これらの値を明示的にセットしてください。
: status
  HTTP のステータスコードを指定します。
  このリストの下に利用可能なステータスコードのリストがあります。
: server
  サーバソフトウェアの名称指定します。Server ヘッダに対応します。
: connection
  接続の種類を指定します。Connection ヘッダに対応します。
: length
  送信するコンテンツの長さを指定します。Content-Length ヘッダに対応します。
: language
  送信するコンテンツの言語を指定します。Content-Language ヘッダに対応します。
: expires
  送信するコンテンツの有効期限を [[c:Time]] のインスタンスで指定します。
  Expires ヘッダに対応します。
: cookie
  クッキーとして文字列か [[c:CGI::Cookie]] のインスタンス、またはそれらの配列かハッシュを指定します。
  一つ以上の Set-Cookie ヘッダに対応します。

status パラメータには以下の文字列が使えます。

        "OK"                  --> "200 OK"
        "PARTIAL_CONTENT"     --> "206 Partial Content"
        "MULTIPLE_CHOICES"    --> "300 Multiple Choices"
        "MOVED"               --> "301 Moved Permanently"
        "REDIRECT"            --> "302 Found"
        "NOT_MODIFIED"        --> "304 Not Modified"
        "BAD_REQUEST"         --> "400 Bad Request"
        "AUTH_REQUIRED"       --> "401 Authorization Required"
        "FORBIDDEN"           --> "403 Forbidden"
        "NOT_FOUND"           --> "404 Not Found"
        "METHOD_NOT_ALLOWED"  --> "405 Method Not Allowed"
        "NOT_ACCEPTABLE"      --> "406 Not Acceptable"
        "LENGTH_REQUIRED"     --> "411 Length Required"
        "PRECONDITION_FAILED" --> "412 Rrecondition Failed"
        "SERVER_ERROR"        --> "500 Internal Server Error"
        "NOT_IMPLEMENTED"     --> "501 Method Not Implemented"
        "BAD_GATEWAY"         --> "502 Bad Gateway"
        "VARIANT_ALSO_VARIES" --> "506 Variant Also Negotiates"

@param options [[c:Hash]] か文字列で HTTP ヘッダを生成するための情報を指定します。

例：
        header
          # Content-Type: text/html

        header("text/plain")
          # Content-Type: text/plain

        header({"nph"        => true,
                "status"     => "OK",  # == "200 OK"
                  # "status"     => "200 GOOD",
                "server"     => ENV['SERVER_SOFTWARE'],
                "connection" => "close",
                "type"       => "text/html",
                "charset"    => "iso-2022-jp",
                  # Content-Type: text/html; charset=iso-2022-jp
                "language"   => "ja",
                "expires"    => Time.now + 30,
                "cookie"     => [cookie1, cookie2],
                "my_header1" => "my_value"
                "my_header2" => "my_value"})

例：
        cgi = CGI.new('html3')
        print cgi.header({"charset" => "shift_jis", "status" => "OK"})
        print "<html><head><title>TITLE</title></head>\r\n"
        print "<body>BODY</body></html>\r\n"

@see [[ruby-list:35911]]

