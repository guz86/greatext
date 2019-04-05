# encoding: utf-8


# для .mb_chars.upcase
require "active_support/all"


# Открываем файл находим фразу и подменяем ее на пустоту.

#logo_path = File.join( File.dirname(__FILE__), '../logo.txt' )
#file = File.open( logo_path )


# Открываем файл text.txt
content = File.read("text.txt")
#puts content.class  
content.encode!('utf-8')

puts content   

puts "------Оригинал"

# Убираем слова из текста в contents

content.gsub!(/\bярко\b/, '')
content.gsub!(/\bлучше всего\b/, 'лучше')

# Проблема съедает часть слова
# puts content.gsub!('боч', '') 
# плохой вариант puts content.gsub!(/\bярко\b/, '')
#'mislocated cat, vindicating'.gsub(/\bcat\b/, 'dog')


# Убираем слова из текста в contents, если они начинаются с большой буквы

#puts content.gsub!('Оптимальная', 'лучше')


puts content.gsub!(/\bОптимальная\b/, '')
puts content.gsub!(/\bТаким образом, \b/, '')

puts "-----------Без слов с большой буквы"

# Убираем двойные, тройные пробелы из текста

puts content.gsub!('   ', ' ')
puts content.gsub!('  ', ' ')

puts "----------Бездвойных пробелов выше."

# Исправляем маленькие буквы перед точкой на большие
#puts "Жыло-было шыбко шыпящее жывотное".gsub(/([ЖШжш])ы/){ $1 + "и" }

#puts content.gsub!(/. (д)/, ' Д')
puts content.gsub!(/(\. [а-я])/){ $1.to_s.mb_chars.upcase }

puts "---------С большой буквы"
 


#puts "Финальный"
#puts content

#puts "Привет пока".class
# puts "Terribly complex".gsub "complex", "simple" # => "Terribly simple"
#  puts "Привет пока".gsub "пока", "привет" # => "Terribly simple"





