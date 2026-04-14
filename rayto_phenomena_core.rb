# Rayto Phenomenon Trigger
def pbTriggerRayto
  if $Trainer.has_species?(:MEWTWO) && $Trainer.has_species?(:RAYQUAZA) && $game_switches[RAYTO_PHENO_READY]
    pbDisplay("The Multiverse Glitch is active! Rayto is manifesting!")
    # Rayto stats and Sol-Piercer ability
    pkmn = create_temporary_fusion(:RAYTO)
    pkmn.stats = [999, 999, 999, 999, 999, 999]
    pkmn.ability = :SOL_PIERCER
  end
end
