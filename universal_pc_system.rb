# UNIVERSAL MULTIVERSE STORAGE SYSTEM
class PokemonStorage
  attr_accessor :current_universe
  
  def pbUpdatePCInterface
    # Agar player Universe 2 mein hai, toh Universe 1 ke Pokemon "Locked" dikhenge
    if $game_switches[IN_UNIVERSE_2]
      @current_universe = 2
      pbDisplay("Universal PC: Accessing Bharat Region Data...")
    else
      @current_universe = 1
      pbDisplay("Universal PC: Accessing Original World Data...")
    end
  end

  # Logic for Withdraw (Party mein lene ka rule)
  def pbCanWithdraw?(pokemon)
    if @current_universe == 2
      # Sirf Rayto ke components ya Universe 2 ke native Pokemon allowed hain
      if pokemon.species == :MEWTWO || pokemon.species == :RAYQUAZA || pokemon.is_sol_type?
        return true
      else
        pbDisplay("ERROR: This Pokemon cannot survive in Universe 2's atmosphere!")
        return false
      end
    end
    return true # Universe 1 mein sab allowed hai
  end
end
