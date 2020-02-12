ExUnit.start() 
defmodule Palindromo do
    def get_word do
        IO.gets('Type a word to check: ')
        |> String.trim
    end

    # first compare first number and the last number
    def compare_first_and_last_char(word) do 
        first = String.first word 
        last = String.last word

        first === last
    end

    # slice one position in the front and one position in the end of the string
    def slice_first_last(word) do
        String.slice word, 1..1
    end

    def is_palindromo(word) do
        if String.length word <= 1 do
            true
        end 
         
        unless compare_first_and_last_char word == false do
            word |> slice_first_last |> is_palindromo
        end

        false
    end
end

defmodule PalindromoTest do
    use ExUnit.Case

    alias Palindromo

    describe "Palindromo.check_first_last/1 " do
        test "when first and last char is equal" do
            assert Palindromo.compare_first_and_last_char("ana") == true
        end

        test "when first and last char is not equal" do
            assert Palindromo.compare_first_and_last_char("victoria") == false
        end
    end

    describe "Palindromo.slice_first_last/1" do 
        test "when this function is called" do
            assert Palindromo.slice_first_last("ana") == "n"
        end
    end

    describe "Palindromo.compare_first_and_last_char/1" do 
        test "when the word is palindrome and the number of char is off" do
            assert Palindromo.compare_first_and_last_char("avid diva") == true
        end

        test "when the word is palindrome and the number of char is pair" do
            assert Palindromo.compare_first_and_last_char("anna") == true
        end

        test "when word is not a palindrome and is pair" do
            assert Palindromo.compare_first_and_last_char("oi") == false
        end

        test "when word is not a palindrome and is off" do
            assert Palindromo.compare_first_and_last_char("caramba") == false
        end
    end
end
