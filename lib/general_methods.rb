def one_word_command
  if $state.command[0] == "help"
    "Actions:   #{VERBS.join(" ")}"
  elsif DIRECTIONS.include? $state.command[0]
    #directions($state.command[0])
    go($state.command[0])
  else
    "What should I #{$state.command[0]}?"
  end
end

def two_word_command
  case $state.command[0]
  when "get", "take" then return get($state.command[1])
  when "go" then go($state.command[1])
  when "drop" then drop($state.command[1])
  when "use" then use($state.command[1])
  when "look" then look($state.command[1])
  when "search" then search($state.command[1])
  when "open" then open($state.command[1])
  when "light" then light($state.command[1])
  when "read" then read($state.command[1])
  when "say" then say($state.command[1])
  when "ride" then ride($state.command[1])
  end
end

def go(direction)
  unless DIRECTIONS.include? direction
    return "#{direction.capitalize} isn't a direction. " 
  end
  #is it a valid exit?
  dir_sym = direction[0].to_sym
  dir_str = {n: "north", s: "south", e: "east", w: "west", u: "up", d: "down"}

  if here[:exits].include?(dir_sym)
    next_room = case dir_sym
                when :u then here[:stairs][:u]
                when :d then here[:stairs][:d]
                when :n then $state.current_room - 8
                when :e then $state.current_room + 1
                when :w then $state.current_room - 1
                when :s then $state.current_room + 8
                end
    #check to see if it's dark. if it is, complain. if not, continue

    return "It's dark in there!" if ROOMS[next_room][:dark] unless $state.lit
    $state.current_room = next_room

    "You go #{dir_str[dir_sym]}."
  else
    "You can't go #{dir_str[dir_sym]}."
  end
end

def get(item)
  #item in room and item visible
  if room_item?(item) && ITEMS[item.to_sym][:visible]
    #send item's symbol to player inventory
    $state.inventory << here[:items].delete_at(here[:items].index(item.to_sym))
    $state.score += (ITEMS[item.to_sym][:value || 0])
    "You got the #{item}."
  elsif room_prop?(item)
    "You can't take the #{item} with you."
  else
    "You don't see the #{item}."
  end
end

def drop(item)
  #item in inventory?
  if player_has?(item)    #sens symbol from inventory to room item list
    here[:items] << $state.inventory.delete_at($state.inventory.index(item.to_sym))
    "Dropped the #{item}"
  else
    "I don't have the #{item}."
  end
end

def use(item)
  #item in inventory?
  return "I don't have the #{item.to_sym}." unless player_has?(item)
  #is item usable?
  return "I can't use the #{item.to_sym}." unless ITEMS[item.to_sym][:use]
  #is target in room?
  #if not in room, return fail message
  #puts item.to_sym[:target]
  return "Not ready to use." if ITEMS[item.to_sym][:incomplete]

  if here[:props].include?(ITEMS[item.to_sym][:target]) ||
     $state.inventory.include?(ITEMS[item.to_sym][:target])
    #case for valid usable items
    case item
    when "axe" then use_axe
    when "shovel" then use_shovel
    when "key" then use_key
    when "racket" then use_racket
    when "batteries" then use_batteries
    when "vacuum" then use_vacuum
    when "candlestick" then use_candlestick
    end
    #print success message
    return ITEMS[item.to_sym][:use][:success]
  #elsif ITEMS[item.to_sym][:light]
  else
    return ITEMS[item.to_sym][:use][:fail]
  end

end

def look(item)
  #item in inventory?
  return ITEMS[item.to_sym][:look] if player_has?(item)
  #prop in current room?
  return PROPS[item.to_sym][:look] if room_prop?(item)
  #item not in hand but visible in room?
  return "I'm not holding the #{item}." if room_item?(item) && ITEMS[item.to_sym][:visible]
  "I don't see any #{item}."
end

def search(prop)
  #is prop in this room?
  #can prop be searched?
  #is prop in the room?
  return "There is no #{prop} here." unless room_prop?(prop)
  #is the prop a door or the drawer
  case prop
  when "rubble" then search_rubble
  else return "I don't know how to search the #{prop}."
  end

  PROPS[prop.to_sym][:search]
end

def open(prop)
  #is prop in the room?
  return "There is no #{prop} here." unless room_prop?(prop)
  #is the prop a door or the drawer
  case prop
  when "shed" then open_shed
  when "desk" then open_desk
  when "coat" then open_coat
  when "rubble" then search_rubble
  else return "I don't know how to open the #{prop}."
  end

  PROPS[prop.to_sym][:open]
end

def light(item)
  return "I don't know how to light the #{item}" unless ITEMS[item.to_sym][:light]

  if item == "matches" && !player_has?("candle")
    return "You light a match, it burns out. "
  elsif item == "candle" && !player_has?("matches")
    return "You don't have anything to light it with"
  end
  return "You'll burn your hand." if ITEMS[:candle][:incomplete]

  case item
  when "matches" then light_matches
  when "candle" then light_candle
  end
  return ITEMS[item.to_sym][:light]
end

def read(item)
  #is item the spellbook or the scroll?
  return "I can't read that! " unless ITEMS[item.to_sym][:read]
  if item == "spellbook" && !$state.scroll_read
    return "I don't know this strange language."
  end
  case item
  when "scroll" then read_scroll
  when "spellbook" then read_spellbook
  end
  ITEMS[item.to_sym][:read]
end

def say(message)
  if message.upcase == "FHGWGADZ" && $state.knows_spell
    return "I said 'Come on FHGWGADZ'..."
  end
  #place message in state.messages
  #if a magic word, act on it
  message.upcase
end

def ride(prop)
  unless PROPS.include?(prop.to_sym) && PROPS[prop.to_sym][:ride]
    return "I can't ride the #{prop}"
  end

  ride_boat
  PROPS[prop.to_sym][:ride]
end
