#encoding: cp866

# Открываем файл находим фразу и подменяем ее на пустоту.

#logo_path = File.join( File.dirname(__FILE__), '../logo.txt' )
#file = File.open( logo_path )


# Открываем файл text.txt
content = File.read("text.txt")
#puts content.class  



puts content   





puts "------"


# Убираем слова из текста в contents

puts content.gsub!(/\bярко\b/, '')

puts content.gsub!(/\bлучше всего\b/, 'лучше')

# Проблема съедает часть слова
# puts content.gsub!('боч', '') 
# плохой вариант puts content.gsub!(/\bярко\b/, '')
#'mislocated cat, vindicating'.gsub(/\bcat\b/, 'dog')


# Убираем слова из текста в contents, если они начинаются с большой буквы

#puts content.gsub!('Оптимальная', 'лучше')






puts "Финальный"

# Убираем двойные пробелы в contents

puts content.gsub!('  ', ' ')




#puts "Привет пока".class
# puts "Terribly complex".gsub "complex", "simple" # => "Terribly simple"
#  puts "Привет пока".gsub "пока", "привет" # => "Terribly simple"