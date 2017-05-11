require './lib/node.rb'

class LinkedList

  attr_accessor :head

  def initialize (head = nil)
      @head = head
  end

  def append(data)
    if @head == nil
       @head = Node.new(data)
    else
      list = @head
      while list.next_node != nil
        list = list.next_node
      end
        list.next_node = Node.new(data)
    end
  end

  def count
    list = @head
    if @head == nil
        counter = 0
    else
      counter = 1
      while list.next_node != nil
        list = list.next_node
          counter +=1
      end
    end
      counter
  end

  def to_string
    words = []
    list = @head

    if @head == nil
      words
    else
      while list.next_node != nil
        words << list.data
        list = list.next_node
      end
        words << list.data
    end

      return words.join(" ")
  end

  def includes?(value)
    data_list = to_string.split
    data_list.include?(value)
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node, @head = @head, new_node
  end

  def insert(position, data)
    list = @head
    new_node = Node.new(data)
    counter = 0

    while counter != position - 1
        counter +=1
        list = list.next_node
    end
     list.next_node, new_node.next_node = new_node, list.next_node
  end

  def find(first_position, amount)
    list = @head
    counter = 0
    data = []

    while counter != first_position
      counter +=1
      list = list.next_node
    end
      data << list.data
      amount_counter = 0

      while  amount_counter != amount - 1
        amount_counter += 1
        list = list.next_node
        data << list.data
      end

      data.join(" ")

  end

  def pop
    list = @head
    position = 0
    previous_to_last = count - 2

    while position != previous_to_last
      position += 1
      list = list.next_node
    end

      eliminated_node = list.next_node
      p eliminated_node.data

        list.next_node = nil
  end

  def init_append(string)
    sounds_allowed = ["tee", "dee", "deep","ditt", "doo", "dop", "doop", "bop", "boop", "hoo", "la", "na", "plop", "shi", "shu", "suu", "woo"]
    words = string.split
    words.each do |word|
      if sounds_allowed.include?(word)
            append(word)
      else
            return 0
      end
    end
  end
end
