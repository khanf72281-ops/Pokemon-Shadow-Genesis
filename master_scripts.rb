# 1. 8 MOVE SLOTS LOGIC
class PokeBattle_Pokemon
  MAX_MOVES = 8
end

# 2. SHADOW BOSS REDEMPTION
# Becomes "Good" but stays "Shadow Look"
def pbPurifyShadow(pokemon)
  if pokemon.isShadow?
    pokemon.makeNotShadow
    pokemon.form = 1 # Blue Eyes / Calm Aura
    return "The Shadow has been redeemed!"
  end
end

# 3. MAX STATS FOR TEAM (999 Stats)
def pbGodMode(pokemon)
  pokemon.attack = 999
  pokemon.defense = 999
  pokemon.speed = 999
  pokemon.spatk = 999
  pokemon.spdef = 999
end
