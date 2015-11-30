kind=defined
names=run
visibility=public 

--- run

Rake アプリケーションを実行します。

このメソッドは以下の 3 ステップを実行します。

 * コマンドラインオプションを初期化します。[[m:Rake::Application#init]]
 * タスクを定義します。[[m:Rake::Application#load_rakefile]]
 * コマンドラインで指定されたタスクを実行します。[[m:Rake::Application#top_level]]

