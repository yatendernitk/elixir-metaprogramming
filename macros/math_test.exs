defmodule MathTest do
  use Assertion

  test "integers can be subtracted" do
    assert 5 - 1 == 4
    assert 25 - 11 == 14
  end

  test "integers can be multiplied & divided" do
    assert 5 * 5 == 25
    assert 5 / 5 == 1
  end
end
