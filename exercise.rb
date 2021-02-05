require 'pry'

Beyoncehash = {
    hits: [
      { title: 'bootylicious', group: true, group_name: 'destinysChild', hair: ['straight', 'blonde', 'pink tips'], signature_look: 'fedora with yellow feather', video_theme: 'dressing room dance', best_line: 'Move your body up and down, make your booty touch the ground', fierceness: 7, formation: false, dancers: 20
      },
      { title: 'singleLadies', group: false, group_name: 'none', hair: ['honey brown', 'half up, half down'], signature_look: 'black bodysuit and legs for days', video_theme: 'single ladies dance', best_line: 'if you like it then you should\'ve put a ring on it', fierceness: 10, formation: true, dancers: 2 
      },
      { title: 'letMeUpgradeYou', group: false, group_name: 'none', hair: ['beaded bun', 'wet hair', 'honey brown', 'waves'], signature_look: 'flapper dress and bodysuit', video_theme: 'decadence, water, gold beads and pearls', best_line: 'I could do for you what Martin did for the people', fierceness: 10, formation: true, dancers: 5 
      },
      { title: 'sorry', group: false, group_name: 'none', hair: ['braids', 'bun', 'blonde', 'waves', 'bob'], signature_look: 'braided crown with gold bikini top', video_theme: 'party bus and Serena Williams in bodysuit', best_line: 'Boi bye', fierceness: 10, formation: false, dancers: 1 
      },
      { title: 'sayMyName', group: true, group_name: 'destinysChild', hair: ['blonde', 'curly', 'braid', 'pony tail'], signature_look: 'none', video_theme: 'color blocked scenes with group', best_line: 'say my name, say my name', fierceness: 7, formation: true, dancers: 6 
      },
      { title: 'feelingMyself', group: true, group_name: 'Nicki Minaj featuring Beyonce', hair: ['blonde', 'waves'], signature_look: 'sporty bodysuit', video_theme: 'Coachella music festival', best_line: 'Im felling myself', fierceness: 9, formation: false, dancers: 0 
      }
    ],
    movies: [
      { title: 'Austin Power\'s Goldmember', year: 2002, rating: 5},
      { title: 'Dreamgirls', year: 2006, rating: 7},
      { title: 'Obsessed', year: 2009, rating: 6},
      { title: 'Cadillac Records', year: 2008, rating: 8},
      { title: 'Life is But a Dream', year: 2013, rating: 6},
      { title: 'The Pink Panther', year: 2006, rating: 4},
      { title: 'Epic', year: 2013, rating: 7},
      { title: 'The Fighting Temptations', year: 2003, rating: 5}
    ]
  };

# 1. puts all the songs
def songs hash
  hash[:hits].each do |song|
    puts song
  end
end
# 2. puts all the movies
def movies hash
  hash[:movies].each do |movie|
    puts movie
  end
end
# 3. create an array with a list of all of Beyonce's hit song titles
def song_titles hash
  hash[:hits].reduce([]) do |new_array,song|
    new_array << song[:title]
  end
end
# 4. create an array with a list of all of Beyonce's fierceness ratings
def fierceness_ratings hash
  hash[:hits].map do |song|
    song[:fierceness]
  end
end
# 5. give me all the songs where Beyonce is wearing a bodysuit or a bodysuit is part of the video theme
def bodysuit_songs hash
  hash[:hits].filter do |song|
    song[:signature_look].include?("bodysuit") || song[:video_theme].include?("bodysuit")
  end
end
# 6. create an array with all of the songs where Beyonce's fierceness is greater than or equal to 8
def fierceness_greater_than_8 hash
  hash[:hits].filter do |song|
    song[:fierceness] >= 8
  end
end
# 7. create an array with all of the movies Beyonce made in 2006 and after
def movies_after_2016 hash
  hash[:movies].map do |movie|
    movie[:year] >= 2016
  end
end
# 8. find all the hit songs where beyonce was in a group
def beyonce_group_songs hash
  hash[:hits].filter { |song| song[:group] }
end
# 9. find a hit song where Beyonce's hair is blonde
def blonde_hair hash
  hash[:hits].filter do |song|
    song[:hair] == blonde
  end
end
# 10. find the hit song sorry
def sorry hash
  hash[:hits][title: 'sorry']
end
# 11. find all hit songs where Beyonce's fierceness rating is 10
def fierceness_rating_10 hash
  hash[:hits].filter do |song|
    song[:fierceness] == 8
  end
end
# 12. sum up Beyonces fierceness value for all of her hit songs
def total_fierceness hash
  #fierceness_ratings(hash).sum  .reduce(:+)
  hash[:hits].reduce(0) do |sum,current_song|
    sum + current_song[:fierceness]
  end
end

# 13. get the average fierceness value for all of her hit songs
def average_fierceness_value hash
  hash[:hits].reduce(0) do |sum, current_song|

end
# 14. sum up Beyonces rating value for all of her movies
def rating_value_sum hash

end
# 15. get the average rating value for all of her movies
# 16. sum up the total number of dancers in all of the hit song videos
# 17. create an array of beyonces hairstyles without repeats
# 18. create an object where the properties are song names and the value is an object which contains that fierceness and average fierceness
# 19. create an object where the properties are movie names and the value is an object which contains that rating and average rating
# 20. create a hash with beyonces hairstyles with a tally of each hairstyle ie { 'blonde': 3, ect.}  
def hairstyle_count hash
  binding.pry
end



binding.pry
0