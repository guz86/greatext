#encoding: cp866

# ���뢠�� 䠩� ��室�� �ࠧ� � ������塞 �� �� ������.

#logo_path = File.join( File.dirname(__FILE__), '../logo.txt' )
#file = File.open( logo_path )


# ���뢠�� 䠩� text.txt
content = File.read("text.txt")
#puts content.class  



puts content   





puts "------"


# ���ࠥ� ᫮�� �� ⥪�� � contents


puts content.gsub!('�મ', '')



# ���ࠥ� ������ �஡��� � contents

puts content.gsub!('  ', ' ')




#puts "�ਢ�� ����".class
# puts "Terribly complex".gsub "complex", "simple" # => "Terribly simple"
#  puts "�ਢ�� ����".gsub "����", "�ਢ��" # => "Terribly simple"