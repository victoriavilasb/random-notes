ExUnit.start() 

defmodule StringList do
    def string_to_list(str) do
        String.codepoints str
    end

    def list_to_string(list) do
        List.to_string list
    end
end

defmodule StringListTest do

    use ExUnit.Case
    alias StringList

    describe "String.string_to_list/1" do
        test "when receives a string" do
            assert StringList.string_to_list("oi") == ["o", "i"]
        end
    end

    describe "String.list_to_string/1" do
        test "when receives a list" do
            assert StringList.list_to_string(["o", "i"]) == "oi"
        end
    end
end