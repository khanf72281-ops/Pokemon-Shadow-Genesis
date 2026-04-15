# TIME TRAVEL & POKEDEX COMPLETION CHECK
def pbCheckTimeTravel(region)
  if region == :HISUI
    if $Trainer.pokedex.completed?(:HISUI) && $Trainer.has_species?(:DIALGA, :PALKIA, :GIRATINA)
      pbDisplay("The Space-Time Rift is stabilizing...")
      pbDisplay("You can now return to the Modern World!")
      $game_switches[CAN_RETURN_TO_SINNOH] = true
    else
      pbDisplay("The Pokedex is incomplete. The Gods of Time and Space refuse to help.")
    end
  elsif region == :ANCIENT_PALDEA
    # Ancient Paldea logic here
    pbDisplay("The paradox energy is thick here...")
  end
end
