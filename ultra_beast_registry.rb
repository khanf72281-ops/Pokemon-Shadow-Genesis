# ULTRA BEAST DIMENSIONAL LOCK
def pbCheckUltraBeast(pkmn)
  ub_list = [
    :NIHILEGO, :BUZZWOLE, :PHEROMOSA, :XURKITREE,
    :CELESTEELA, :KARTANA, :GUZZLORD, :POIPOLE,
    :NAGANADEL, :STAKATAKA, :BLACEPHALON
  ]

  if ub_list.include?(pkmn.species)
    # Universe 2 (Sol-World) mein inka Beast Boost ulta kaam karega
    if $game_switches[IN_UNIVERSE_2]
      pkmn.ability = :GLITCH_POWER # Power kam ho jayegi
      pbDisplay("The Ultra Beast is choking in the Sol-Atmosphere!")
    end
  end
end
