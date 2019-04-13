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

content.gsub!(/\bпрежде всего, /, '')
content.gsub!(/\bпрежде всего\b/, '')

content.gsub!(/\bкроме этого, /, '')
content.gsub!(/\bкроме этого\b/, '')

content.gsub!(/\bкроме того, /, '')
content.gsub!(/\bкроме того\b/, '')

content.gsub!(/\bтаким образом, /, '')
content.gsub!(/\bтаким образом\b/, '')

content.gsub!(/\bа также, /, '')
content.gsub!(/\bа также\b/, '')

content.gsub!(/\bтакже, /, '')
content.gsub!(/\bтакже\b/, '')

content.gsub!(/\bпри этом, /, '')
content.gsub!(/\bпри этом\b/, '')

content.gsub!(/\bследует учесть, что\b/, '')
content.gsub!(/\bследует учесть что\b/, '')

content.gsub!(/\bследует знать, что\b/, '')
content.gsub!(/\bследует знать что\b/, '')

content.gsub!(/\bследует помнить, что\b/, '')
content.gsub!(/\bследует помнить что\b/, '')

content.gsub!(/\bследует понимать, что\b/, '')
content.gsub!(/\bследует понимать что\b/, '')


content.gsub!(/\bследует заметить, что\b/, '')
content.gsub!(/\bследует заметить что\b/, '') 

content.gsub!(/\bв этом случае, /, '')
content.gsub!(/\bв этом случае\b/, '')

content.gsub!(/\bв таком случае, /, '')
content.gsub!(/\bв таком случае\b/, '')

content.gsub!(/\bв такой ситуации, /, '')
content.gsub!(/\bв такой ситуации\b/, '')

content.gsub!(/\bв этой ситуации, /, '')
content.gsub!(/\bв этой ситуации\b/, '')

content.gsub!(/\bв таких случаях, /, '')
content.gsub!(/\bв таких случаях\b/, '')

content.gsub!(/\bпосле этого периода\b/, '')
content.gsub!(/\bпосле этого срока\b/, '')

content.gsub!(/\bпосле этого, /, '')
content.gsub!(/\bпосле этого\b/, '')

content.gsub!(/\bпосле чего, /, '')
content.gsub!(/\bпосле чего\b/, '')


content.gsub!(/\bиз–за этого, /, '')
content.gsub!(/\bиз–за этого\b/, '')

content.gsub!(/\bпомимо этого, /, '')
content.gsub!(/\bпомимо этого\b/, '')

content.gsub!(/\bвполне\b/, '')

content.gsub!(/\bтем не менее, /, '')
content.gsub!(/\bтем не менее\b/, '')

content.gsub!(/\bдля того, /, '')
content.gsub!(/\bдля того\b/, '')

content.gsub!(/\bтак как\b/, '')

content.gsub!(/\bвесьма\b/, '')

content.gsub!(/\bочень\b/, '')

content.gsub!(/\bвсего лишь\b/, '')
content.gsub!(/\bлишь\b/, '')

content.gsub!(/\bв том случае, /, '')
content.gsub!(/\bв том случае\b/, '')

content.gsub!(/\bв этих случаях, /, '')
content.gsub!(/\bв этих случаях\b/, '')

content.gsub!(/\bв данном случае, /, '')
content.gsub!(/\bв данном случае\b/, '')

content.gsub!(/\bкакого-либо\b/, '')

content.gsub!(/\bсегодня\b/, '')

content.gsub!(/\bа именно\b/, '')
content.gsub!(/\bименно\b/, '')

content.gsub!(/\bне редко\b/, '')
content.gsub!(/\bнередко\b/, '')

content.gsub!(/\bвпрочем, /, '')
content.gsub!(/\bвпрочем\b/, '')

content.gsub!(/\bв наше время, /, '')
content.gsub!(/\bв наше время\b/, '')

content.gsub!(/\bпрактически\b/, '')

content.gsub!(/\bна самом деле, /, '')
content.gsub!(/\bна самом деле\b/, '')

content.gsub!(/\bстоит отметить, что\b/, '')
content.gsub!(/\bстоит отметить что\b/, '')

content.gsub!(/\bизвестно, что\b/, '')
content.gsub!(/\bизвестно что\b/, '')

content.gsub!(/\bв любом случае, /, '')
content.gsub!(/\bв любом случае\b/, '')

content.gsub!(/\bплюс ко всему, /, '')
content.gsub!(/\bплюс ко всему\b/, '')

content.gsub!(/\bжелаемых результатов\b/, 'результатов')
content.gsub!(/\bжелаемые результаты\b/, 'результаты')

content.gsub!(/\bна сегодняшний день\b/, '')

content.gsub!(/\bк сожалению, /, '')
content.gsub!(/\bк сожалению\b/, '')

content.gsub!(/\bодна из самых\b/, 'одна из')

content.gsub!(/\bзачастую, /, '')
content.gsub!(/\bзачастую\b/, '')

content.gsub!(/\bв результате чего\b/, 'в результате')

content.gsub!(/\bна протяжении всего времени\b/, 'на протяжении')

content.gsub!(/\bв большинстве случаев\b/, '')

content.gsub!(/\bпользуются популярностью\b/, 'популярны')

content.gsub!(/\bславится своей\b/, 'славится')

content.gsub!(/\bв частности, /, '')
content.gsub!(/\bв частности\b/, '')

content.gsub!(/\bналичии проблем\b/, 'пробемах')

content.gsub!(/\bкак правило, /, '')
content.gsub!(/\bкак правило\b/, '')

content.gsub!(/\bявляется результатом\b/, 'результат')

content.gsub!(/\bмогут быть связаны\b/, 'связаны')

content.gsub!(/\bследующие\b/, '')

content.gsub!(/\bдолгое время\b/, 'долго')

content.gsub!(/\bнекоторых людей\b/, 'некоторых')

content.gsub!(/\bкроется в\b/, 'в')

content.gsub!(/\bпо мере того, /, '')
content.gsub!(/\bпо мере того\b/, '')

content.gsub!(/\bнесомненно, /, '')
content.gsub!(/\bнесомненно\b/, '')

content.gsub!(/\bвследствие чего\b/, '')

content.gsub!(/\bтакие, как\b/, '')
content.gsub!(/\bтакие как\b/, '')

content.gsub!(/\bподразделяется\b/, 'делится')
content.gsub!(/\bподразделяются\b/, 'делятся')

content.gsub!(/\bявляется одним из\b/, 'это один из')

content.gsub!(/\bнеобходимо помнить о том, что\b/, '')
content.gsub!(/\bнеобходимо помнить о том что\b/, '')
 
content.gsub!(/\bосновного приема пищи\b/, 'еды')
content.gsub!(/\bприема пищи\b/, 'питания')
content.gsub!(/\bприемом пищи\b/, 'едой')
content.gsub!(/\bприем пищи\b/, 'питание')
content.gsub!(/\bупотреблять в пищу\b/, 'кушать')

content.gsub!(/\bспециализированного оборудования\b/, 'оборудования')

content.gsub!(/\bни в коем случае не должны\b/, 'не должны')

content.gsub!(/\bмогут помочь\b/, 'помогут')
content.gsub!(/\bможет помочь\b/, 'поможет')

content.gsub!(/\bособого\b/, '')
content.gsub!(/\bособую\b/, '')

content.gsub!(/\bв их состав\b/, 'в состав')

content.gsub!(/\bне только\b/, '')

content.gsub!(/\bно даже\b/, '')

content.gsub!(/\bно и\b/, '')

content.gsub!(/\bположительные результаты\b/, 'результаты')
content.gsub!(/\bположительный результат\b/, 'результат')

content.gsub!(/\bдовольно\b/, '')

content.gsub!(/\bмножества различных\b/, 'различных')

content.gsub!(/\bвышеуказанный\b/, 'этот')

content.gsub!(/\bс каждым днем\b/, '')

content.gsub!(/\bможет быть связано\b/, 'связано')

content.gsub!(/\bусугубит ситуацию\b/, 'усугубит положение')

content.gsub!(/\bобратиться к специалистам\b/, 'обратиться за помощью')

content.gsub!(/\bкак следствием\b/, 'следствием')

content.gsub!(/\bвыходом из ситуации\b/, 'выходом')

content.gsub!(/\bвключают в себя\b/, 'включают')

content.gsub!(/\bнапрямую зависит\b/, 'зависит')

content.gsub!(/\bнеобходимо учесть\b/, 'учитываются')

content.gsub!(/\bв каждом конкретном случае\b/, '')
content.gsub!(/\bв каждом случае\b/, '')

content.gsub!(/\bможет привести к\b/, 'приводит к')

content.gsub!(/\bлетнего возраста\b/, 'лет')

content.gsub!(/\bкакой-либо\b/, '')

content.gsub!(/\bжелаемого эффекта\b/, 'эффекта')

content.gsub!(/\bвполне достаточно\b/, 'достаточно')

content.gsub!(/\bнавсегда забыть\b/, 'забыть')

content.gsub!(/\b-ти лет\b/, ' лет')

content.gsub!(/\bстолкнуться с такими проблемами, как\b/, 'получить -')

content.gsub!(/\bпоэтому важно\b/, 'важно')

content.gsub!(/\bпод названием\b/, '')

content.gsub!(/\bв следующих случаях\b/, 'в случаях')

content.gsub!(/\bна период лечения\b/, 'в период лечения')

content.gsub!(/\bобязательно, /, '')

content.gsub!(/\bоднако\b/, '')

content.gsub!(/\bне стоит забывать, что\b/, '')
content.gsub!(/\bне стоит забывать что\b/, '')

content.gsub!(/\bстрого соблюдаться\b/, 'соблюдаться')

content.gsub!(/\bдолжно быть обеспечено\b/, 'обеспечивается')

content.gsub!(/\bшироко применяется\b/, 'применяется')

content.gsub!(/\bиными словами\b/, 'или')

content.gsub!(/\bважно перед началом\b/, 'перед началом')

content.gsub!(/\bразного рода\b/, 'различные')

content.gsub!(/\bза собой\b/, '')

content.gsub!(/\bмногие люди\b/, 'многие')

content.gsub!(/\bимеет место быть\b/, 'имеется')

content.gsub!(/\bв ночное время суток\b/, 'ночью')

content.gsub!(/\bв одночасье\b/, 'одновременно')

content.gsub!(/\bглавенствующие\b/, 'основные')

content.gsub!(/\bиспробовать\b/, 'попробовать')

content.gsub!(/\bтого или иного\b/, '')

content.gsub!(/\bмаксимально\b/, '')

content.gsub!(/\bнеобходимо соблюдать\b/, 'нужно соблюдать')

content.gsub!(/\bдостаточно просто\b/, 'достаточно')

content.gsub!(/\bопять-таки\b/, '')

content.gsub!(/\bкаких-либо других\b/, 'других')

content.gsub!(/\bпричиной появления\b/, 'причиной')

content.gsub!(/\bкоторые содержат\b/, 'содержащие')

content.gsub!(/\bлучше обратиться к\b/, 'обратитесь к')

content.gsub!(/\bв свою очередь, /, '')
content.gsub!(/\bв свою очередь\b/, '')

content.gsub!(/\bв то же время\b/, '')
content.gsub!(/\bв тоже время\b/, '')

content.gsub!(/\bнебольшими по размерам\b/, 'небольшими')

content.gsub!(/\bзарекомендовал себя как\b/, 'это')

content.gsub!(/\bнаправленные на улучшение\b/, 'улучшающие')

content.gsub!(/\bконечном результате\b/, 'результате')





# медицинские ошибки
content.gsub!(/\bмедикаментозных\b/, '')
content.gsub!(/\bмедикаментозные\b/, '')
content.gsub!(/\bмедикаментозный\b/, '')
content.gsub!(/\bмедикаментозными\b/, '')
content.gsub!(/\bчеловеческого\b/, '')
content.gsub!(/\bчеловеческие\b/, '')
content.gsub!(/\bчеловеческий\b/, '')
content.gsub!(/\bчеловеческом\b/, '')
content.gsub!(/\bнедуга\b/, 'болезни')
content.gsub!(/\bнедуге\b/, 'болезни')
content.gsub!(/\bнедугом\b/, 'болезнью')
content.gsub!(/\bнедугу\b/, 'болезни')
content.gsub!(/\bнедуг\b/, 'болезнь')
content.gsub!(/\bНедуг\b/, 'Болезнь')
content.gsub!(/\bнедуги\b/, 'болезни')
content.gsub!(/\bнедугов\b/, 'болезней')
content.gsub!(/\bнедугам\b/, 'болезням')
content.gsub!(/\bнедугами\b/, 'болезнями')
content.gsub!(/\bнедугах\b/, 'болезнях')
content.gsub!(/\bвсех болезней\b/, 'болезней')
content.gsub!(/\bкожи тела\b/, 'кожи')
content.gsub!(/\bкоже тела\b/, 'коже')
content.gsub!(/\bкожа тела\b/, 'кожа')
content.gsub!(/\bстрессовых ситуаций\b/, 'стресса')
content.gsub!(/\bстрессовая ситуация\b/, 'стресс')
content.gsub!(/\bстрессовой ситуации\b/, 'стрессе')
content.gsub!(/\bстрессовую ситуацию\b/, 'стресс')
content.gsub!(/\bс такими заболеваниями, как\b/, 'с заболеваниями')
content.gsub!(/\bизлечению\b/, 'выздоровлению')
content.gsub!(/\bизлечение\b/, 'выздоровление')
content.gsub!(/\bизлечения\b/, 'выздоровления')
content.gsub!(/\bполезных витаминов\b/, 'витаминов')
content.gsub!(/\bполезные витамины\b/, 'витамины')
content.gsub!(/\bполезный витамин\b/, 'витамин')
content.gsub!(/\bполезных свойств\b/, 'свойств')
content.gsub!(/\bполезные свойства\b/, 'свойства')
content.gsub!(/\bполезное свойство\b/, 'свойство')
content.gsub!(/\bмногие пациенты\b/, 'пациенты')
content.gsub!(/\bпричины возникновения\b/, 'причины')
content.gsub!(/\bпричина возникновения\b/, 'причина')
content.gsub!(/\bгорячительных напитков\b/, 'алкоголя')
content.gsub!(/\bтело человека\b/, 'тело')
content.gsub!(/\bспециализированное\b/, '')
content.gsub!(/\bспециальной\b/, '')
content.gsub!(/\bспециальная\b/, '')
content.gsub!(/\bспециальным\b/, '')
content.gsub!(/\bспециальных\b/, '')
content.gsub!(/\bего назначении\b/, 'назначении')
content.gsub!(/\bположительный эффект\b/, 'положительное действие')
content.gsub!(/\bв стрессовых ситуациях\b/, 'при стрессе')
content.gsub!(/\bобследования организма\b/, 'обследования')
content.gsub!(/\bорганизме человека\b/, 'организме')
content.gsub!(/\bорганизм человека\b/, 'организм')
content.gsub!(/\bорганизму человека\b/, 'организму')
content.gsub!(/\bпоможет избавиться от\b/, 'избавит от')
content.gsub!(/\bдейственный\b/, '')
content.gsub!(/\bквалифицированного\b/, '')
content.gsub!(/\bквалифицированный\b/, '')
content.gsub!(/\bквалифицированной\b/, '')
content.gsub!(/\bквалифицированную\b/, '')
content.gsub!(/\bкомплекс мероприятий\b/, 'комплекс')
content.gsub!(/\bнаправлено на улучшение работы\b/, 'улучшает работу')
content.gsub!(/\bдля каждого клиента\b/, 'для каждого')
content.gsub!(/\bдля каждого больного\b/, 'для каждого')
content.gsub!(/\bлекарственных средств\b/, 'лекарств')
content.gsub!(/\bприбегать к лечению\b/, 'начинать лечение')
content.gsub!(/\bтаких заболеваний, как\b/, 'заболеваний -')
content.gsub!(/\bв свой рацион\b/, 'в рацион')
content.gsub!(/\bнужно употреблять\b/, 'нужно кушать')
content.gsub!(/\bтакие витамины как\b/, 'витамины')
content.gsub!(/\bс патологическими процессами\b/, 'с патологиями')
content.gsub!(/\bвлияние окружающей среды\b/, 'влияние факторов окружающей среды')
content.gsub!(/\bс самыми серьезными последствиями\b/, 'с последствиями')
content.gsub!(/\bс серьезными последствиями\b/, 'с последствиями')






# Проблема съедает часть слова
# putscontent.gsub!('боч', '') 
# плохой вариант putscontent.gsub!(/\bярко\b/, '')
#'mislocated cat, vindicating'.gsub(/\bcat\b/, 'dog')



# Убираем двойные, тройные пробелы из текста
content.gsub!('   ', ' ')
content.gsub!('  ', ' ')

# Убираем двойные, тройные запятые, точки
content.gsub!(',,,', ',')
content.gsub!(',,', ',')
content.gsub!('...', '.')
content.gsub!('..', '.')

# ПОПРАВИТЬ ПРОБЕЛ ЗАПЯТАЯ !!!!!!!!!!
content.gsub!(' ,', ',')

# ПОПРАВИТЬ ПРОБЕЛ ТОЧКА !!!!!!!!!!
content.gsub!(' .', '.')

# ПОПРАВИТЬ ПРОБЕЛ ? !!!!!!!!!!
content.gsub!(' ?', '?')

# ПОПРАВИТЬ ПРОБЕЛ ! !!!!!!!!!!
content.gsub!(' !', '!')



#ПУНКТ 2. Убираем слова из текста вcontents, если они начинаются с большой буквы

#putscontent.gsub!('Оптимальная', 'лучше')
#putscontent.gsub!(/\bОптимальная\b/, '')

content.gsub!(/Таким образом, /, '')
content.gsub!(/Таким образом /, '')

content.gsub!(/Кстати, /, '')
content.gsub!(/Кстати /, '')

content.gsub!(/Лучше всего, /, 'Лучше ')
content.gsub!(/Лучше всего\b/, 'Лучше')

content.gsub!(/Чаще всего, /, 'Чаще ')
content.gsub!(/Чаще всего\b/, 'Чаще')

content.gsub!(/Прежде всего, /, '')
content.gsub!(/Прежде всего /, '')

content.gsub!(/Кроме этого, /, '')
content.gsub!(/Кроме этого /, '')

content.gsub!(/Кроме того, /, '')
content.gsub!(/Кроме того /, '')

content.gsub!(/А также, /, '')
content.gsub!(/А также /, '')

content.gsub!(/Также, /, '')
content.gsub!(/Также /, '')

content.gsub!(/При этом, /, '')
content.gsub!(/При этом /, '')

content.gsub!(/Следует учесть, что /, '')
content.gsub!(/Следует учесть что /, '')

content.gsub!(/Следует знать, что /, '')
content.gsub!(/Следует знать что /, '')

content.gsub!(/Следует помнить, что /, '')
content.gsub!(/Следует помнить что /, '')

content.gsub!(/Следует заметить, что /, '')
content.gsub!(/Следует заметить что /, '')

content.gsub!(/В этом случае, /, '')
content.gsub!(/В этом случае /, '')

content.gsub!(/В таком случае, /, '')
content.gsub!(/В таком случае /, '')

content.gsub!(/В такой ситуации, /, '')
content.gsub!(/В такой ситуации /, '')

content.gsub!(/В этой ситуации, /, '')
content.gsub!(/В этой ситуации /, '')

content.gsub!(/В этих случаях, /, '')
content.gsub!(/В этих случаях /, '')

content.gsub!(/После этого периода, /, '')
content.gsub!(/После этого периода /, '')

content.gsub!(/После этого срока, /, '')
content.gsub!(/После этого срока /, '')

content.gsub!(/После этого, /, '')
content.gsub!(/После этого /, '')

content.gsub!(/После чего, /, '')
content.gsub!(/После чего /, '')


content.gsub!(/Из-за этого, /, '')
content.gsub!(/Из-за этого /, '')

content.gsub!(/Помимо этого, /, '')
content.gsub!(/Помимо этого /, '')

content.gsub!(/Тем не менее, /, '')
content.gsub!(/Тем не менее /, '')

content.gsub!(/Для того, /, '')
content.gsub!(/Для того /, '')

content.gsub!(/Весьма /, '')

content.gsub!(/Очень /, '')

content.gsub!(/Всего лишь /, '')

content.gsub!(/Лишь /, '')

content.gsub!(/В том случае, /, '')
content.gsub!(/В том случае /, '')

content.gsub!(/В данном случае, /, '')
content.gsub!(/В данном случае /, '')

content.gsub!(/В таких случаях, /, '')
content.gsub!(/В таких случаях /, '')

content.gsub!(/Какого-либо /, '')

content.gsub!(/Сегодня /, '')

content.gsub!(/Именно /, '')

content.gsub!(/Не редко, /, '')
content.gsub!(/Не редко /, '')

content.gsub!(/Нередко, /, '')
content.gsub!(/Нередко /, '')

content.gsub!(/Впрочем, /, '')
content.gsub!(/Впрочем /, '')

content.gsub!(/В наше время, /, '')
content.gsub!(/В наше время /, '')

content.gsub!(/Практически /, '')

content.gsub!(/На самом деле, /, '')
content.gsub!(/На самом деле /, '')

content.gsub!(/Стоит отметить, что /, '')
content.gsub!(/Стоит отметить что /, '')

content.gsub!(/Известно, что /, '')
content.gsub!(/Известно что /, '')

content.gsub!(/В любом случае, /, '')
content.gsub!(/В любом случае /, '')

content.gsub!(/Плюс ко всему, /, '')
content.gsub!(/Плюс ко всему /, '')

content.gsub!(/На сегодняшний день /, '')

content.gsub!(/К сожалению, /, '')
content.gsub!(/К сожалению /, '')

content.gsub!(/Как правило, /, '')
content.gsub!(/Как правило /, '')

content.gsub!(/Как известно, /, '')
content.gsub!(/Как известно /, '')

content.gsub!(/Одна из самых\b/, 'Одна из')

content.gsub!(/Зачастую, /, '')
content.gsub!(/Зачастую /, '')

content.gsub!(/В результате чего /, '')

content.gsub!(/Оказывается, /, '')
content.gsub!(/Оказывается /, '')

content.gsub!(/В большинстве случаев /, '')

content.gsub!(/Важно помнить, что /, '')
content.gsub!(/Важно помнить что /, '')
content.gsub!(/Важно помнить:/, '')

content.gsub!(/Важно, /, '')

content.gsub!(/Принято считать, что /, '')
content.gsub!(/Принято считать что /, '')

content.gsub!(/На самом деле /, '')

content.gsub!(/Далее, /, '')
content.gsub!(/Далее /, '')

content.gsub!(/По мере того, /, '')
content.gsub!(/По мере того /, '')

content.gsub!(/Несомненно, /, '')
content.gsub!(/Несомненно /, '')

content.gsub!(/Причем, /, '')
content.gsub!(/Причем /, '')

content.gsub!(/Поэтому /, '')

content.gsub!(/К нему /, '')

content.gsub!(/Необходимо помнить о том, что /, '')
content.gsub!(/Необходимо помнить о том что /, '')

content.gsub!(/Безусловно, /, '')
content.gsub!(/Безусловно /, '')

content.gsub!(/Особого /, '')
content.gsub!(/Особую /, '')

content.gsub!(/Многие пациенты, /, 'Пациенты, ')
content.gsub!(/Многие пациенты\b/, 'Пациенты')

content.gsub!(/Вышеуказанный\b/, 'Этот')

content.gsub!(/Причины возникновения\b/, 'Причины')

content.gsub!(/Причина возникновения\b/, 'Причина')

content.gsub!(/Проблема\b/, 'Эта проблема')

content.gsub!(/Примечательно, /, '')
content.gsub!(/Примечательно /, '')

content.gsub!(/Излечение\b/, 'Выздоровление')

content.gsub!(/Прием пищи\b/, 'Питание')

content.gsub!(/В стрессовых ситуациях\b/, 'При стрессе')

content.gsub!(/Наиболее часто\b/, 'Часто')

content.gsub!(/Вполне достаточно\b/, 'Достаточно')

content.gsub!(/Процесс приготовления\b/, 'Приготовление')

content.gsub!(/Здесь нужно уточнить, что /, '')

content.gsub!(/Можно выделить\b/, 'Выделяют')

content.gsub!(/Важно лечить\b/, 'Лечите')

content.gsub!(/Важно перед началом\b/, 'Перед началом')

content.gsub!(/Можно сказать, что /, '')
content.gsub!(/Можно сказать что /, '')

content.gsub!(/На период лечения\b/, 'В период лечения')

content.gsub!(/А вот /, '')

content.gsub!(/В противном случае /, '')

content.gsub!(/Однако /, '')

content.gsub!(/Не стоит забывать, что /, '')
content.gsub!(/Не стоит забывать что /, '')

content.gsub!(/Бытует мнение, что /, '')
content.gsub!(/Бытует мнение что /, '')
 
content.gsub!(/Дело в том, что /, '')
content.gsub!(/Дело в том что /, '')

content.gsub!(/Ведь /, '')
 
content.gsub!(/Следует понимать, что /, '')
content.gsub!(/Следует понимать что /, '')

content.gsub!(/Разумеется, /, '')
content.gsub!(/Разумеется /, '')

content.gsub!(/Важен еще один момент: /, '')
content.gsub!(/Важен еще один момент /, '')
content.gsub!(/Важен еще один момент, /, '')

content.gsub!(/И, конечно, /, '')
content.gsub!(/И, конечно /, '')

content.gsub!(/Понятно, что /, '')
content.gsub!(/Понятно что /, '')

content.gsub!(/Многие люди\b/, 'Многие')

content.gsub!(/В подавляющем числе случаев /, '')

content.gsub!(/В связи с этим /, '')

content.gsub!(/Это означает, что /, '')
content.gsub!(/Это означает что /, '')

content.gsub!(/Это связано с тем, что /, '')
content.gsub!(/Это связано с тем что /, '')




#########



content.gsub!(/\bэтого\b/, '')           #это надо добавить в самый конец перед удалением двойных пробелов


#puts "-----------Без слов с большой буквы"



#ПУНКТ 3. Исправляем проблемы со знаками препинания и двойные, тройные пробелы

# Убираем двойные, тройные пробелы из текста
content.gsub!('   ', ' ')
content.gsub!('  ', ' ')


# Убираем двойные, тройные запятые, точки
content.gsub!(',,,', ',')
content.gsub!(',,', ',')
content.gsub!('...', '.')
content.gsub!('..', '.')


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


#puts "Финальный"
puts content


#puts "Привет пока".class
# puts "Terribly complex".gsub "complex", "simple" # => "Terribly simple"
#  puts "Привет пока".gsub "пока", "привет" # => "Terribly simple"





