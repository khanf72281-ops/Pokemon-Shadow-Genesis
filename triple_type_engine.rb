# RAYTO SPECIAL: TRIPLE TYPE ENGINE
class Pokemon
  def type1; :DRAGON; end
  def type2; :PSYCHIC; end
  def type3; :SOL; end # The Glitch Type

  # Damage Calculation override for Rayto
  def pbCalcDamageMultiplier(attacker, opponent)
    mult = super
    if attacker.species == :RAYTO && opponent.is_god?
      # Rayto's Sol-type cancels out God's immunity
      mult *= 1.5 
    end
    return mult
  end
end
