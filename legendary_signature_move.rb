# Legendary Signature Moves Auto-Unlock
Events.onWildBattleEnd += proc { |_sender, e|
  pkmn = e[0]
  case pkmn.species
  when :RAYQUAZA
    pkmn.pbLearnMove(:DRAGONASCENT) if !pkmn.hasMove?(:DRAGONASCENT)
  when :MEWTWO
    pkmn.pbLearnMove(:PSYSTRIKE) if !pkmn.hasMove?(:PSYSTRIKE)
  when :ARCEUS
    pkmn.pbLearnMove(:JUDGMENT) if !pkmn.hasMove?(:JUDGMENT)
  when :DIALGA
    pkmn.pbLearnMove(:ROAROFTIME) if !pkmn.hasMove?(:ROAROFTIME)
  when :PALKIA
    pkmn.pbLearnMove(:SPACIALREND) if !pkmn.hasMove?(:SPACIALREND)
  when :GIRATINA
    pkmn.pbLearnMove(:SHADOWFORCE) if !pkmn.hasMove?(:SHADOWFORCE)
  end
}
