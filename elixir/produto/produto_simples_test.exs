
ExUnit.start

defmodule ProductTest do
  use ExUnit.Case

  alias Product

  describe "Product.treat_number/1" do
    test "when number comes with as string concatened with \\n" do
      assert Product.treat_number("1\n") == 1
    end
  end
end