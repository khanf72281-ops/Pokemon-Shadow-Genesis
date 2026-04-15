# SHADOW ARCEUS REVELATION SYSTEM
def pbArceusWarning
  if $Trainer.has_species?(:DIALGA) && $Trainer.has_species?(:PALKIA) && $Trainer.has_species?(:GIRATINA)
    pbDisplay("The sky turns pitch black for a second...")
    pbPlayCry(:ARCEUS)
    pbDisplay("Arceus: Mortal, the Sol-Energy is corrupting the Void.")
    pbDisplay("A time will come when I shall descend as SHADOW ARCEUS.")
    pbDisplay("The balance of Universe 2 is failing...")
    
    # Ye switch Shadow Arceus ki storyline ko background mein start kar dega
    $game_switches[SHADOW_ARCEUS_AWAKENING] = true 
  end
end
