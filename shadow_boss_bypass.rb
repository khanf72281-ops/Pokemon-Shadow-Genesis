# MASTER BALL: SHADOW BOSS BYPASS
def pbThrowMasterBall(ball, target)
  # Check if it's a Shadow Boss or a Sol-Type God
  if target.is_shadow_boss? || target.is_sol_type?
    pbDisplay("The Master Ball is fighting the Shadow Aura...")
    pbWait(20)
    
    # Force capture success ignoring all catch rate math
    pbCaptureSuccess(target) 
    pbDisplay("UNBELIEVABLE! The Shadow Boss has been tampered and captured!")
  else
    # Normal Master Ball logic
    pbCaptureSuccess(target)
  end
end
