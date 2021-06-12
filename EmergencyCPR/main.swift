protocol AdvanceLifeSupport {
    func performCpr()
}

class EmergencyCallHandler{
    var delegate : AdvanceLifeSupport?
    
    func emergencyCall(){
        delegate?.performCpr()
    }
}

/*
 Emergency Call handler
 handles the emergency calls
 It routes the emergency call
 to the person who adopts Advance
 life support protocol
 */
