require 'minitest/autorun'
require 'minitest/emoji'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test

  def test_it_exists
    jb = JungleBeat.new

    assert_instance_of JungleBeat, jb
  end

  def test_it_has_a_list
    jb = JungleBeat.new

    assert_instance_of LinkedList, jb.list
  end

  def test_it_can_append_sound
    jb = JungleBeat.new

    assert_equal "borg", jb.append("borg")
  end

  def test_it_can_append_multiple_sounds
    jb = JungleBeat.new

    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_it_can_count
    jb = JungleBeat.new
    jb.append("sum ting wong")
    jb.append("wi tu lo")
    jb.append("ho lee fuk")
    jb.append("bang ding ow")

    assert_equal 12, jb.count
  end

  def test_it_can_play
    jb = JungleBeat.new
    jb.append("sum ting wong wi tu lo ho lee fuk bang")

    assert_equal "sum ting wong wi tu lo ho lee fuk bang", jb.play
  end


end
