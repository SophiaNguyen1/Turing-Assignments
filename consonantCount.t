procedure consonantCount
    var word : string
    var letterCount, consonants, vowels : int := 0
    get word : *
    letterCount := length (word)
    for i : 1 .. length (word)
	if word (i) = "a" or word (i) = "e" or word (i) = "i" or word (i) = "o" or word (i) = "u" then
	    vowels := vowels + 1
	end if
	consonants := letterCount - vowels
    end for
    put "The number of consonants in the word ", word, " is ", consonants, "."
end consonantCount
consonantCount

