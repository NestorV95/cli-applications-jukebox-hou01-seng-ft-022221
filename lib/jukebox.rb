def songs
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
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
 songs.each_with_index{|song, index|
 puts "#{index+1}. #{song}"}
end

require"pry"

def play(songs)
 puts "Please enter a song name or number:"
 input = gets.strip
 number = input.to_i
 v_num = [1,2,3,4,5,6,7,8,9]
 
  songs.each_with_index do |song, index|
    
  if index.include?(input.to_i) || songs.include?(input)
     index = songs.index(input)
    puts "Playing #{song[index+1]}"
  else
    puts "Invalid input, please try again"
  end 
 end
end

def exit_jukebox
 puts "Goodbye"
end

def run 
#run method that calls on all of these "helper" methods to implement the behavior of our program.
end