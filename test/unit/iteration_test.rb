require 'test_helper'

class IterationTest < ActiveSupport::TestCase
  setup do
    iterationHelper = IterationsHelper.new
    iteration = Iteration.new
  end

  test "shouldReturnTrueWhenIterationIsStoryPile" do
    iteration.label = "Story Pile"
    assert(iterationHelper.isStoryPile?(iteration))
  end
end
