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

#ПУНКТ 1. Убираем слова паразиты в contents

# сначало длинное, потом с запятой, потом короткое слово.

#content.gsub!(/\bярко\b/, '')
content.gsub!(/\bлучше всего\b/, 'лучше')

content.gsub!(/\bчаще всего\b/, 'чаще')

content.gsub!(/\bпрежде всего, \b/, '')
content.gsub!(/\bпрежде всего\b/, '')

content.gsub!(/\bкроме этого, \b/, '')
content.gsub!(/\bкроме этого\b/, '')

content.gsub!(/\bкроме того, \b/, '')
content.gsub!(/\bкроме того\b/, '')

content.gsub!(/\bтаким образом,\b/, '')
content.gsub!(/\bтаким образом\b/, '')

content.gsub!(/\bтаким образом,\b/, '')
content.gsub!(/\bтаким образом\b/, '')

content.gsub!(/\bа также,\b/, '')
content.gsub!(/\bа также\b/, '')

content.gsub!(/\bтакже,\b/, '')
content.gsub!(/\bтакже\b/, '')

content.gsub!(/\bпри этом,\b/, '')
content.gsub!(/\bпри этом\b/, '')

content.gsub!(/\bследует учесть, что\b/, '')
content.gsub!(/\bследует учесть что\b/, '')

content.gsub!(/\bследует знать, что\b/, '')
content.gsub!(/\bследует знать что\b/, '')

content.gsub!(/\bследует помнить, что\b/, '')
content.gsub!(/\bследует помнить что\b/, '')

content.gsub!(/\bследует учесть, что\b/, '')
content.gsub!(/\bследует учесть что\b/, '')

content.gsub!(/\bследует заметить, что\b/, '')
content.gsub!(/\bследует заметить что\b/, '')

content.gsub!(/\bследует помнить, что\b/, '')
content.gsub!(/\bследует помнить что\b/, '')

content.gsub!(/\bв этом случае,\b/, '')
content.gsub!(/\bв этом случае\b/, '')

content.gsub!(/\bв таком случае,\b/, '')
content.gsub!(/\bв таком случае\b/, '')

content.gsub!(/\bв такой ситуации,\b/, '')
content.gsub!(/\bв такой ситуации\b/, '')

content.gsub!(/\bв этой ситуации,\b/, '')
content.gsub!(/\bв этой ситуации\b/, '')

content.gsub!(/\bпосле этого периода\b/, '')
content.gsub!(/\bпосле этого срока\b/, '')
content.gsub!(/\bпосле этого,\b/, '')
content.gsub!(/\bпосле этого\b/, '')

content.gsub!(/\bиз–за этого,\b/, '')
content.gsub!(/\bиз–за этого\b/, '')

content.gsub!(/\bпомимо этого,\b/, '')
content.gsub!(/\bпомимо этого\b/, '')

content.gsub!(/\bвполне\b/, '')

content.gsub!(/\bтем не менее,\b/, '')
content.gsub!(/\bтем не менее\b/, '')

content.gsub!(/\bдля того,\b/, '')
content.gsub!(/\bдля того\b/, '')

content.gsub!(/\bтак как\b/, '')

content.gsub!(/\bвесьма\b/, '')

content.gsub!(/\bочень\b/, '')

content.gsub!(/\bвсего лишь\b/, '')
content.gsub!(/\bлишь\b/, '')

content.gsub!(/\bв том случае,\b/, '')
content.gsub!(/\bв том случае\b/, '')

content.gsub!(/\bв данном случае,\b/, '')
content.gsub!(/\bв данном случае\b/, '')

content.gsub!(/\bкакого-либо\b/, '')

content.gsub!(/\bсегодня\b/, '')

content.gsub!(/\bа именно\b/, '')
content.gsub!(/\bименно\b/, '')

content.gsub!(/\bне редко\b/, '')
content.gsub!(/\bнередко\b/, '')

content.gsub!(/\bвпрочем,\b/, '')
content.gsub!(/\bвпрочем\b/, '')

content.gsub!(/\bв наше время,\b/, '')
content.gsub!(/\bв наше время\b/, '')

content.gsub!(/\bпрактически\b/, '')

content.gsub!(/\bна самом деле,\b/, '')
content.gsub!(/\bна самом деле\b/, '')

content.gsub!(/\bстоит отметить, что\b/, '')
content.gsub!(/\bстоит отметить что\b/, '')








content.gsub!(/\bэтого\b/, '')           #это надо добавить в самый конец перед удалением двойных пробелов





# Проблема съедает часть слова
# puts content.gsub!('боч', '') 
# плохой вариант puts content.gsub!(/\bярко\b/, '')
#'mislocated cat, vindicating'.gsub(/\bcat\b/, 'dog')


#ПУНКТ 2. Убираем слова из текста в contents, если они начинаются с большой буквы

#puts content.gsub!('Оптимальная', 'лучше')


#puts content.gsub!(/\bОптимальная\b/, '')
puts content.gsub!(/\bТаким образом, \b/, '')
puts content.gsub!(/Кстати, \b/, '')

puts "-----------Без слов с большой буквы"

# Убираем двойные, тройные пробелы из текста

puts content.gsub!('   ', ' ')
puts content.gsub!('  ', ' ')

puts "----------Бездвойных пробелов выше."


# ПОПРАВИТЬ ПРОБЕЛ ЗАПЯТАЯ !!!!!!!!!!
# ПОПРАВИТЬ ПРОБЕЛ ТОЧКА !!!!!!!!!!
# ПОПРАВИТЬ ПРОБЕЛ ? !!!!!!!!!!
# ПОПРАВИТЬ ПРОБЕЛ ! !!!!!!!!!!

# Исправляем маленькие буквы перед точкой на большие
#puts "Жыло-было шыбко шыпящее жывотное".gsub(/([ЖШжш])ы/){ $1 + "и" }

#puts content.gsub!(/. (д)/, ' Д')
puts content.gsub!(/(\. [а-я])/){ $1.to_s.mb_chars.upcase }


puts content.gsub!(/(^[а-я])/){ $1.to_s.mb_chars.upcase }


# Исправляем маленькие буквы перед !
puts content.gsub!(/(\! [а-я])/){ $1.to_s.mb_chars.upcase }

# Исправляем маленькие буквы перед ?
puts content.gsub!(/(\? [а-я])/){ $1.to_s.mb_chars.upcase }


puts "---------С большой буквы"

#puts "Финальный"
#puts content

#puts "Привет пока".class
# puts "Terribly complex".gsub "complex", "simple" # => "Terribly simple"
#  puts "Привет пока".gsub "пока", "привет" # => "Terribly simple"





