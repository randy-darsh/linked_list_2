require 'minitest/autorun'
require 'minitest/emoji'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new("doop", nil)

    assert_instance_of Node, node
  end

  def test_it_can_interpret_data
    node = Node.new("fart", nil)

    assert_equal "fart", node.data
  end

  def test_next_node_is_nil_by_default
    node = Node.new("yop")

    assert_nil nil, node.next_node
  end

end
