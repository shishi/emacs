kind=added
names=namespace
visibility=private 

--- namespace(name = nil){ ... } -> Rake::NameSpace

新しい名前空間を作成します。

与えられたブロックを評価する間は、その名前空間を使用します。

例:
   ns = namespace "nested" do
     task :run
   end
   task_run = ns[:run] # find :run in the given namespace.

@see [[m:Rake::TaskManager#in_namespace]]

