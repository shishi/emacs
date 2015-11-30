kind=added
names=sh
visibility=public 

--- sh(*cmd){|result, status| ... }

与えられたコマンドを実行します。

与えられた引数が複数の場合、シェルを経由しないでコマンドを実行します。

@param cmd 引数の解釈に関しては [[m:Kernel.#exec]] を参照してください。


例:
   sh %{ls -ltr}
   
   sh 'ls', 'file with spaces'
   
   # check exit status after command runs
   sh %{grep pattern file} do |ok, res|
     if ! ok
       puts "pattern not found (status = #{res.exitstatus})"
     end
   end

@see [[m:Kernel.#exec]], [[m:Kernel.#system]]


