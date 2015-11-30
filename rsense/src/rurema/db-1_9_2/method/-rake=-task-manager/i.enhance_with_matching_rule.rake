kind=defined
names=enhance_with_matching_rule
visibility=public 

--- enhance_with_matching_rule(task_name, level = 0) -> Rake::Task | nil

与えられたタスク名にマッチしたルールが存在する場合は、そのタスクに見つかったルールの
事前タスクとアクションを追加して返します。

@param task_name タスクの名前を指定します。

@param level 現在のルール解決のネストの深さを指定します。

@raise RuntimeError ルールの解決時にオーバーフローした場合に発生します。

