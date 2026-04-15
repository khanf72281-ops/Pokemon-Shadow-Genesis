# ETERNAL STRIKE - RAYTO'S SIGNATURE MOVE
class PokeBattle_Move_EternalStrike < PokeBattle_Move
  def pbBaseDamage(baseDmg, attacker, opponent)
    # Agar target koi God hai, toh damage 2x ho jayega
    if opponent.is_god?
      return 250 
    end
    return 180
  end

  def pbEffectAfterHit(attacker, opponent, turn_count)
    # Opponent ki ability ko permanently disable kar deta hai (Glitch Effect)
    opponent.ability = nil
    pbDisplay("#{opponent.name}'s reality was shattered by Eternal Strike!")
  end
end
