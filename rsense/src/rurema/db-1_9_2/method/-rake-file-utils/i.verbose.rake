kind=defined
names=verbose
visibility=public 

--- verbose(value = nil){ ... }

詳細を出力するかどうかを制御します。

@param value 真を指定すると詳細を出力します。

例
    verbose              # 現在の状態を返します。
    verbose(v)           # 与えられた状態に変更します。
    verbose(v) { code }  # ブロックを評価する間だけ与えられた状態に変更します。
                         # ブロックの評価が終わると元の値に戻します。

