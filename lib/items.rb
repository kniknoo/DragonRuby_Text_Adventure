
ITEMS = {
  axe: {
    visible: true,
    #usable: true,
    description: "You see a very sharp axe.",
    target: :wall,
    look: "A sharp Axe.",
    use: {
      fail: "You swing the axe about. Nothing Happens.",
      success: "You chop at the wooden wall. You discover another room! "
    }
    #use_fail: "You swing the axe about. Nothing Happens.",
    #use_success: "You chop at the wooden wall. You discover another room! "
  },
  shovel: {
    visible: false,
    #usable: true,
    description: "There is a shovel inside.",
    target: :barred_window,
    look: "A sturdy shovel. ",
    use: {
      fail: "You dig about, but find nothing of value. ",
      success: "You dig around the iron bars, they give away. "
    }
    #use_fail: "You dig about, but find nothing of value. ",
    #use_success: "You dig around the iron bars, they give away. "
  },
  matches: {
    visible: true,
    #usable: true,
    description: "You see the matches. ",
    target: :dark,
    look: "A box of strike anywhere matches. ",
    use: {
      fail: "You light a match and let it burn to your finger. You put it out. ",
      success: "You light the candle, you can see the room! "
    },
    light: "You light the matches. "
    #use_fail: "You light a match and let it burn to your finger. You put it out. ",
    #use_success: "You light the candle, you can see the room! "
  },
  scroll: {
    visible: true,
    description: "You see a scroll. ",
    usable: false,
    look: "An old papyrus scroll bound with a ribbon. ",
    read: "You read the scroll. You suddenly learn a strange language. "
  },
  coins: {
    visible: true,
    description: "You see a bag of coins. ",
    usable: false,
    look: "Rare and valuable coins. ",
    value: 100
  },
  vacuum: {
    target: :ghosts,
    description: "You see a small, portable vacuum. ",
    visible: true,
    #usable: true,
    look: "A battery powered vacuum. ",
    incomplete: true,
    use: {
      fail: "It looks a little cleaner in here. ",
      success: "You suck up the ghosts. "
    }
    #use_fail: " ",
    #use_success: " "
  },
  batteries: {
    visible: true,
    description: "A pack of batteries are here.",
    target: :vacuum,
    look: "Size D Batteries. ",
    use: {
      fail: "They don't seem to do much. ",
      success: "You put the batteries into the vacuum. "
    }
  },
  statue: {
    visible: true,
    description: "You see a statue.",
    usable: false,
    look: "A beautiful and ancient statue of unknown origin. ",
    value: 150
  },
  key: {
    target: :locked_door,
    visible: false,
    description: "You see a key. ",
    #usable: true,
    look: "An elaborate key with a skull pattern engraved. ",
    use: {
      fail: "The key does not fit anything here. ",
      success: "You unlock the door. You see steps beyond. "
    }
    #use_fail: " ",
    #use_success: " "
  },
  spellbook: {
    visible: true,
    description: "You see a book. ",
    usable: false,
    look: "A book written in a strange tongue. ",
    read: "FHGWGADZ will raise him. "
  },
  ring: {
    visible: true,
    description: "You see a ring. ",
    #usable: false,
    look: "A beautiful silver ring with a Ruby inlaid. ",
    value: 500
  },
  candlestick: {
    visible: true,
    description: "You see a candlestick. ",
    #usable: false,
    target: :candle,
    look: "An ornate golden Candlestick. This will fetch a good price. ",
    use: {
      fail: "You don't have a candle. ",
      success: "You place the candle into the candlestick."
    },
    value: 1500
  },
  candle: {
    visible: false,
    description: "You see a candle. ",
    #usable: false,
    incomplete: true,
    look: "A red wax candle of fine craftsmanship. ",
    light: "You light the candle. "
  },
  goblet: {
    visible: true,
    description: "You see a goblet. ",
    usable: false,
    look: "A golden goblet with a number of jewels inlaid.  ",
    value: 750
  },
  racket: {
    target: :bats,
    description: "You see a Tennis Racket",
    visible: false,
    #usable: true,
    look: "It looks old, but it still has strings. ",
    use: {
      fail: "Tennis Anyone? ",
      success: "You swat at the bats. They fly away. A scroll appears."
    }
    #use_fail: " ",
    #use_success: " "
  }
}
PROPS = {
  shed: {
    description: "A small garden shed stands in the middle. ",
    look: "A tiny shed, only big enough to hold a few tools. ",
    open: "You see a shovel inside. ",
    visible: true
  },
  rope: {
    description: "A rope hangs from the tree. ",
    look: "It's badly frayed. ",
    visible: true
  },
  bats: {
    description: "A swarm of bats are attacking you.  ",
    look: "You can't see much but a dark swarm all around you. ",
    visible: true
  },
  barred_window: {
    description: "A rusty barred window set in a wall of crumbling dirt. ",
    look: "The moonlight pours through the bars, illuminating the room within. ",
    visible: true
  },
  coffin: {
    description: "There is a coffin here. ",
    look: "The coffin is caked with dust... except for the handles. ",
    visible: true
  },
  coat: {
    description: "One in particular catches your eye. ",
    look: "An elegant, old-fashioned overcoat. ",
    open: "You open the pockets, revealing a key. ",
    visible: true
  },
  locked_door: {
    description: "An iron door with a lock sits to the south. ",
    look: "This door is firmly locked. ",
    visible: true
  },
  front_door: {
    description: "The front door beckons. ",
    look: "The glass is broken and the doorknob is rusty. ",
    visible: true
  },
  desk: {
    description: "A wooden desk sits in the corner. ",
    look: "There is nothing on top of it, but there may be something in the drawers. ",
    visible: true,
    open: "You open a drawer to reveal a stack of candles. "
  },
  wall: {
    description: "There is a draft coming from the wall. ",
    look: "There is something behind the thin, wooden wall. ",
    visible: true
  },
  boat: {
    description: "There is a boat here. ",
    look: "It's not in the best shape, but it floats. ",
    ride: "You take the boat across the marsh. ",
    visible: true
  },
  rubble: {
    description: "There is a pile of rubble that has fallen from the house. ",
    look: "You see something sticking out of it. ",
    visible: true
  },
  ghosts: {
    description: "Three ghosts circle the room, taking turns lunging at you. ",
    look: "These apparitions don't appreciate you being in their house. ",
    visible: true
  },
  painting: {
    description: "You see a painting on the wall. ",
    look: "It looks like Hieronymus Bosch, but you've never seen this one. ",
    visible: true
  }
}
