
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
        size = String.length word

        if size <= 1 do
            IO.puts size

            return {:error}
        end 

         
        # unless compare_first_and_last_char word == false do
        #     word |> slice_first_last |> is_palindromo
        # end

        # {:ok}
    end

    def communicate do 
        word = get_word()
        is_palindromo(word)
    end