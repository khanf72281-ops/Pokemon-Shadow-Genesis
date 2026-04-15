# UNIVERSAL BOUNDARY SYSTEM
def pbUniverseTransfer
  if $game_switches[PORTAL_ACTIVE]
    # Transfer all PC and Party to Oak's Lab storage
    $Trainer.party.each do |pkmn|
      unless pkmn.species == :MEWTWO || pkmn.species == :RAYQUAZA
        pbMoveToStorage(pkmn) # Original World Pokemon stay behind
      end
    end
    pbDisplay("Your original Pokemon cannot survive the Sol-Aura of Universe 2.")
    pbDisplay("They have been safely sent back to Prof. Oak's Lab.")
    $game_temp.player_new_map_id = BHARAT_STARTING_TOWN
  end
end
