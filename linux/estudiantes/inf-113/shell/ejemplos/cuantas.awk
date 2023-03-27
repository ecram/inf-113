BEGIN {
	n = 0
}
/for/ {
	n++
}
END {
	print "La palabra for aparece " n " veces"
}
