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

content.gsub!(/\bтаким образом, \b/, '')
content.gsub!(/\bтаким образом\b/, '')

content.gsub!(/\bа также, \b/, '')
content.gsub!(/\bа также\b/, '')

content.gsub!(/\bтакже, \b/, '')
content.gsub!(/\bтакже\b/, '')

content.gsub!(/\bпри этом, \b/, '')
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

content.gsub!(/\bв этом случае, \b/, '')
content.gsub!(/\bв этом случае\b/, '')

content.gsub!(/\bв таком случае, \b/, '')
content.gsub!(/\bв таком случае\b/, '')

content.gsub!(/\bв такой ситуации, \b/, '')
content.gsub!(/\bв такой ситуации\b/, '')

content.gsub!(/\bв этой ситуации, \b/, '')
content.gsub!(/\bв этой ситуации\b/, '')

content.gsub!(/\bпосле этого периода\b/, '')
content.gsub!(/\bпосле этого срока\b/, '')
content.gsub!(/\bпосле этого, \b/, '')
content.gsub!(/\bпосле этого\b/, '')

content.gsub!(/\bиз–за этого, \b/, '')
content.gsub!(/\bиз–за этого\b/, '')

content.gsub!(/\bпомимо этого, \b/, '')
content.gsub!(/\bпомимо этого\b/, '')

content.gsub!(/\bвполне\b/, '')

content.gsub!(/\bтем не менее, \b/, '')
content.gsub!(/\bтем не менее\b/, '')

content.gsub!(/\bдля того,\b/, '')
content.gsub!(/\bдля того\b/, '')

content.gsub!(/\bтак как\b/, '')

content.gsub!(/\bвесьма\b/, '')

content.gsub!(/\bочень\b/, '')

content.gsub!(/\bвсего лишь\b/, '')
content.gsub!(/\bлишь\b/, '')

content.gsub!(/\bв том случае, \b/, '')
content.gsub!(/\bв том случае\b/, '')

content.gsub!(/\bв данном случае, \b/, '')
content.gsub!(/\bв данном случае\b/, '')

content.gsub!(/\bкакого-либо\b/, '')

content.gsub!(/\bсегодня\b/, '')

content.gsub!(/\bа именно\b/, '')
content.gsub!(/\bименно\b/, '')

content.gsub!(/\bне редко\b/, '')
content.gsub!(/\bнередко\b/, '')

content.gsub!(/\bвпрочем, \b/, '')
content.gsub!(/\bвпрочем\b/, '')

content.gsub!(/\bв наше время, \b/, '')
content.gsub!(/\bв наше время\b/, '')

content.gsub!(/\bпрактически\b/, '')

content.gsub!(/\bна самом деле, \b/, '')
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
 content.gsub!(/Таким образом, \b/, '')
 content.gsub!(/Таким образом \b/, '')

 content.gsub!(/Кстати, \b/, '')
 content.gsub!(/Кстати \b/, '')

#########################
=begin
content.gsub!(/\bлучше всего\b/, 'лучше')

content.gsub!(/\bчаще всего\b/, 'чаще')

content.gsub!(/\bпрежде всего, \b/, '')
content.gsub!(/\bпрежде всего\b/, '')

content.gsub!(/\bкроме этого, \b/, '')
content.gsub!(/\bкроме этого\b/, '')

content.gsub!(/\bкроме того, \b/, '')
content.gsub!(/\bкроме того\b/, '')

content.gsub!(/\bа также, \b/, '')
content.gsub!(/\bа также\b/, '')

content.gsub!(/\bтакже, \b/, '')
content.gsub!(/\bтакже\b/, '')

content.gsub!(/\bпри этом, \b/, '')
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

content.gsub!(/\bв этом случае, \b/, '')
content.gsub!(/\bв этом случае\b/, '')

content.gsub!(/\bв таком случае, \b/, '')
content.gsub!(/\bв таком случае\b/, '')

content.gsub!(/\bв такой ситуации, \b/, '')
content.gsub!(/\bв такой ситуации\b/, '')

content.gsub!(/\bв этой ситуации, \b/, '')
content.gsub!(/\bв этой ситуации\b/, '')

content.gsub!(/\bпосле этого периода\b/, '')
content.gsub!(/\bпосле этого срока\b/, '')
content.gsub!(/\bпосле этого, \b/, '')
content.gsub!(/\bпосле этого\b/, '')

content.gsub!(/\bиз–за этого, \b/, '')
content.gsub!(/\bиз–за этого\b/, '')

content.gsub!(/\bпомимо этого, \b/, '')
content.gsub!(/\bпомимо этого\b/, '')

content.gsub!(/\bвполне\b/, '')

content.gsub!(/\bтем не менее, \b/, '')
content.gsub!(/\bтем не менее\b/, '')

content.gsub!(/\bдля того,\b/, '')
content.gsub!(/\bдля того\b/, '')

content.gsub!(/\bтак как\b/, '')

content.gsub!(/\bвесьма\b/, '')

content.gsub!(/\bочень\b/, '')

content.gsub!(/\bвсего лишь\b/, '')
content.gsub!(/\bлишь\b/, '')

content.gsub!(/\bв том случае, \b/, '')
content.gsub!(/\bв том случае\b/, '')

content.gsub!(/\bв данном случае, \b/, '')
content.gsub!(/\bв данном случае\b/, '')

content.gsub!(/\bкакого-либо\b/, '')

content.gsub!(/\bсегодня\b/, '')

content.gsub!(/\bа именно\b/, '')
content.gsub!(/\bименно\b/, '')

content.gsub!(/\bне редко\b/, '')
content.gsub!(/\bнередко\b/, '')

content.gsub!(/\bвпрочем, \b/, '')
content.gsub!(/\bвпрочем\b/, '')

content.gsub!(/\bв наше время, \b/, '')
content.gsub!(/\bв наше время\b/, '')

content.gsub!(/\bпрактически\b/, '')

content.gsub!(/\bна самом деле, \b/, '')
content.gsub!(/\bна самом деле\b/, '')

content.gsub!(/\bстоит отметить, что\b/, '')
content.gsub!(/\bстоит отметить что\b/, '')=end




#puts "-----------Без слов с большой буквы"



#ПУНКТ 3. Исправляем проблемы со знаками препинания и двойные, тройные пробелы

# Убираем двойные, тройные пробелы из текста
content.gsub!('   ', ' ')
content.gsub!('  ', ' ')

# ПОПРАВИТЬ ПРОБЕЛ ЗАПЯТАЯ !!!!!!!!!!
content.gsub!(' ,', ',')

# ПОПРАВИТЬ ПРОБЕЛ ТОЧКА !!!!!!!!!!
content.gsub!(' .', '.')

# ПОПРАВИТЬ ПРОБЕЛ ? !!!!!!!!!!
content.gsub!(' ?', '?')

# ПОПРАВИТЬ ПРОБЕЛ ! !!!!!!!!!!
content.gsub!(' !', '!')


#ПУНКТ 4. Исправляем маленькие буквы перед знаками препинания и тегами на большие

#puts "Жыло-было шыбко шыпящее жывотное".gsub(/([ЖШжш])ы/){ $1 + "и" }
#puts content.gsub!(/. (д)/, ' Д')
content.gsub!(/(\. [а-я])/){ $1.to_s.mb_chars.upcase }

# Исправляем маленькие буквы перед !
content.gsub!(/(\! [а-я])/){ $1.to_s.mb_chars.upcase }

# Исправляем маленькие буквы перед ?
content.gsub!(/(\? [а-я])/){ $1.to_s.mb_chars.upcase }

# Исправляем маленькие в начале строки
content.gsub!(/(^[а-я])/){ $1.to_s.mb_chars.upcase }


# Исправляем маленькие в начале строки учитываем strong li h3 h2 [note]
# <strong>
content.gsub!(/(<strong>[а-я])/){ $1.to_s.mb_chars.upcase }
#content.gsub!(/(<STRONG>)/){ $1.to_s.mb_chars.downcase }
content.gsub!('<STRONG>', '<strong>')



# <li>
content.gsub!(/(<li>[а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('<LI>', '<li>')
# <h2>
content.gsub!(/(<h2>[а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('<H2>', '<h2>')
# <h3>
content.gsub!(/(<h3>[а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('<H3>', '<h3>')
# [note]
content.gsub!(/(\[note\][а-я])/){ $1.to_s.mb_chars.upcase }
puts  content.gsub!('[NOTE]', '[note]')

puts "---------С большой буквы"

#puts "Финальный"
#puts content

#puts "Привет пока".class
# puts "Terribly complex".gsub "complex", "simple" # => "Terribly simple"
#  puts "Привет пока".gsub "пока", "привет" # => "Terribly simple"





