ExUnit.start() 
defmodule Palindromo do
    def get_word do
        IO.gets('Type a word to check: ')
        |> String.trim
    end

    def reverse_string(word) do
        String.reverse word
    end

    def check_palindromo(word) do 
        reverse_string(word) === word        
    end

    def communicate do 
        word = get_word()
        check_palindromo(word)
    end
end

defmodule PalindromoTest do
    use ExUnit.Case

    alias Palindromo

    describe "Palindromo.is_palindromo/1" do 
        test "when the word is palindrome and the number of char is off" do
            assert Palindromo.check_palindromo("avid diva") == true
        end

        test "when the word is palindrome and the number of char is pair" do
            assert Palindromo.check_palindromo("anna") == true
        end

        test "when word is not a palindrome and is pair" do
            assert Palindromo.check_palindromo("oi") == false
        end

        test "when word is not a palindrome and is off" do
            assert Palindromo.check_palindromo("caramba") == false
        end
    end
end
