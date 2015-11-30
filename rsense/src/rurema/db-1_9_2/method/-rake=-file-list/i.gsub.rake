kind=defined
names=gsub
visibility=public 

--- gsub(pattern, replace) -> Rake::FileList

自身に含まれるファイルリストのそれぞれのエントリに対して [[m:String#gsub]] を実行し、
結果を新しい [[c:Rake::FileList]] として返します。

 例:
   FileList['lib/test/file', 'x/y'].gsub(/\//, "\\") # => ['lib\\test\\file', 'x\\y']

