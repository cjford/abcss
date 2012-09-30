curr_rule = nil
rule_hash = {}
read_file = File.open(ARGV[0])

read_file.each do |line| 
	if line.index(/\{/) != nil
		curr_rule = line[ 0..line.index(/\{/) - 1 ].strip
		rule_hash[curr_rule] = []
	elsif line.index(/\}/) != nil
		curr_rule = nil
		next
	elsif curr_rule != nil
		rule_hash[curr_rule].push(line) if line.index(/\}/) == nil
	end
end

File.open(ARGV[1], 'w') do |write_file|
	rule_hash.keys.sort.each do |x|
		write_file.puts x + " {"
		write_file.puts rule_hash[x].sort
		write_file.puts "}\n\n"
	end
end
read_file.close
