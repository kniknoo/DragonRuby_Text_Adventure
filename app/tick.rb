def tick(args)
  if args.state.tick_count.zero?
    $console.clear
    $state.current_room = 56
    $state.inventory = []
    $state.message = "Welcome to the Haunted House"
    $state.score = 0
    $state.lit = false
    $state.knows_spell = false
    $state.scroll_read = false
    generate
    display
  end
  return if $console.last_command == nil

  $console.clear
  get_input
  #check to see if input is valid. returns a message or false
  #if valid, try to process command
  $state.message = test_input
  #room triggers, special actions
  generate
  display
end

def get_input
  $state.command = $console.last_command.downcase.split(" ")
  $console.last_command = nil
end

def room_triggers
  #is a room dark
end

def test_input
  return "I'm not here to read a novel." if $state.command.size > 2
  return "I can't #{$state.command[0]}." unless VERBS.include?($state.command[0])
  return one_word_command if $state.command.size == 1

  if $state.command.size == 2
    return "I don't know what #{$state.command[1]} is." unless knows_word? || $state.command[0] == "say"

    two_word_command
  end
end

def generate
  $state.location = here[:location]
  $state.description = here[:description]
  $state.exits = here[:exits].each {|e| e.to_s}.join("  ")
  $state.holding = $state.inventory.each {|e| e.to_s}.join(" ")
  here[:props].each do |pr|
    $state.description += PROPS[pr][:description] if PROPS[pr][:visible]
  end
  here[:items].each do |k|
    $state.description += ITEMS[k][:description] if ITEMS[k][:visible]
  end
end

def display
  #puts $state.lit
  puts $state.message
  puts "Location:    #{$state.location}"
  puts "Description: #{$state.description}"
  puts "Exits:       #{$state.exits.upcase}"
  puts "Inventory:   #{$state.holding}"
  puts "Score:       #{$state.score}"
end
