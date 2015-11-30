kind=defined
names=sub
visibility=public 

--- sub(pattern, replace) -> Rake::FileList

自身に含まれるファイルリストのそれぞれのエントリに対して [[m:String#sub]] を実行し、
結果を新しい [[c:Rake::FileList]] として返します。

例:
   FileList['a.c', 'b.c'].sub(/\.c$/, '.o')  => ['a.o', 'b.o']


