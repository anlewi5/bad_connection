puts "HELLO, THIS IS A GROCERY STORE!"

ready_to_quit = false
goodbye_counter = 0
input = gets

until ready_to_quit
  if input == "\n"
    puts "HELLO?!"
  elsif input != input.upcase
    puts "I AM HAVING A HARD TIME HEARING YOU."
  elsif input == "GOODBYE!\n" && goodbye_counter == 0
    goodbye_counter += 1
    puts "ANYTHING ELSE I CAN HELP WITH?"
  elsif input == "GOODBYE!\n" && goodbye_counter == 1
    ready_to_quit = true
  elsif input == input.upcase
    puts "NO, THIS IS NOT A PET STORE"
  end
  input = gets if !ready_to_quit
end

puts "THANK YOU FOR CALLING!"
