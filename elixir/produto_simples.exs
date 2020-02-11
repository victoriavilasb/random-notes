defmodule Product do
  def get_number do
    IO.gets("Type number ")
  end

  def treat_number(num) do
    String.to_integer(String.trim(num))
  end

  def product do
    a = treat_number(get_number())
    b = treat_number(get_number())
    a * b
  end

  def print_result do
    IO.puts "PROD = #{product()}"
  end
end

Product.print_result