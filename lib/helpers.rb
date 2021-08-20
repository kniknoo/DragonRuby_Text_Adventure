def here
  #shortcut for the current room
  ROOMS[$state.current_room]
end

def player_has?(item)
  $state.inventory.include?(item.to_sym)
end

def room_item?(item)
  here[:items].include?(item.to_sym)
end

def room_prop?(prop)
  here[:props].include?(prop.to_sym)
end

def knows_word?
  VERBS.include?($state.command[1]) ||
  ITEMS.include?($state.command[1].to_sym) ||
  PROPS.include?($state.command[1].to_sym)
end
