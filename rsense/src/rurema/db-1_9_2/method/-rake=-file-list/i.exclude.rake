kind=defined
names=exclude
visibility=public 

--- exclude(*patterns){|entry| ... } -> self

自身から取り除くべきファイル名のパターンを自身の除外リストに登録します。

パターンとして正規表現、グロブパターン、文字列が使用可能です。
さらにブロックが与えられた場合は、ブロックを評価して真になったエントリを削除します。

グロブパターンはファイルシステムに対して展開されます。
もし、ファイルシステムに存在しないファイルを明示的にリストへ追加した場合、
グロブパターンではそのファイルをリストから削除しません。

例:
  FileList['a.c', 'b.c'].exclude("a.c") # => ['b.c']
  FileList['a.c', 'b.c'].exclude(/^a/)  # => ['b.c']
  
  # If "a.c" is a file, then ...
  FileList['a.c', 'b.c'].exclude("a.*") # => ['b.c']
  
  # If "a.c" is not a file, then ...
  FileList['a.c', 'b.c'].exclude("a.*") # => ['a.c', 'b.c']

