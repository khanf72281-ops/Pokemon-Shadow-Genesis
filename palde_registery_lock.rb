# PALDEA LEGENDARY REGISTRY (UNIVERSE 1 ONLY)
def pbLoadPaldeaLegends
  paldea_list = [
    :WO_CHIEN, :CHIEN_PAO, :TING_LU, :CHI_YU,
    :KORAIDON, :MIRAIDON, :TERAPAGOS, :OGERPON
  ]

  paldea_list.each do |pkmn|
    # Agar ye Pokemon Universe 2 mein paya gaya, toh delete/lock ho jaye
    if $game_switches[IN_UNIVERSE_2] && $Trainer.has_species?(pkmn)
      pbDisplay("The Paldean curse cannot manifest in the Bharat Region!")
      pbSendToPC(pkmn)
    end
  end
end
