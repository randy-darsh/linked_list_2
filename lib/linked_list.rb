require 'pry'
require './lib/node'

class LinkedList

  attr_reader :head

  def initialize(head = nil)
    @head = head
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    data
  end

  def count
    current_node = @head
    if @head.nil?
      counter = 0
    else
      counter = 1
      until current_node.next_node == nil
        current_node = current_node.next_node
          counter += 1
      end
    end
    counter
  end

  def to_string
    current_node = @head
    words = []
    if @head.nil?
      words
    else
      until current_node.next_node == nil
        words << current_node.data
        current_node = current_node.next_node
      end
      words << current_node.data
    end
    words.join(" ")
  end

  def prepend(data)
    if @head.nil?
      @head = Node.new(data)
    else
      previous_node = @head
      @head = Node.new(data)
      @head.next_node = previous_node
    end
    data
  end

  def insert(position, data)
    current_node = @head
    new_node = Node.new(data)
    counter = 0
    until counter == position - 1
      counter +=1
      current_node = current_node.next_node
    end
    current_node.next_node, new_node.next_node = new_node, current_node.next_node
    data
  end

  def find(position, node_count)
    current_node = @head
    counter = 0
    elements = ""
    until position == counter
      current_node = current_node.next_node
      counter += 1
    end
    node_count.times do
      elements << current_node.data
      counter += 1
      current_node = current_node.next_node
    end
    elements
  end

  def includes?(data)
    current_node = @head
    until current_node == nil
      if current_node.data == data
        return true
      end
      current_node = current_node.next_node
    end
    false
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end
    popped_node = current_node.next_node.data
    current_node.next_node = nil
    popped_node
  end

end
