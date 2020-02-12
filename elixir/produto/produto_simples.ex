ExUnit.start

defmodule Product do
  def get_number do
    IO.gets("Type number ")
  end

  def treat_number(num) do
    String.to_integer(String.trim(num))
  end

  def product(a, b) do
    a * b
  end

  def communicate do
    a = treat_number(get_number())
    b = treat_number(get_number())
    IO.puts "PROD = #{product(a, b)}"
  end
end

defmodule ProductTest do
  use ExUnit.Case

  alias Product

  describe "Product.treat_number/1" do
    test "when number comes with as string concatened with \\n" do
      assert Product.treat_number("1\n") == 1
    end
  end

  describe "Product.product/2" do
    test "when receives two number \\n" do
      assert Product.product(3,4) == 12
    end
  end
end