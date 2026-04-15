# PARADOX & ANCIENT TECH REGISTRY
def pbLoadUniverse2Legends
  # Paradox Beasts (Past Forms of Entei, Raikou, Suicune)
  $game_variables[GUAGING_FIRE_LOC] = "Ujjain_Volcano"
  $game_variables[RAGING_BOLT_LOC] = "Tarana_Skies"
  $game_variables[WALKING_WAKE_LOC] = "Shipra_River_Deep"

  # Sol-Genesect (Ancient Tech)
  if $game_player.has_item?(:SOL_DRIVE)
    $Trainer.party.each do |pkmn|
      if pkmn.species == :GENESECT
        pkmn.form = 5 # Custom Universe 2 Form
        pbDisplay("Genesect's circuits are reacting to Sol-Energy!")
      end
    end
  end
end
