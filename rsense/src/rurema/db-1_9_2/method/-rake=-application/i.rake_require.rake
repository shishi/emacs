kind=defined
names=rake_require
visibility=public 

--- rake_require(file_name, paths = $LOAD_PATH, loaded = $") -> bool

[[m:Kernel#require]] に似ていますが、*.rb ファイルではなく *.rake ファイルを探索します。

@param file_name ロードするファイル名を指定します。

@param paths ロードパスを指定します。

@param loaded ロード済みのファイルリストを指定します。

@raise LoadError 指定されたファイルが見つからなかった場合に発生します。

