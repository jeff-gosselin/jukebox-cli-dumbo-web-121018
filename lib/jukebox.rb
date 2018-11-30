require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
   puts "I accept the following commands:"
   puts "- help : displays this help message"
   puts "- list : displays a list of songs you can play"
   puts "- play : lets you choose a song to play"
   puts "- exit : exits this program"
   puts
end

def list(array)
   array.each_with_index do |song, index|
      puts "#{index + 1}. #{song}"
   end
end

def play(array)
   puts "Please enter a song name or number:"
   user_input = gets.chomp
   song_exists = nil

   array.each_with_index do |song, i|
      if user_input == song || user_input == (i + 1).to_s
         puts "Playing #{song}"
         song_exists = "yes"
      end
   end

   if song_exists == nil
      puts "Invalid input, please try again"
   end
end

def exit_jukebox
   puts "Goodbye"
end

def run(array)
   help

   user_input = nil

   while user_input != "exit"
      puts "Please enter a command:"
      user_input = gets.chomp

      case user_input
      when "help"
         help
      when "list"
         list(array)
      when "play"
         play(array)
      when "exit"
         exit_jukebox
      else
         puts "Please enter a command:"
         user_input = gets.chomp
      end
   end
end
