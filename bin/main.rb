
require_relative '../lib/checks.rb'

check = CheckError.new(ARGV.first)
check.check_indentation
check.check_trailing_spaces
check.tag_error
check.end_error
check.empty_line_error
check.errors.uniq.each do |err| 
  puts "#{check.checker.file_path.colorize(:blue)} : #{err.colorize(:red)}" 
end

puts check.checker.err_msg if check.checker.file_lines.empty?