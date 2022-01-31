-- string.find("a [word]", "[") --> malformed pattern (missing ']')

print(string.find("a [word]", "[", 1, true)) --> 3       3
