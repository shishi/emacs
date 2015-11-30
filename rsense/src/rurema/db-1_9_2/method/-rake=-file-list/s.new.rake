kind=defined
names=new
visibility=public

--- new(*patterns){|self| ... }

与えられたパターンをもとにして自身を初期化します。

ブロックが与えられている場合は、自身をブロックパラメータとしてブロックを評価します。

@param patterns パターンを指定します。

例:
   file_list = FileList.new('lib/**/*.rb', 'test/test*.rb')
   
   pkg_files = FileList.new('lib/**/*') do |fl|
     fl.exclude(/\bCVS\b/)
   end


