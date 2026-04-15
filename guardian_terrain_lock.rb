# TAPU GUARDIAN REGISTRY (TERRAIN PROTECTION)
def pbCheckGuardianStatus(pkmn)
  tapu_list = [:TAPUKOKO, :TAPULELE, :TAPUBULU, :TAPUFINI]
  
  if tapu_list.include?(pkmn.species)
    if $game_switches[IN_UNIVERSE_2]
      pbDisplay("The Tapu Guardian's Z-Power is unstable in this world!")
      pbDisplay("#{pkmn.name} cannot summon its Terrain here.")
      # In Universe 2, their surge abilities will fail
      pkmn.ability = :NONE 
    end
  end
end
