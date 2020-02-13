ExUnit.start() 

defmodule DownUpperCase do
    def upper(str) do
        String.upcase str
    end

    def down(str) do
        String.downcase str
    end
end

defmodule DownUpperCaseTest do

    use ExUnit.Case
    alias DownUpperCase

    describe "DuplicateString.upper/1" do
        test "when receives a downcase string" do
            assert DownUpperCase.upper "oi" == "OI"
        end
    end

    describe "DuplicateString.down/1" do
        test "when receives a downcase string" do
            assert DownUpperCase.down "OI" == "oi"
        end
    end
end