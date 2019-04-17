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

#ПРЕДВАРИТЕЛЬНО поправить пробелы перед тегами и знаками препинания

# Убираем двойные, тройные пробелы из текста
content.gsub!('   ', ' ')
content.gsub!('  ', ' ')


# Убираем двойные, тройные запятые, точки
content.gsub!(',,,', ',')
content.gsub!(',,', ',')
content.gsub!('...', '.')
content.gsub!('..', '.')
content.gsub!(', :', ':')
content.gsub!('- ,', '-')
content.gsub!(': ,', ':')
content.gsub!(', -', '-')


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

# ПОПРАВИТЬ ПРОБЕЛ <strong>
content.gsub!('<strong> ', '<strong>')

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

content.gsub!(/\bтаким образом, что\b/, 'так, что')
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

content.gsub!(/\bследует отметить, что\b/, '')
content.gsub!(/\bследует отметить, что\b/, '') 

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
content.gsub!(/\bкак известно, /, '')
 

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
content.gsub!(/\bв большинстве случаях\b/, '')

content.gsub!(/\bпользуются популярностью\b/, 'популярны')

content.gsub!(/\bславится своей\b/, 'славится')

content.gsub!(/\bв частности, /, '')
content.gsub!(/\bв частности\b/, '')

content.gsub!(/\bналичии проблем\b/, 'пробемах')

content.gsub!(/\bкак правило, /, '')
content.gsub!(/\bкак правило\b/, '')

content.gsub!(/\bявляется результатом\b/, 'результат')

content.gsub!(/\bявляется популярным\b/, 'считается популярным')

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
content.gsub!(/\bосновного приёма пищи\b/, 'еды')
content.gsub!(/\bприема пищи\b/, 'питания')
content.gsub!(/\bприёма пищи\b/, 'питания')
content.gsub!(/\bприемом пищи\b/, 'едой')
content.gsub!(/\bприёмом пищи\b/, 'едой')
content.gsub!(/\bприем пищи\b/, 'питание')
content.gsub!(/\bприём пищи\b/, 'питание')
content.gsub!(/\bприемы пищи\b/, 'питание')
content.gsub!(/\bприёмы пищи\b/, 'питание')
content.gsub!(/\bупотреблять в пищу\b/, 'кушать')
content.gsub!(/\bдо употребления пищи\b/, 'до еды')
content.gsub!(/\bпринимать в пищу\b/, 'кушать')

content.gsub!(/\bспециализированного оборудования\b/, 'оборудования')

content.gsub!(/\bни в коем случае не должны\b/, 'не должны')

content.gsub!(/\bмогут помочь\b/, 'помогут')
content.gsub!(/\bможет помочь\b/, 'поможет')

content.gsub!(/\bможет длиться\b/, 'длится')

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
content.gsub!(/\bвышеописанных\b/, 'этих')
content.gsub!(/\bвышеуказанные\b/, 'эти')
content.gsub!(/\bописанный выше\b/, '')


content.gsub!(/\bс каждым днем\b/, '')

content.gsub!(/\bможет быть связано\b/, 'связано')
content.gsub!(/\bможет быть связана\b/, 'связана')

content.gsub!(/\bусугубит ситуацию\b/, 'усугубит положение')

content.gsub!(/\bобратиться к специалистам\b/, 'обратиться за помощью')

content.gsub!(/\bкак следствием\b/, 'следствием')

content.gsub!(/\bкак следствие, /, '')

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

content.gsub!(/\bимеющими место быть\b/, 'которые бывают')

content.gsub!(/\bв ходе проведения\b/, 'при проведении')

content.gsub!(/\bвыше перечисленных\b/, 'описанных')

content.gsub!(/\bвышеперечисленных\b/, 'описанных')

content.gsub!(/\bтрудовой деятельности человека\b/, 'трудовой деятельности')

content.gsub!(/\bбольшое количество\b/, 'много')

content.gsub!(/\bтаков\b/, '')

content.gsub!(/\bкакие-либо\b/, '')

content.gsub!(/\bв современном мире\b/, '')
content.gsub!(/\bв современном обществе\b/, '')

content.gsub!(/\bдостаточно много\b/, 'много')

content.gsub!(/\bимеет свойство\b/, 'может')

content.gsub!(/, так называемых, /, '')
content.gsub!(/\bтак называемых\b/, '')

content.gsub!(/\bпредставительницы прекрасного пола\b/, 'женщины')

content.gsub!(/\bдоступна всем\b/, 'доступна')

content.gsub!(/\bчасто встречаемые\b/, 'популярные')

content.gsub!(/\bкрайне важно\b/, 'важно')

content.gsub!(/\bпоистине\b/, '')

content.gsub!(/\bправильный подбор\b/, 'подбор')
content.gsub!(/\bправильно подобрать\b/, 'подобрать')

content.gsub!(/\bчерез определенное время\b/, 'скоро')

content.gsub!(/\bпредставленная в виде\b/, 'в виде')

content.gsub!(/\bнекоторые люди\b/, 'некоторые')

content.gsub!(/\bденежных средств\b/, 'денег')

content.gsub!(/\bдлительность процесса\b/, 'длительность')

content.gsub!(/\bв некоторых случаях\b/, 'иногда')

content.gsub!(/\bподразумевают\b/, 'включают')

content.gsub!(/\bподразумевает\b/, 'включает')

content.gsub!(/\bсодержать в себе\b/, 'содержать')
content.gsub!(/\bсодержит в себе\b/, 'содержит')
content.gsub!(/\bсодержащийся в себе\b/, 'содержащийся')
content.gsub!(/\bсодержащий в себе\b/, 'содержащий')
content.gsub!(/\bсодержит в своём составе\b/, 'содержит')
content.gsub!(/\bсодержит в своем составе\b/, 'содержит')

content.gsub!(/\bили же\b/, 'или')

content.gsub!(/\bлибо же\b/, 'либо')

content.gsub!(/\bсразу же\b/, 'сразу')

content.gsub!(/\bдлительное время\b/, 'долго')

content.gsub!(/\bабсолютно любой\b/, 'любой')

content.gsub!(/\bобладают отличным\b/, 'обладают')

content.gsub!(/\bизготовляется\b/, 'делается')

content.gsub!(/\bнепосредственно\b/, '')

content.gsub!(/\bнужно только в\b/, 'нужно в')

content.gsub!(/\bмощного\b/, '')

content.gsub!(/\bчрезвычайно\b/, '')

content.gsub!(/\bчто приводит к тому, что\b/, '')

content.gsub!(/\bхоть и\b/, 'хоть')

content.gsub!(/\bв случае с\b/, 'с')

content.gsub!(/\b2х\b/, '2')
content.gsub!(/\b3х\b/, '3')
content.gsub!(/\b4х\b/, '4')
content.gsub!(/\b5ти\b/, '5')
content.gsub!(/\b6ти\b/, '6')

content.gsub!(/\bв кратчайшие сроки\b/, 'быстро')

content.gsub!(/\bраздобыть\b/, 'достать')

content.gsub!(/\bни в коем случае\b/, '')

content.gsub!(/\bобладают функцией\b/, 'обладают свойством')

content.gsub!(/\bбуквально\b/, '')

content.gsub!(/\bскорее всего,\b/, '')
content.gsub!(/\bскорее всего\b/, '')

content.gsub!(/\bдоступная по цене\b/, 'доступная')

content.gsub!(/\bданную\b/, 'эту')

content.gsub!(/\bкоторое способны\b/, 'способных')

content.gsub!(/\bв то время как\b/, 'а')

content.gsub!(/\bесть возможность\b/, 'можно')

content.gsub!(/\bявляется одной из\b/, 'это одна из')
content.gsub!(/\bявляется одним из\b/, 'это один из')
content.gsub!(/\bявляется одними из\b/, 'это одни из')

content.gsub!(/\bявляются следствием\b/, 'это следствие')
content.gsub!(/\bявляется следствием\b/, 'это следствие')

content.gsub!(/\bна начальных этапах\b/, 'в начале')

content.gsub!(/\bмножество\b/, 'много')

content.gsub!(/\bможно отнести\b/, 'относятся')

content.gsub!(/\bможно отнести\b/, 'относятся')

content.gsub!(/\bволнующим вопросам\b/, 'вопросам')

content.gsub!(/\bкрайне не рекомендуется\b/, 'не рекомендуется')

content.gsub!(/\bне так просто\b/, 'не просто')

content.gsub!(/\bоткласться\b/, 'отложиться')

content.gsub!(/\bсамые различные\b/, 'различные')

content.gsub!(/\bнаиболее часто\b/, 'часто')

content.gsub!(/\bнаиболее подходящие\b/, 'подходящие')

content.gsub!(/\bнаиболее легких\b/, 'легких')

content.gsub!(/\bв результате использования\b/, 'при использовании')

content.gsub!(/\bследует обратиться к\b/, 'обратитесь к')

content.gsub!(/\bразнообразные\b/, 'разные')

content.gsub!(/\bпредлагают свои услуги\b/, 'оказывают услуги')

content.gsub!(/\bпредлагают услуги\b/, 'оказывают услуги')

content.gsub!(/\bстоит обратиться к\b/, 'обратитесь к')

content.gsub!(/\bв тех случаях, если\b/, ', если')

content.gsub!(/\bдостаточно\b/, '')

content.gsub!(/\bв результате негативного влияния\b/, 'при негативном влиянии')

content.gsub!(/\bпредставляет собой\b/, 'это')

content.gsub!(/\bследует выбирать\b/, 'выбирайте')

content.gsub!(/\bмогу быть вызваны\b/, 'вызываются')

content.gsub!(/\bможно обратиться к\b/, 'обратитесь к')

content.gsub!(/\bв буквальном смысле слова\b/, '')
content.gsub!(/\bв буквальном смысле\b/, '')

content.gsub!(/\bнеобходимого количества\b/, 'достаточного количества')

content.gsub!(/\bв конечном итоге\b/, 'в итоге')

content.gsub!(/\bсобственно\b/, '')

content.gsub!(/\bсобственному здоровью\b/, 'здоровью')

content.gsub!(/\bглавенствующим\b/, 'главным')

content.gsub!(/\bте или иные\b/, '')

content.gsub!(/\bто можно сказать, что\b/, 'то')

content.gsub!(/\bсреди которых\b/, '')

content.gsub!(/\bможно выделить\b/, 'выделяют')

content.gsub!(/\bкоторая характеризуется\b/, 'характеризуется')
content.gsub!(/\bкоторый характеризуется\b/, 'характеризуется')

content.gsub!(/\bи вовсе\b/, '')

content.gsub!(/\bпагубно\b/, 'плохо')

content.gsub!(/\bнежели тот\b/, 'чем тот')

content.gsub!(/\bнезамедлительно\b/, 'сразу')

content.gsub!(/\bпо необходимости\b/, 'при необходимости')

content.gsub!(/\bтщательный\b/, '')

content.gsub!(/\bнадолго забыть\b/, 'забыть')

content.gsub!(/\bисключительно\b/, '')

content.gsub!(/\bза короткое время\b/, 'быстро')

content.gsub!(/\bзначительно снижается\b/, 'сильно снижается')

content.gsub!(/\bкасательно\b/, 'относительно')
content.gsub!(/\bкасаемо\b/, 'относительно')

content.gsub!(/\bглавным образом\b/, '')

content.gsub!(/\bважно отметить, что\b/, '')
content.gsub!(/\bважно знать, что\b/, '')

content.gsub!(/\bсравнительно\b/, '')

content.gsub!(/\bотличаются своей\b/, 'отличаются')

content.gsub!(/\bрезультатом становится\b/, 'результат - это')

content.gsub!(/\bвсех своих\b/, 'всех')

content.gsub!(/\bблагодаря чему\b/, '')

content.gsub!(/\bв связи с чем\b/, '')

content.gsub!(/\bстоит разобраться, /, '')

content.gsub!(/\bа это значит, /, '')

content.gsub!(/\bтак необходима\b/, 'необходима')

content.gsub!(/\bна протяжении всего\b/, 'на протяжении')

content.gsub!(/\bкоторые необходимо\b/, 'их необходимо')

content.gsub!(/\bвсего процесса\b/, 'процесса')

content.gsub!(/\bдабы\b/, 'чтобы')

content.gsub!(/\bв летний период времени\b/, 'летом')
content.gsub!(/\bв летний сезон\b/, 'летом')

content.gsub!(/\bчетко\b/, '')

content.gsub!(/\bнеобходимо знать\b/, 'необходимо узнать')

content.gsub!(/\bтаких как:/, ':')

content.gsub!(/\bдва\b/, '2')
content.gsub!(/\bтри\b/, '3')
content.gsub!(/\bчетыре\b/, '4')
content.gsub!(/\bпять\b/, '5')

content.gsub!(/\b2-х\b/, '2')
content.gsub!(/\b3-х\b/, '3')
content.gsub!(/\b4-х\b/, '4')

content.gsub!(/\bс древних времен\b/, 'довольно давно')

content.gsub!(/\bтакие проблемы, как\b/, 'проблемы')

content.gsub!(/\bне так просто\b/, 'не просто')

content.gsub!(/\bпоэтому не стоит\b/, 'не стоит')

content.gsub!(/\bсама по себе\b/, '')

content.gsub!(/\bа при возможности\b/, 'и')

content.gsub!(/\bа порой\b/, '')

content.gsub!(/\bи порой\b/, 'и')

content.gsub!(/\bпобольше\b/, 'больше')

content.gsub!(/\bв течении дня\b/, 'в течение дня')

content.gsub!(/\bне имеете возможности\b/, 'не можете')

content.gsub!(/\bнедорогая стоимость\b/, 'невысокая цена')

content.gsub!(/\bпринято считать\b/, 'считается')

content.gsub!(/\bправильно подобранному\b/, 'подобранному')

content.gsub!(/\bв ином случае\b/, 'или')

content.gsub!(/\bнесёт в себе\b/, 'несет')
content.gsub!(/\bнесет в себе\b/, 'несет')

content.gsub!(/, как показывает практика,/, '')

content.gsub!(/\bкаждый из которых\b/, 'каждый')

content.gsub!(/\bи вправду\b/, '')

content.gsub!(/\bза счёт того, что\b/, 'из-за того, что')
content.gsub!(/\bза счет того, что\b/, 'из-за того, что')

content.gsub!(/, как в\b/, ' в')
content.gsub!(/, так и в\b/, ' и в')

content.gsub!(/\bсамо по себе\b/, '')

content.gsub!(/\bпотому как\b/, '')

content.gsub!(/\bв свой состав\b/, 'в состав')

content.gsub!(/\bнеобходимо определится\b/, 'необходимо разобраться')

content.gsub!(/\bспособствующим\b/, 'помогающим')

content.gsub!(/\bза короткий промежуток времени\b/, 'быстро')

content.gsub!(/\bв самые короткие сроки\b/, 'очень быстро')

content.gsub!(/\bесть в наличии\b/, 'есть')








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
content.gsub!(/\bстрессовым ситуациям\b/, 'стрессу')
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
content.gsub!(/\bмногим пациентам\b/, 'пациентам')
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
content.gsub!(/\bорганизмом человека\b/, 'организмом')
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
content.gsub!(/\bв патологический процесс\b/, 'в патологию')
content.gsub!(/\bнанести вред организму\b/, 'нанести вред')
content.gsub!(/\bшансы на выздоровление\b/, 'шансы выздоровить')
content.gsub!(/\bк положительному результату\b/, 'к результату')
content.gsub!(/\bна здоровье человека\b/, 'на здоровье')
content.gsub!(/\bпатологического процесса\b/, 'патологии')
content.gsub!(/\bк таким последствиям, как\b/, 'к последствиям')
content.gsub!(/\bкак мужчины, так и женщины\b/, 'мужчины и женщины')
content.gsub!(/\bмогут быть подвержены\b/, 'подвержены')
content.gsub!(/\bдля достижения лучшего эффекта\b/, 'для достижения эффекта')
content.gsub!(/\bупотребляется в пищу\b/, 'употребляется')
content.gsub!(/\bпотребляемой пищей\b/, 'питанием')
content.gsub!(/\bпри наличии у человека\b/, 'при наличии')
content.gsub!(/\bее состав\b/, 'состав')
content.gsub!(/\bнегативных последствий\b/, 'последствий')
content.gsub!(/\bнегативно\b/, 'плохо')
content.gsub!(/\bследующие медикаменты\b/, 'медикаменты')
content.gsub!(/\bединожды\b/, 'раз')
content.gsub!(/\bвысокой степени эффективности\b/, 'эффективности')
content.gsub!(/\bвысокой эффективности\b/, 'эффективности')
content.gsub!(/\bвредоносных бактерий\b/, 'бактерий')
content.gsub!(/\bвредоносные бактерии\b/, 'бактерии')
content.gsub!(/\bвредоносная бактерия\b/, 'бактерия')
content.gsub!(/\bсредств гигиены\b/, 'средств для гигиены')
content.gsub!(/\bпроцесс лечения\b/, 'лечение')
content.gsub!(/\bпроцесса лечения\b/, 'лечения')
content.gsub!(/\bв процессе лечения\b/, 'при лечении')
content.gsub!(/\bопределённые недостатки\b/, 'недостатки')
content.gsub!(/\bспециальные мази\b/, 'мази')
content.gsub!(/\bявляется опасным\b/, 'опасно')
content.gsub!(/\bоказывают положительное влияние\b/, 'положительно влияют')
content.gsub!(/\bтакое заболевание, как\b/, '')
content.gsub!(/\bтакими продуктами, как\b/, 'продуктами')
content.gsub!(/\bявляются источником\b/, 'это источник')
content.gsub!(/\bобщего состояния организма\b/, 'общего состояния')
content.gsub!(/\bэтот болезнь\b/, 'эту болезнь')
content.gsub!(/\bпомочь в этом\b/, 'помочь')
content.gsub!(/\bпредставительницам слабой половины человечества\b/, 'женщинам')
content.gsub!(/\bна протяжении всей\b/, 'на протяжении')
content.gsub!(/\bна длительный период\b/, 'надолго')
content.gsub!(/\bрезультатом становится\b/, 'результат - это')
content.gsub!(/\bдлительный эффект\b/, 'длительное действие')
content.gsub!(/\bжизненный\b/, '')
content.gsub!(/\bлучше воспользоваться\b/, 'воспользуйтесь')
content.gsub!(/\bпризваны помочь\b/, 'помогают')
content.gsub!(/\bимеют ряд преимуществ\b/, 'имеют преимущества')
content.gsub!(/\bсозэтих\b/, 'созданных')
content.gsub!(/\bоздоравливает организм\b/, 'оздоравливает')
content.gsub!(/\bиндивидуальные особенности организма\b/, 'индивидуальные особенности')
content.gsub!(/\bиндивидуальных особенностей организма\b/, 'индивидуальных особенностей')
content.gsub!(/\bиндивидуальную непереносимость у человека\b/, 'индивидуальную непереносимость')
content.gsub!(/\bможет быть вызвана\b/, 'вызывается')
content.gsub!(/\bможет быть вызван\b/, 'вызывается')
content.gsub!(/\bне начать своевременное\b/, 'не начать')
content.gsub!(/\bможет иметь\b/, 'имеет')
content.gsub!(/\bможет выступать\b/, 'выступает')
content.gsub!(/\bздоровье человека\b/, 'здоровье')
content.gsub!(/\bявляются причиной\b/, 'это причина')
content.gsub!(/\bнеобходимо обратить внимание\b/, 'обратите внимание')
content.gsub!(/\bявляется лучшим средством\b/, 'это отличное средство')
content.gsub!(/\bспособствует уменьшению\b/, 'уменьшает')
content.gsub!(/\bлучшим вариантом считается\b/, 'отличный вариант это')
content.gsub!(/\bявляется комплексный подход\b/, 'это комплексный подход')
content.gsub!(/\bстоимость процедуры\b/, 'стоимость')
content.gsub!(/\bкоторые ускоряют\b/, 'ускоряющие')
content.gsub!(/\bвключить в рацион\b/, 'кушать')
content.gsub!(/\bсовременных женщин\b/, 'женщин')
content.gsub!(/\bможет быть связанно\b/, 'связанно')
content.gsub!(/\bпомогут восполнить\b/, 'восполнят')
content.gsub!(/\bраствор из\b/, 'раствор')
content.gsub!(/\bполностью безопасны\b/, 'безопасны')
content.gsub!(/\bборется с проблемами\b/, 'справляется с проблемами')
content.gsub!(/\bволнительные чувства\b/, 'волнение')
content.gsub!(/\bкоторые применяются\b/, 'применяемых')
content.gsub!(/\bвремяпровождение\b/, 'время')
content.gsub!(/\bначинает ощущать\b/, 'ощущает')
content.gsub!(/\bпри воспалительных процессах\b/, 'при воспалениях')
content.gsub!(/\bпоправить здоровье\b/, 'лечиться')
content.gsub!(/\bобязательно следует\b/, 'следует')
content.gsub!(/\bопределится со\b/, 'разберется со')
content.gsub!(/\bприготовить в домашних условиях\b/, 'сделать в домашних условиях')





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
content.gsub!(', :', ':')
content.gsub!('- ,', '-')
content.gsub!(': ,', ':')
content.gsub!(', -', '-')

# ПОПРАВИТЬ ПРОБЕЛ ЗАПЯТАЯ !!!!!!!!!!
content.gsub!(' ,', ',')

# ПОПРАВИТЬ ПРОБЕЛ ТОЧКА !!!!!!!!!!
content.gsub!(' .', '.')

# ПОПРАВИТЬ ПРОБЕЛ ? !!!!!!!!!!
content.gsub!(' ?', '?')

# ПОПРАВИТЬ ПРОБЕЛ ! !!!!!!!!!!
content.gsub!(' !', '!')
content.gsub!(' :', ':')


#ПУНКТ 2. Убираем слова из текста в contents, если они начинаются с большой буквы

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

content.gsub!(/Так же, /, '')
content.gsub!(/Так же /, '')

content.gsub!(/Так, /, '')

content.gsub!(/При этом, /, '')
content.gsub!(/При этом /, '')

content.gsub!(/Следует учесть, что /, '')
content.gsub!(/Следует учесть что /, '')

content.gsub!(/Следует знать, что /, '')
content.gsub!(/Следует знать что /, '')

content.gsub!(/Следует помнить, что /, '')
content.gsub!(/Следует помнить что /, '')

content.gsub!(/Всегда помните, что /, '')
content.gsub!(/Всегда помните что /, '')

content.gsub!(/Следует заметить, что /, '')
content.gsub!(/Следует заметить что /, '')

content.gsub!(/Следует отметить, что /, '')
content.gsub!(/Следует отметить что /, '')

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

content.gsub!(/Действительно, /, '')

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
content.gsub!(/Сейчас /, '')

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

content.gsub!(/Стоит подметить, что /, '')
content.gsub!(/Стоит подметить что /, '')

content.gsub!(/Стоит помнить, что /, '')
content.gsub!(/Стоит помнить что /, '')

content.gsub!(/Стоит заметить, что /, '')
content.gsub!(/Стоит заметить что /, '')

content.gsub!(/Стоит разобраться, /, '')

content.gsub!(/Стоит учесть, что /, '')
content.gsub!(/Стоит учесть что /, '')

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

content.gsub!(/Как видно, /, '')
content.gsub!(/Как видно /, '')

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

content.gsub!(/Важно понимать, что /, '')
content.gsub!(/Важно понимать что /, '')

content.gsub!(/Важно отметить, что /, '')
content.gsub!(/Важно отметить что /, '')

content.gsub!(/Важно, /, '')
content.gsub!(/Крайне важно\b/, 'Важно')

content.gsub!(/В целом, /, '')

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

content.gsub!(/Необходимо знать, что /, '')
content.gsub!(/Необходимо знать что /, '')

content.gsub!(/Необходимо помнить, что /, '')
content.gsub!(/Необходимо помнить что /, '')

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
content.gsub!(/В процессе лечения\b/, 'При лечении')

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

content.gsub!(/Конечно же, /, '')
content.gsub!(/Конечно же /, '') 

content.gsub!(/Конечно, /, '') 

content.gsub!(/Понятно, что /, '')
content.gsub!(/Понятно что /, '')

content.gsub!(/Многие люди\b/, 'Многие')

content.gsub!(/В подавляющем числе случаев /, '')

content.gsub!(/В связи с этим /, '')

content.gsub!(/Это означает, что /, '')
content.gsub!(/Это означает что /, '')

content.gsub!(/Это связано с тем, что /, '')
content.gsub!(/Это связано с тем что /, '')

content.gsub!(/В первую очередь, /, '')
content.gsub!(/В первую очередь /, '')

content.gsub!(/Существует большое количество\b/, 'Существует много')

content.gsub!(/После того, как\b/, 'Как')
content.gsub!(/После того как\b/, 'Как')

content.gsub!(/В повседневной жизни /, '')

content.gsub!(/Практика показывает, что /, '')
content.gsub!(/Практика показывает что /, '')

content.gsub!(/Другими словами, /, '')
content.gsub!(/Другими словами /, '')

content.gsub!(/В случае, если /, '')
content.gsub!(/В случае если /, '')

content.gsub!(/Длительность процесса\b/, 'Длительность')

content.gsub!(/В некоторых случаях\b/, 'Иногда')
content.gsub!(/В некоторых ситуациях\b/, 'Иногда')

content.gsub!(/Основные /, '')

content.gsub!(/Чрезвычайно /, '')

content.gsub!(/Сперва нужно сказать, что /, '')
content.gsub!(/Сперва нужно сказать что /, '')
content.gsub!(/Сперва /, '')

content.gsub!(/Что приводит к тому, что /, '')
content.gsub!(/Что приводит к тому что /, '')
content.gsub!(/Это приводит к тому, что /, '')
content.gsub!(/Это приводит к тому что /, '')

content.gsub!(/Это значит, что /, '')
content.gsub!(/Это значит что /, '')

content.gsub!(/Тем более, что /, '')
content.gsub!(/Тем более что /, '')

content.gsub!(/Первым делом /, '')

content.gsub!(/Благодаря этому, /, '')

content.gsub!(/Не стоит говорить, о том, что /, '')
content.gsub!(/Не стоит говорить о том, что /, '')
content.gsub!(/Не стоит говорить, о том что /, '')
content.gsub!(/Не стоит говорить о том что /, '')

content.gsub!(/Лучшим вариантом будет\b/, 'Лучший вариант')

content.gsub!(/Считают, что /, '')
content.gsub!(/Считают что /, '')

content.gsub!(/Важно! /, '')

content.gsub!(/Несмотря на то, что /, '')
content.gsub!(/Несмотря на то что /, '')

content.gsub!(/То есть, /, '')

content.gsub!(/Из этого следует, что /, '')
content.gsub!(/Из этого следует что /, '')

content.gsub!(/Следовательно, /, '')

content.gsub!(/В то же время, /, '')

content.gsub!(/Организм человека\b/, 'Организм')

content.gsub!(/В результате негативного влияния\b/, 'При негативном влиянии')

content.gsub!(/Особенно /, '')

content.gsub!(/Так что /, '')

content.gsub!(/Главенствующим\b/, 'Главным')

content.gsub!(/Иными словами можно сказать, что\b/, '')
content.gsub!(/Иными словами можно сказать что\b/, '')
content.gsub!(/То есть можно сказать, что\b/, '')
content.gsub!(/То есть можно сказать что\b/, '')
content.gsub!(/Можно сказать, что\b/, '')
content.gsub!(/Можно сказать что\b/, '')

content.gsub!(/В конечном итоге\b/, '')

content.gsub!(/Попробуем разобраться, /, '')

content.gsub!(/Такими являются\b/, 'Это')

content.gsub!(/Сюда входит\b/, 'Это')

content.gsub!(/Обязательно следует\b/, 'Следует')

content.gsub!(/Это явление характеризуется тем, что /, '')

content.gsub!(/Некоторые люди\b/, 'Некоторые')

content.gsub!(/Такого рода\b/, '')

content.gsub!(/Стоит рассмотреть\b/, 'Рассмотрим')

content.gsub!(/По истечению некоторого времени\b/, 'Позже')

content.gsub!(/Положительные результаты\b/, 'Результаты')
content.gsub!(/Положительный результат\b/, 'Результат')

content.gsub!(/Необходимо знать\b/, 'Необходимо узнать')

content.gsub!(/Идеальный вариант\b/, 'Отличный вариант')

content.gsub!(/Необходимо исключить\b/, 'Исключите')

content.gsub!(/В связи с этим, /, '')

content.gsub!(/В частности, /, '')
content.gsub!(/В частности /, '')

content.gsub!(/Хорошее средство\b/, 'Отличное средство')

content.gsub!(/Специалисты\b/, 'Врачи')

content.gsub!(/Особой популярностью\b/, 'Популярностью')

content.gsub!(/В ином варианте /, '')

content.gsub!(/Ввиду того что /, '')

content.gsub!(/Само по себе /, '')

content.gsub!(/Вышеперечисленные\b/, 'Эти')

content.gsub!(/Наиболее распространенными\b/, 'Распространенными')

content.gsub!(/Лучше обратиться к\b/, 'Обратитесь')





#########



#content.gsub!(/\bэтого\b/, '')           #это надо добавить в самый конец перед удалением двойных пробелов
content.gsub!(/\bэтот\b/, '')           #это надо добавить в самый конец перед удалением двойных пробелов
content.gsub!(/Этого\b/, '')           #это надо добавить в самый конец перед удалением двойных пробелов
content.gsub!(/Этот\b/, '')           #это надо добавить в самый конец перед удалением двойных пробелов
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
content.gsub!(', :', ':')
content.gsub!('- ,', '-')
content.gsub!(': ,', ':')
content.gsub!(', -', '-')


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

# ПОПРАВИТЬ ПРОБЕЛ <strong>
content.gsub!('<strong> ', '<strong>')

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

# Исправляем маленькие в начале строки ! с пробелом
content.gsub!(/(^ [а-я])/){ $1.to_s.mb_chars.upcase }


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





