
ROOMS = [
  {
    location: "Dark Corner", #0
    description: " ",
    exits: [:e, :s],
    items:[],
    props: []
  },
  {
    location: "Overgrown Garden", #1
    description: " ",
    exits: [:e, :w],
    items:[],
    props: []
  },
  {
    location: "By Woodpile", #2
    description: " ",
    exits: [:e, :w],
    items:[:axe],
    props: []
  },
  {
    location: "Yard", #3
    description: " ",
    exits: [:e, :w, :s],
    items:[],
    props: []
  },
  {
    location: "Weedpatch", #4
    description: "You're surrounded by overgrown grass and weeds. ",
    exits: [:e, :w],
    items:[:shovel],
    props: [:shed]
  },
  {
    location: "Forest", #5
    description: " ",
    exits: [:e, :w],
    items:[],
    props: []
  },
  {
    location: "Thick Forest", #6
    description: " ",
    exits: [:e, :w, :s],
    items:[],
    props: []
  },
  {
    #this room needs to handle the rope and tree climbing mechanic
    location: "Blasted Tree", #7
    description: " ",
    exits: [:w, :s],
    items:[],
    props: [:rope]
  },
  {
    location: "Corner of House", #8
    description: " ",
    exits: [:n, :s],
    items:[],
    props: []
  },
  {
    location: "Kitchen Entrance", #9
    description: " ",
    exits: [:e, :s],
    items:[],
    props: []
  },
  {
    location: "Kitchen", #10
    description: "It looks like it hasn't been used in years. ",
    exits: [:e, :w],
    items:[:matches],
    props: []
  },
  {
    location: "Scullery Door", #11
    description: " ",
    exits: [:n, :w],
    items:[],
    props: []
  },
  {
    location: "Dusty Room", #12
    description: " ",
    exits: [:e, :s],
    items:[],
    props: []
  },
  {
    #here you will need to defeat the bats to read the scroll
    location: "Rear Turret Room", #13
    description: "A tall tower, you can't see the ceiling. ",
    exits: [:w],
    items:[:scroll],
    props: [:bats]
  },
  {
    location: "Clearing", #14
    description: " ",
    exits: [:n, :e],
    items:[],
    props: []
  },
  {
    location: "Path", #15
    description: " ",
    exits: [:n, :w, :s],
    items:[],
    props: []
  },
  {
    location: "Side of House", #16
    description: " ",
    exits: [:n, :s],
    items:[],
    props: []
  },
  {
    location: "Back of Hallway", #17
    description: " ",
    exits: [:n, :s],
    items:[],
    props: []
  },
  {
    #dark room
    location: "Dark Alcove", #18
    description: "Even with the candle, this place is dark. ",
    exits: [:e, :s],
    dark: true,
    items:[:coins],
    props: []
  },
  {
    #this room is dark
    location: "Small Dark Room", #19
    description: " ",
    dark: true,
    exits: [:e, :w],
    items:[],
    props: []
  },
  {
    #this room has a staircase, Up is north and down is west
    location: "Spiral Staircase", #20
    description: " ",
    exits: [:u, :d],
    items:[],
    props: [],
    stairs: {u: 12, d: 19}
  },
  {
    location: "Wide Passage", #21
    description: " ",
    exits: [:e, :s],
    items:[],
    props: []
  },
  {
    #this room has a staircase. Up is west and down is south
    location: "Slippery Steps", #22
    description: " ",
    exits: [:u, :d],
    items:[],
    props: [],
    stairs: {u: 21, d: 29}
  },
  {
    location: "Clifftop", #23
    description: " ",
    exits: [:n, :s],
    items:[],
    props: []
  },
  {
    location: "Crumbling Wall", #24
    description: " ",
    exits: [:n],
    items:[],
    props: []
  },
  {
    location: "Gloomy Passage", #25
    description: "A dark and depressing corridor. ",
    exits: [:n, :s],
    items:[:vacuum],
    props: []
  },
  {
    location: "Tinkering Lab", #26
    description: "This room is full of electronic gadgets. ",
    exits: [:n, :e, :s],
    items:[:batteries],
    props: []
  },
  {
    #this room is dark
    location: "Vaulted Hall", #27
    description: " ",
    exits: [:e, :w],
    dark: true,
    items:[],
    props: []
  },
  {
    #this room is dark
    location: "Hall with Locked Door", #28
    description: " ",
    exits: [:e, :w],
    dark: true,
    items:[:statue],
    props: [:locked_door]
  },
  {
    #this room is dark
    location: "Trophy Room", #29
    description: " ",
    exits: [:n, :w, :s],
    dark: true,
    items:[],
    props: []
  },
  {
    #a new path opens if the barred windows are dug out
    location: "Cellar", #30
    description: " ",
    exits: [:n, :s],
    items:[],
    props: [:barred_window]
  },
  {
    location: "Cliff Path", #31
    description: " ",
    exits: [:n, :s],
    items:[],
    props: [:barred_window]
  },
  {
    #the jey is in a jacket
    location: "Closet", #32
    description: "A closet full of old coats. ",
    exits: [:s],
    items:[:key],
    props: [:coat]
  },
  {
    location: "Front Hall", #33
    description: " ",
    exits: [:n, :e, :s],
    items:[],
    props: []
  },
  {
    location: "Sitting Room", #34
    description: " ",
    exits: [:n, :w, :s],
    items:[],
    props: []
  },
  {
    location: "Secret Room", #35
    description: " ",
    exits: [:s],
    items:[:spellbook],
    props: []
  },
  {
    #stairs. North is down
    location: "Steep Marble stairs", #36
    description: " ",
    exits: [:d, :s],
    items:[],
    props: [],
    stairs: {d: 28}
  },
  {
    location: "Dining Room", #37
    description: " ",
    exits: [:n],
    items:[],
    props: []
  },
  {
    #the ring is hidden in the coffin
    location: "Deep Cellar", #38
    description: " ",
    exits: [:n],
    items:[:ring],
    props: [:coffin]
  },
  {
    location: "Cliff Path", #39
    description: " ",
    exits: [:n, :s],
    items:[],
    props: []
  },
  {
    location: "Closet", #40
    description: " ",
    exits: [:n, :e],
    items:[],
    props: []
  },
  {
    location: "Front Lobby", #41
    description: " ",
    exits: [:n, :w],
    items:[],
    props: [:front_door]
  },
  {
    location: "Library", #42
    description: " ",
    exits: [:n, :e],
    items:[:candlestick],
    props: []
  },
  {
    #candle is in the drawer. There is a false wall to the north
    location: "Study", #43
    description: "There are a few bookshelves. ",
    exits: [:w],
    items:[:candle],
    props: [:desk, :wall]
  },
  {
    location: "Cobweb Room", #44
    description: " ",
    exits: [:n, :e, :s],
    items:[],
     props: []
   },
  {
    location: "Cold Chamber", #45
    description: " ",
    exits: [:e, :w],
    items:[],
    props: []
  },
  {
    location: "Sppoky Room", #46
    description: " ",
    exits: [:w],
    items:[],
    props: [:painting]
  },
  {
    #boat must br present to go south
    location: "Cliff Path by Marsh", #47
    description: " ",
    exits: [:n],
    items:[],
    props: [:boat]
  },
  {
    location: "Veranda", #48
    description: " ",
    exits: [:e, :s],
    items:[],
    props: [:rubble]
  },
  {
    location: "Front Porch", #49
    description: " ",
    exits: [:n, :w, :s],
    items:[],
    props: []
  },
  {
    location: "Front Tower", #50
    description: " ",
    exits: [:e],
    items:[:goblet],
    props: []
  },
  {
    location: "Sloping Corridor", #51
    description: " ",
    exits: [:e, :w],
    items:[],
    props: []
  },
  {
    #ghosts must be defeated to go west
    location: "Upper Gallery", #52
    description: "Paintings line the wall. ",
    exits: [:n, :w],
    items:[],
    props: [:ghosts]
  },
  {
    location: "Marsh by Wall", #53
    description: " ",
    exits: [:s],
    items:[],
    props: []
  },
  {
    location: "Marsh", #54
    description: " ",
    exits: [:w, :s],
    items:[],
    props: []
  },
  {
    #boat must be present to travel north
    location: "Soggy Path", #55
    description: " ",
    exits: [:n, :w],
    items:[],
    props: []
  },
  {
    location: "Twisted Railings", #56
    description: " ",
    exits: [:n, :e],
    items:[],
    props: []
  },
  {
    location: "Path", #57
    description: " ",
    exits: [:n, :e, :w],
    items:[],
    props: []
  },
  {
    location: "Path by Railings", #58
    description: " ",
    exits: [:e, :w],
    items:[],
    props: []
  },
  {
    location: "Beneath Tower", #59
    description: " ",
    exits: [:e, :w],
    items:[],
    props: []
  },
  {
    location: "Debris", #60
    description: "A part of the outer wall has recently collapsed. ",
    exits: [:e, :w],
    items:[:racket],
    props: [:rubble]
  },
  {
    location: "Fallen Brickwork", #61
    description: " ",
    exits: [:n, :e, :w],
    items:[],
    props: []
  },
  {
    location: "Stone Arch", #62
    description: " ",
    exits: [:n, :e, :w],
    items:[],
    props: []
  },
  {
    location: "Crumbling Clifftop", #63
    description: " ",
    exits: [:w],
    items:[],
    props: []
  }
]
