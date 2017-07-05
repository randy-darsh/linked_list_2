require 'minitest/autorun'
require 'minitest/emoji'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new()

    assert_instance_of LinkedList, list
  end

  def test_head_is_nil_by_default
    list = LinkedList.new()

    assert_nil nil, list.head
  end

  def test_append_holds_data
    list = LinkedList.new()

    assert_equal "doop", list.append("doop")
  end

  def test_counter_increases_when_next_node_is_nil
    list = LinkedList.new()
    list.append("fart")

    assert_equal 1, list.count
  end

  def test_it_returns_a_string_when_asked
    list = LinkedList.new()
    list.append("doodoo")

    assert_equal "doodoo", list.to_string
  end

  def test_prepend_works
    list = LinkedList.new()
    list.prepend("thing")

    assert_equal "thing", list.prepend("thing")
  end

  def test_insert_works
    list = LinkedList.new()
    list.append("fart")
    list.insert(1, "something")

    assert_equal "something", list.insert(1, "something")
  end

  def test_find_works
    list = LinkedList.new()
    list.append("bleep")
    list.append("bloop")
    list.append("blorp")

    assert_equal "bloop", list.find(1, 1)
  end

  def test_include_works
    list = LinkedList.new()
    list.append("bleep")
    list.append("bloop")
    list.append("blorp")

    assert_equal true, list.includes?("bloop")
  end

  def test_include_can_return_false
    list = LinkedList.new()
    list.append("bleep")
    list.append("bloop")
    list.append("blorp")

    assert_equal false, list.includes?("blooop")
  end

  def test_pop_takes_last_element_out_of_list
    list = LinkedList.new()
    list.append("bleep")
    list.append("bloop")
    list.append("blorp")
    list.append("iamarobot")

    assert_equal "iamarobot", list.pop
  end

end
