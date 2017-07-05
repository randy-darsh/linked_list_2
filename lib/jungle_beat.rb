require './lib/linked_list'

class JungleBeat

  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    sounds = data.split
    sounds.each do |sound|
      list.append(sound)
    end
    data
  end

  def count
    list.count
  end

  def play
    rate = 200
    voice = "Bad News"

    `say -r #{rate} -v #{voice} #{list.to_string}`
    list.to_string
  end

end
