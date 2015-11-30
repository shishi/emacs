kind=added
names=task
visibility=private 

--- task(*args){ ... } -> Rake::Task

Rake タスクを定義します。

@param args タスク名と依存タスクを指定します。

例:
  task :clobber => [:clean] do
    rm_rf "html"
  end

@see [[m:Rake::Task.define_task]]


