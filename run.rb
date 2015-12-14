unless require "active_support/core_ext/integer/inflections"
  puts 'please install active support `gem install activesupport` first'
  exit
end

LIST = [
'Partial key-value-pair tree',
'Target divs',
'For each...ends',
'Call or bind?',
'Lord of the Rings',
'Geeks are playing',
'Ones are switching',
'Makes are linking',
'Runners running',
'Greps are piping',
'Lamdas passing',
'Threads are sleeping'
]

LIST.each_with_index do |item, index|
  puts "On the #{(index + 1).ordinalize} day of Codemas, my true Love sent to me:"
  index.downto(0).each do |step|
    prefix = step > 0 ? step + 1 : index > 0 ? 'and a' : 'a'
    puts step != 4 ? "#{prefix} #{LIST[step]}" : LIST[step]
  end
  puts
end
