kind=defined
names=define_task
visibility=public

--- define_task(*args){ ... } -> Rake::Task

与えられたパラメータと省略可能なブロックを用いてタスクを定義します。

同名のタスクが存在する場合は、事前タスクとアクションを既に存在するタスクに追加します。

@param args パラメータを指定します。

