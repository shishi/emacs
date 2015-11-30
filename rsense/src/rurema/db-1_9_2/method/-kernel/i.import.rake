kind=added
names=import
visibility=private 

--- import(*filenames)

分割された Rakefile をインポートします。

インポートされたファイルは、現在のファイルが完全にロードされた後でロードされます。
このメソッドはインポートするファイルのどこで呼び出されてもかまいません。
また、インポートされるファイル内に現れるオブジェクトはインポートするファイル内で定義
されているオブジェクトに依存していてもかまいません。

このメソッドは依存関係を定義したファイルを読み込むのによく使われます。

@param filenames インポートする Rakefile を指定します。

例:
   import ".depend", "my_rules"


