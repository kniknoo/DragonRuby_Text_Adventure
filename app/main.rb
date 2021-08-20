require "lib/console_mod.rb"
require "lib/verbs.rb"
require "lib/helpers.rb"
require "lib/general_methods.rb"
require "lib/special_methods.rb"
require "lib/items.rb"
require "lib/rooms.rb"
require "app/tick.rb"

def boot args
  $console = $gtk.console
  #$gtk.log_level = :off
  $console.animation_duration = 0
  $console.show
  $state = args.state
end

# room triggers
# Enemies
# Room Descriptions




#Flow of text adventure
#map is a collection of room data
#each room has a description, four exit possibilities, a list of items, if any, props if any
#...and events with variations that may take place.
#verbs are a list of accepted action words
#items is a list of valid objects that can interact
#the display should show the last action taken, room name, description, props, items, inventory,
#...open paths. If not filled out, these should be blank.
#input: split words. If more than two words, error. If verb is not in verb list, error.
#...if item is not in item list, error.
#Player class: knows current room, has inventory, game verbs are methods
=begin
ROOMS = [
  {description: "a room", exits: [:n, :e, :w, :s], items:[], props: []}
]
ITEMS = [
  name: {visible: false, if_found: "found", verbs: [:get, :take, :drop, :use]}
]
PROPS = [
  name: {contains: [], active: true}
]


Account for a dark room. Do not enter if the oncoming room is dark and you don't have a lit candle
Account for stairs.
=end


=begin
def n
  go "north"
end
def s
  go "south"
end
def e
  go "east"
end
def w
  go "west"
end
def u
  go "up"
end
def d
  go "down"
end
alias north n
alias south s
alias east e
alias west w
alias up u
alias down d
=end
