input = <<TEST_INPUT
1
This is a test document.
It ********* has
no *purpose* other than
dem*onstrat*ion.
   *********
TEST_INPUT
lines = input.split("\n")

def border_top(lines)
  lines.each_with_index do |line|
    m = /\*+/.match(line)
    if m
      return m.offset(0)
    end
  end
end

def count()
  
end

puts border_top(lines).inspect
