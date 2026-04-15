# RAYTO 5X POWER SURGE SYSTEM
class PokeBattle_Battle
  def pbEternalSurge(pkmn)
    if pkmn.species == :RAYTO && pkmn.lastMoveUsed == :ETERNAL_STRIKE
      # Normal boost limit ko bypass karke direct multiplier lagana
      pkmn.attack_mult = 5.0
      pkmn.spatk_mult = 5.0
      pkmn.speed_mult = 5.0
      
      pbDisplay("RAYTO HAS EXCEEDED THE LIMITS OF REALITY!")
      pbDisplay("Its power has increased 5x!")
      
      # Visual Glitch Effect on Screen
      pbFlashScreen(Color.new(255,215,0,128), 20) 
    end
  end
end
