# Map Transition to Universe 2
def pbEnterUniverse2
  if $game_player.map_id == SKY_PILLAR_TOP && $Trainer.has_species?(:RAYQUAZA)
    pbFadeOutIn {
      $game_temp.player_new_map_id = TARANA_OBSERVATORY_ID
      pbDisplay("Entering the 'Different World'... Universe 2: Bharat Region")
    }
  end
end
