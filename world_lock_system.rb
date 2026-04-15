# STRICT WORLD LOCK SYSTEM
def pbCheckWorldAccess(pkmn)
  # Sirf Rayto ke components (Mewtwo/Rayquaza) allowed hain
  allowed_species = [:MEWTWO, :RAYQUAZA]
  
  if $game_switches[IN_UNIVERSE_2]
    unless allowed_species.include?(pkmn.species)
      pbDisplay("ERROR: Universe 1 Pokemon detected!")
      pbDisplay("The reality of this world is rejecting #{pkmn.name}...")
      pbForceReturnToPC(pkmn) # Seedha Oak ki lab mein wapas
    end
  end
end
