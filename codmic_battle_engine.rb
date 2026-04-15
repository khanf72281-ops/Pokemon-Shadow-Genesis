# SPACE BATTLE ENGINE: SHADOW ARCEUS EVENT
def pbStartSpaceBattle
  if $game_switches[FINAL_BOSS_ACTIVATED]
    # Change Battle Background to Deep Space
    $game_temp.battle_back = "Space_Void"
    pbPlayBGM("Celestial_Chaos_Theme") # Ek heavy, fast music
    
    pbDisplay("Rayto has breached the atmosphere!")
    pbDisplay("Shadow Arceus is waiting in the center of the Multiverse...")
    
    # Special Shadow Aura effect
    pbApplyWeather(:SHADOW_STORM) 
  end
end
