tc = ["Table of Contents", "Chapter 1:", "Getting Started", "page 1", "Chapter 2:", "Numbers", "page 9", "Chapter 3:", "Letters", "page 13"]

line_width = 60
puts (tc[0].center(line_width))
puts (tc[1].ljust(line_width/3)) + tc[2].ljust(line_width/3) + tc[3].rjust(line_width/3)
puts (tc[4].ljust(line_width/3)) + tc[5].ljust(line_width/3) + tc[6].rjust(line_width/3)
puts (tc[7].ljust(line_width/3)) + tc[8].ljust(line_width/3) + tc[9].rjust(line_width/3)
