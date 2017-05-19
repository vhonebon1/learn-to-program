all_m4as = shuffle(Dir['**/*.{m4a, M4A}'])
File.open 'new_playlist.m3u', 'w' do |f|
    all_mp4s.each do |song|
        f.write song+'\n'
    end
end
puts "Playlist created!"
