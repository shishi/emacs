#!/usr/local/bin/ruby19
# -*- coding: utf-8 -*-
def make_index(input, output=$>)
  headlines = []
  input.readlines.each do |line|
    next if line =~ /^=(begin|end)$/
    if line =~ /^(=+|\++)\s*(.+)$/
      mark, headline = $1, $&

      level = (mark =~ /=+/ ? mark.length : (mark.length+4))
      headlines[level-1] = headline
      headlines[level..-1] = nil
      output.puts sexp(headlines, input.path)
    end
    if line =~ /^---\s*(.+)$/
      output.puts sexp(headlines + [$&], input.path)
    end
  end
end

def sexp(headlines, path)
  pos_spec = headlines.compact.reverse.map(&:inspect).join ' '
  %Q!(find-rurima #{pos_spec} #{path.inspect})\n!
end


if __FILE__==$0
  dir, output_file, = ARGV
  Dir.chdir(dir || ".")
  output = output_file ? open(File.expand_path(output_file, dir), "w") : $>
  $stderr.puts "document directory: #{dir}"
  $stderr.puts "output: #{output.inspect}"
  dirs_ary = [
    "refm/api/src/_builtin/*",  # 組み込みクラス・モジュール
    "refm/api/**/*",           # 添付ライブラリ
    "refm/{doc,old,capi}/**/*.rd", # 文法など、古い情報、C API
    "faq/**/*.rd",                 # FAQ
  ]
  for file in dirs_ary.map{|f| Dir[f]}.flatten
    next unless File.file? file
    $stderr.puts file
    make_index open(file, "r:EUC-JP"), output
  end
end
# (executable-interpret "ar-index.rb  ~/compile/rurima/rubydoc/ rurima.e")
