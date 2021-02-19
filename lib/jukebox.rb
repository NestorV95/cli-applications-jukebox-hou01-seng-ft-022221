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


def play(songs)
  p_song = nil
 puts "Please enter a song name or number:"
 input = gets.strip
 
  songs.each_with_index do |song, index|
  if input == song || input == (index+1).to_s
    p_song = song
   end 
   p_song
  end
  if p_song == nil 
   puts "Invalid input, please try again"
  else 
    puts "Playing #{p_song}"
  end
end

def exit_jukebox
 puts "Goodbye"
end

def run 
 #run method that calls on all of these "helper" methods to implement the behavior of our program.
 input = gets.chomp
  puts "Please enter a command:"
  if input != 'exit' do 
    puts "Please enter a command:"
     elsif input == 'help'
      help
     elsif input == 'list'
      list(songs)
      elsif input == 'play'
      play(songs)
    end
      exit_jukebox
    end
end