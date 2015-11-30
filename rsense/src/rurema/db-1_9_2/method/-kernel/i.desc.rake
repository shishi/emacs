kind=added
names=desc
visibility=private 

--- desc(description) -> String

直後の Rake タスクの説明を登録します。

@param description 直後のタスクの説明を指定します。

例:
   desc "Run the Unit Tests"
   task :test => [:build]
     runtests
   end

