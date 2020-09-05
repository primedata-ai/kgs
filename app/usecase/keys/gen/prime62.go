package gen

var primeBase62 = []byte{
	'E', '1', 'J', 'I', '7', '9', 'R', 'm', 'g', 'U', 'c', 'B', '3', 'Q', 's',
	'q', 'w', 'p', 'L', 'C', 'a', 'M', '6', 'b', 'V', 'e', 'W', 'r', 'j', 'A',
	'i', 't', 'Z', '0', 'Y', 'v', 'y', 'l', 'S', 'n', 'G', 'o', 'z', 'd', 'h',
	'4', 'u', '5', 'f', 'k', '8', 'P', 'X', 'K', 'D', 'N', 'T', 'H', 'x', 'O',
	'2', 'F',
}

func NewPrimeBase62() []byte {
	return primeBase62
}
