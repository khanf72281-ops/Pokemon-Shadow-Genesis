# Mega Rayquaza & Phenomena Logic
def pbCheckPhenomena(pkmn)
  # Mega Rayquaza Trigger
  if pkmn.species == :RAYQUAZA && pkmn.hasMove?(:DRAGONASCENT)
    pbDisplay("Rayquaza's prayers reach the heavens!")
    pkmn.makeMega
  end

  # Phenomenon Fusion Trigger (Post-Oak Battle)
  if $game_switches[OAK_DEFEATED]
    if pkmn.species == :MEWTWO && $Trainer.has_species?(:RAYQUAZA)
      pbDisplay("A Multiverse Glitch is occurring... RAYTO Manifests!")
      trigger_rayto_transformation(pkmn)
    end
  end
end
