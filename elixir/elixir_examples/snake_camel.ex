ExUnit.start() 
defmodule SnakeCamel do
    def split_by_undescore(str) do
        String.split str, "_"
    end

    def downcase_first(word) do
        it = String.codepoints word
        [head | tail] = it
        (head |> String.downcase) <> (tail |> List.to_string)
    end 

    def upcase_all_words(list) do
        new_list = Enum.map list, fn x ->
            it = String.codepoints x
            [head | tail] = it
            (head |> String.upcase) <> (tail |> List.to_string)
        end
        List.to_string new_list
    end

    def snake_to_camel(word) do 
        word |> split_by_undescore |> upcase_all_words |> downcase_first
    end
end

defmodule SnakeCamelTest do
    use ExUnit.Case

    alias SnakeCamel

    describe "SnakeCamel.snake_to_camel/1" do 
        test "when the word is palindrome and the number of char is off" do
            assert SnakeCamel.snake_to_camel("my_variable") == "myVariable"
        end
    end
end