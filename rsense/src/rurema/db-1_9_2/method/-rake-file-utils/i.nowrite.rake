kind=defined
names=nowrite
visibility=public 

--- nowrite(value = nil){ ... }

ファイルを書き込むかどうかを制御します。

@param value 真を指定するとファイルを書き込みません。

例:
    nowrite              # 現在の状態を返します。
    nowrite(v)           # 与えられた状態に変更します。
    nowrite(v) { code }  # ブロックを評価する間だけ与えられた状態に変更します。
                         # ブロックの評価が終わると元の値に戻します。


