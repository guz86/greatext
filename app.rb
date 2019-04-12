# encoding: utf-8

# 886 кодировка не поддерживает некоторые спецсимволы
# перед проверкой файла заменить — на -    « »  на "  –  на  -  


# для .mb_chars.upcase
require "active_support/all"


# Открываем файл находим фразу и подменяем ее на пустоту.

#logo_path = File.join( File.dirname(__FILE__), '../logo.txt' )
#file = File.open( logo_path )


# Открываем файл text.txt
content = File.read("text.txt")
#putscontent.class  
content.encode!('utf-8')

#puts content   

#puts "------Оригинал"

#ПУНКТ 1. Убираем слова паразиты вcontents

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

content.gsub!(/\bследует заметить, что\b/, '')
content.gsub!(/\bследует заметить что\b/, '') 

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

content.gsub!(/\bизвестно, что\b/, '')
content.gsub!(/\bизвестно что\b/, '')

content.gsub!(/\bв любом случае, \b/, '')
content.gsub!(/\bв любом случае \b/, '')

content.gsub!(/\bплюс ко всему, \b/, '')
content.gsub!(/\bплюс ко всему \b/, '')

content.gsub!(/\bжелаемых результатов\b/, 'результатов')
content.gsub!(/\bжелаемые результаты\b/, 'результаты')

content.gsub!(/\bна сегодняшний день \b/, '')

content.gsub!(/\bк сожалению, \b/, '')
content.gsub!(/\bк сожалению \b/, '')

content.gsub!(/\bодна из самых\b/, 'одна из')

content.gsub!(/\bзачастую, \b/, '')
content.gsub!(/\bзачастую \b/, '')

content.gsub!(/\bв результате чего\b/, 'в результате')

content.gsub!(/\bна протяжении всего времени\b/, 'на протяжении')

content.gsub!(/\bв большинстве случаев \b/, '')

content.gsub!(/\bпользуются популярностью\b/, 'популярны')

content.gsub!(/\bславится своей\b/, 'славится')

content.gsub!(/\bв частности, \b/, '')
content.gsub!(/\bв частности \b/, '')

content.gsub!(/\bналичии проблем\b/, 'пробемах')

# медицинские ошибки
content.gsub!(/\bмедикаментозных\b/, '')
content.gsub!(/\bмедикаментозные\b/, '')
content.gsub!(/\bмедикаментозный\b/, '')
content.gsub!(/\bчеловеческого\b/, '')
content.gsub!(/\bчеловеческие\b/, '')
content.gsub!(/\bчеловеческий\b/, '')
content.gsub!(/\bнедуга\b/, 'болезни')
content.gsub!(/\bнедуге\b/, 'болезни')
content.gsub!(/\bнедугом\b/, 'болезнью')
content.gsub!(/\bнедугу\b/, 'болезни')
content.gsub!(/\bнедуг\b/, 'болезнь')
content.gsub!(/\bнедуги\b/, 'болезни')
content.gsub!(/\bнедугов\b/, 'болезней')
content.gsub!(/\bнедугам\b/, 'болезням')
content.gsub!(/\bнедугами\b/, 'болезнями')
content.gsub!(/\bнедугах\b/, 'болезнях')


# Проблема съедает часть слова
# putscontent.gsub!('боч', '') 
# плохой вариант putscontent.gsub!(/\bярко\b/, '')
#'mislocated cat, vindicating'.gsub(/\bcat\b/, 'dog')


#ПУНКТ 2. Убираем слова из текста вcontents, если они начинаются с большой буквы

#putscontent.gsub!('Оптимальная', 'лучше')
#putscontent.gsub!(/\bОптимальная\b/, '')

content.gsub!(/Таким образом, \b/, '')
content.gsub!(/Таким образом \b/, '')

content.gsub!(/Кстати, \b/, '')
content.gsub!(/Кстати \b/, '')

content.gsub!(/Лучше всего, \b/, 'Лучше ')
content.gsub!(/Лучше всего \b/, 'Лучше ')

content.gsub!(/Чаще всего, \b/, 'Чаще ')
content.gsub!(/Чаще всего \b/, 'Чаще ')

content.gsub!(/Прежде всего, \b/, '')
content.gsub!(/Прежде всего \b/, '')

content.gsub!(/Кроме этого, \b/, '')
content.gsub!(/Кроме этого \b/, '')

content.gsub!(/Кроме того, \b/, '')
content.gsub!(/Кроме того \b/, '')

content.gsub!(/А также, \b/, '')
content.gsub!(/А также \b/, '')

content.gsub!(/Также, \b/, '')
content.gsub!(/Также \b/, '')

content.gsub!(/При этом, \b/, '')
content.gsub!(/При этом \b/, '')

content.gsub!(/Следует учесть, что \b/, '')
content.gsub!(/Следует учесть что \b/, '')

content.gsub!(/Следует знать, что \b/, '')
content.gsub!(/Следует знать что \b/, '')

content.gsub!(/Следует помнить, что \b/, '')
content.gsub!(/Следует помнить что \b/, '')

content.gsub!(/Следует заметить, что \b/, '')
content.gsub!(/Следует заметить что \b/, '')

content.gsub!(/В этом случае, \b/, '')
content.gsub!(/В этом случае \b/, '')

content.gsub!(/В таком случае, \b/, '')
content.gsub!(/В таком случае \b/, '')

content.gsub!(/В такой ситуации, \b/, '')
content.gsub!(/В такой ситуации \b/, '')

content.gsub!(/В этой ситуации, \b/, '')
content.gsub!(/В этой ситуации \b/, '')

content.gsub!(/После этого периода, \b/, '')
content.gsub!(/После этого периода \b/, '')

content.gsub!(/После этого срока, \b/, '')
content.gsub!(/После этого срока \b/, '')

content.gsub!(/После этого, \b/, '')
content.gsub!(/После этого \b/, '')

content.gsub!(/Из-за этого, \b/, '')
content.gsub!(/Из-за этого \b/, '')

content.gsub!(/Помимо этого, \b/, '')
content.gsub!(/Помимо этого \b/, '')

content.gsub!(/Тем не менее, \b/, '')
content.gsub!(/Тем не менее \b/, '')

content.gsub!(/Для того, \b/, '')
content.gsub!(/Для того \b/, '')

content.gsub!(/Весьма \b/, '')

content.gsub!(/Очень \b/, '')

content.gsub!(/Всего лишь \b/, '')

content.gsub!(/Лишь \b/, '')

content.gsub!(/В том случае, \b/, '')
content.gsub!(/В том случае \b/, '')

content.gsub!(/В данном случае, \b/, '')
content.gsub!(/В данном случае \b/, '')

content.gsub!(/Какого-либо \b/, '')

content.gsub!(/Сегодня \b/, '')

content.gsub!(/Именно \b/, '')

content.gsub!(/Не редко, \b/, '')
content.gsub!(/Не редко \b/, '')

content.gsub!(/Нередко, \b/, '')
content.gsub!(/Нередко \b/, '')

content.gsub!(/Впрочем, \b/, '')
content.gsub!(/Впрочем \b/, '')

content.gsub!(/В наше время, \b/, '')
content.gsub!(/В наше время \b/, '')

content.gsub!(/Практически \b/, '')

content.gsub!(/На самом деле, \b/, '')
content.gsub!(/На самом деле \b/, '')

content.gsub!(/Стоит отметить, что \b/, '')
content.gsub!(/Стоит отметить что \b/, '')

content.gsub!(/Известно, что \b/, '')
content.gsub!(/Известно что \b/, '')

content.gsub!(/В любом случае, \b/, '')
content.gsub!(/В любом случае \b/, '')

content.gsub!(/Плюс ко всему, \b/, '')
content.gsub!(/Плюс ко всему \b/, '')

content.gsub!(/На сегодняшний день \b/, '')

content.gsub!(/К сожалению, \b/, '')
content.gsub!(/К сожалению \b/, '')

content.gsub!(/Одна из самых\b/, 'Одна из')

content.gsub!(/Зачастую, \b/, '')
content.gsub!(/Зачастую \b/, '')

content.gsub!(/В результате чего \b/, '')

content.gsub!(/Оказывается, \b/, '')
content.gsub!(/Оказывается \b/, '')

content.gsub!(/В большинстве случаев \b/, '')

content.gsub!(/Важно помнить, что \b/, '')
content.gsub!(/Важно помнить что \b/, '')
content.gsub!(/Важно помнить: \b/, '')

#########



content.gsub!(/\bэтого\b/, '')           #это надо добавить в самый конец перед удалением двойных пробелов


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

# ПОПРАВИТЬ ПРОБЕЛ <li>
content.gsub!('<li> ', '<li>')

# ПОПРАВИТЬ ПРОБЕЛ <td>
content.gsub!('<td> ', '<td>')

# ПОПРАВИТЬ ПРОБЕЛ [note]
content.gsub!('[note] ', '[note]')

# ПОПРАВИТЬ ПРОБЕЛ [tip]
content.gsub!('[tip] ', '[tip]')

# ПОПРАВИТЬ ПРОБЕЛ [warning]
content.gsub!('[warning] ', '[warning]')

# ПОПРАВИТЬ ПРОБЕЛ [important]
content.gsub!('[important] ', '[important]')

# ПОПРАВИТЬ ПРОБЕЛ [help]
content.gsub!('[help] ', '[help]')

# Знаки препинания в подзаголовках </h2> </h3> </h4> 
content.gsub!('.</h2>', '</h2>')
content.gsub!('!</h2>', '</h2>')
content.gsub!('?</h2>', '</h2>')
content.gsub!('.</h3>', '</h3>')
content.gsub!('!</h3>', '</h3>')
content.gsub!('?</h3>', '</h3>')
content.gsub!('.</h4>', '</h4>')
content.gsub!('!</h4>', '</h4>')
content.gsub!('?</h4>', '</h4>')


#ПУНКТ 4. Исправляем маленькие буквы перед знаками препинания и тегами на большие

#puts "Жыло-было шыбко шыпящее жывотное".gsub(/([ЖШжш])ы/){ $1 + "и" }
#putscontent.gsub!(/. (д)/, ' Д')
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
# </strong>
content.gsub!(/(<\/strong> [а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('</STRONG>', '</strong>')
# <li>
content.gsub!(/(<li>[а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('<LI>', '<li>')
# <td>
content.gsub!(/(<td>[а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('<TD>', '<td>')
# <h2>
content.gsub!(/(<h2>[а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('<H2>', '<h2>')
# <h3>
content.gsub!(/(<h3>[а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('<H3>', '<h3>')
# />  перед картинкой
content.gsub!(/(\/> [а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!(/(\/>[а-я])/){ $1.to_s.mb_chars.upcase }
# alt=" первая буква в альте картинки
content.gsub!(/(alt="[а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('ALT="', 'alt="')
# title=" первая буква в title картинки
content.gsub!(/(title="[а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('TITLE="', 'title="')
# [note]
content.gsub!(/(\[note\][а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('[NOTE]', '[note]')
# [/note]
content.gsub!(/(\[\/note\] [а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('[/NOTE]', '[/note]')

# [tip]
content.gsub!(/(\[tip\][а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('[TIP]', '[tip]')
# [/tip]
content.gsub!(/(\[\/tip\] [а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('[/TIP]', '[/tip]')

# [warning]
content.gsub!(/(\[warning\][а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('[WARNING]', '[warning]')
# [/warning]
content.gsub!(/(\[\/warning\] [а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('[/WARNING]', '[/warning]')

# [important]
content.gsub!(/(\[important\][а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('[IMPORTANT]', '[important]')
# [/important]
content.gsub!(/(\[\/important\] [а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('[/IMPORTANT]', '[/important]')

# [help]
content.gsub!(/(\[help\][а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('[HELP]', '[help]')
# [/help]
content.gsub!(/(\[\/help\] [а-я])/){ $1.to_s.mb_chars.upcase }
content.gsub!('[/HELP]', '[/help]')


puts "Финальный"
puts content


#puts "Привет пока".class
# puts "Terribly complex".gsub "complex", "simple" # => "Terribly simple"
#  puts "Привет пока".gsub "пока", "привет" # => "Terribly simple"





