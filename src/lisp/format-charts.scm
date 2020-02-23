#!/usr/bin/env guile




fd = STDIN
s = ["E", "A", "D", "G", "B", "e"]

fd.lines.each_with_index {|l, i|
#  if(0 < (i % 14) < 5) then
#      p ((i%14)%12)
#    end
case (i%14)
    when 1 then
    "E"
    when 2 then
    "A"
    when 3 then
    "D"
    when 4 then
    "G"
    when 5 then
    "B"
    when 6 then
    "e"
end
print l.gsub("((", "|--").gsub("))", "\n\n").gsub("(", "|--")
  .gsub("b", "b-|--").gsub("s", "#-|--").gsub("'", "--|--")
  .gsub(" ", "").gsub("__", "---|--").gsub(")", "\n")
}
