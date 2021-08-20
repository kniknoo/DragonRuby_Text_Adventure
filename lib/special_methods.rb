def use_axe
  #wall becomes invisible
  PROPS[:wall][:visible] = false
  #path opens to the north
  here[:exits] = [:n, :w]
end

def use_shovel
  #bars become invisible.
  PROPS[:barred_window][:visible] = false
  #exits open on 30 and 31
  ROOMS[30][:exits] = [:n, :e, :s]
  ROOMS[31][:exits] = [:n, :w, :s]
end

def use_racket
  PROPS[:bats][:visible] = false
  ITEMS[:scroll][:visible] = true
end

def use_key
  PROPS[:locked_door][:visible] = false
  ROOMS[28][:exits] = [:e, :w, :s]
end

def use_batteries
  ITEMS[:vacuum][:incomplete] = false
  $state.inventory.delete_at($state.inventory.index(:batteries))
end

def use_candlestick
  ITEMS[:candle][:incomplete] = false
end

def use_vacuum
  PROPS[:ghosts][:visible] = false
end

def open_shed
  ITEMS[:shovel][:visible] = true
end

def open_desk
  ITEMS[:candle][:visible] = true
end

def open_coat
  ITEMS[:key][:visible] = true
end

def search_rubble
  ITEMS[:racket][:visible] = true
end

def light_matches
  $state.lit = true
end

def light_candle
  $state.lit = true
end

def read_spellbook
  $state.knows_spell = true
end

def read_scroll
  $state.scroll_read = true
end

def ride_boat
  if $state.current_room == 47
    ROOMS[54][:props] << here[:props].delete(:boat)
    $state.current_room = 54
  elsif $state.current_room == 54
    ROOMS[47][:props] << here[:props].delete(:boat)
    $state.current_room = 47
  end
end
