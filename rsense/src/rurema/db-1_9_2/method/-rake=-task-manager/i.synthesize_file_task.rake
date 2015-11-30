kind=defined
names=synthesize_file_task
visibility=public 

--- synthesize_file_task(task_name) -> Rake::FileTask | nil

与えられたタスク名をもとにファイルタスクを合成します。

@param task_name タスク名を指定します。

@return 与えられたタスク名と同名のファイルが存在する場合は、ファイルタスクを作成して返します。
        そうでない場合は nil を返します。

@raise RuntimeError タスクを合成できなかった場合に発生します。

