BEGIN { 
n = 0
}
{
	n++;
	if ((n >= min) && (n <= max))
		print
}
