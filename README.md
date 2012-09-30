abcss
=====

Quick and dirty script to alphabetize a CSS file by selector, and alphabetize properties within each selector.

Run from the command line with input file and output file as arguments. If both arguments are the same, the original file will be overwritten.
	ruby abcss.rb file_to_alphabetize.css output_file.css

Requires the CSS file to be formatted as follows (tabs optional):
	selector {
		property1
		property2
		property3
	}
