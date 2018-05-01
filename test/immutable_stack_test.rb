require "test/unit"
require "immutable_stack"

class ImmutableStackTest < Test::Unit::TestCase
  def setup
    @stack =  ImmutableStack::ImmutableStack.new([1,2,3])
  end

  test "push an object at the inmutable stack" do
    assert_equal @stack.push(3), [1,2,3,3]
    assert_equal @stack.list, [1,2,3]
  end

  test "pop an object at the inmutable stack" do
    assert_equal @stack.pop(), 3
    assert_equal @stack.temporal_list,[1,2]
    assert_equal @stack.list, [1,2,3]
  end

end
