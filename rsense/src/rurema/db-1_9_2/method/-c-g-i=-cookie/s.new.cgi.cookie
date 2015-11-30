kind=defined
names=new
visibility=public

--- new(name = "", *value) -> CGI::Cookie

クッキーオブジェクトを作成します。

第一引数にハッシュを指定する場合は、以下のキーが使用可能です。

: name
  クッキーの名前を指定します。必須。
: value
  クッキーの値、または値のリストを指定します。
: path
  このクッキーを適用するパスを指定します。デフォルトはこの CGI スクリプトのベースディレクトリです。
: domain
  このクッキーを適用するドメインを指定します。
: expires
  このクッキーの有効期限を [[c:Time]] のインスタンスで指定します。
: secure
  真を指定すると、このクッキーはセキュアクッキーになります。
  デフォルトは偽です。セキュアクッキーは HTTPS の時のみ送信されます。

@param name クッキーの名前を文字列で指定します。
            クッキーの名前と値を要素とするハッシュを指定します。

@param value name が文字列である場合、値のリストを一つ以上指定します。

        例：
        cookie1 = CGI::Cookie.new("name", "value1", "value2", ...)
        cookie1 = CGI::Cookie.new({"name" => "name", "value" => "value"})
        cookie1 = CGI::Cookie.new({'name'    => 'name',
                                   'value'   => ['value1', 'value2', ...],
                                   'path'    => 'path',   # optional
                                   'domain'  => 'domain', # optional
                                   'expires' => Time.now, # optional
                                   'secure'  => true      # optional
                                  })

        cgi.out({"cookie" => [cookie1, cookie2]}){ "string" }

        name    = cookie1.name
        values  = cookie1.value
        path    = cookie1.path
        domain  = cookie1.domain
        expires = cookie1.expires
        secure  = cookie1.secure

        cookie1.name    = 'name'
        cookie1.value   = ['value1', 'value2', ...]
        cookie1.path    = 'path'
        cookie1.domain  = 'domain'
        cookie1.expires = Time.now + 30
        cookie1.secure  = true

