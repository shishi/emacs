kind=defined
names=append
visibility=public 

--- append(task_name) -> Rake::InvocationChain

与えられたタスク名を追加して新しい [[c:Rake::InvocationChain]] を返します。

@param task_name 追加するタスク名を指定します。

@raise RuntimeError 循環したタスクの呼び出しを検出した場合に発生します。

