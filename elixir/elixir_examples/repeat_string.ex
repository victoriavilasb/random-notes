ExUnit.start() 

defmodule DuplicateString do
    def duplicate(str, times) do
        String.duplicate str, times
    end
end

defmodule DuplicateStringTest do

    use ExUnit.Case
    alias DuplicateString

    describe "DuplicateString.duplicate/2" do
        test "when receives a string and a number of times iqual 2" do
            assert DuplicateString.duplicate("oi", 2) == "oioi"
        end
    end
end