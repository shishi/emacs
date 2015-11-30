kind=defined
names=when_writing
visibility=public 

--- when_writing(msg = nil){ ... }

[[m:RakeFileUtils.nowrite_flag]] が真である場合与えられたブロックを実行せずに、
与えられたメッセージを表示します。

そうでない場合は、与えられたブロックを実行します。

@param msg 表示するメッセージを指定します。

例:
  when_writing("Building Project") do
    project.build
  end

