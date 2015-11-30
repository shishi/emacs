kind=defined
names=include
visibility=public 

--- include(*filenames) -> self

与えられたパターンを自身に追加します。

@param filenames 追加するファイル名のパターンを指定します。

例:
   file_list.include("*.java", "*.cfg")
   file_list.include %w( math.c lib.h *.o )

