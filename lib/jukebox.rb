

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |i, index| puts "#{index+1}. #{i}"}
end

def play(songs)
  puts "Please enter a song name or number: "
  choice = gets.strip
  if (1..9).to_a.include(choice.to_i)
    puts "Playing #{songs[choice.to_i - 1]}"
  elsif songs.include?(choice)
    puts "Playing #{choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  command = ""
  while command
  puts "Please enter a command:"
  command = gets.strip
  case command 
    when "help"
      help
      when "list"
        list(songs)
      when "play"
        list(songs)
        play(songs)
      when "exit"     
        exit_jukebox
        break
      else 
        help
      end
    end
end