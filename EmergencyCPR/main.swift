protocol AdvanceLifeSupport {
    func performCpr()
}

class EmergencyCallHandler{
    var delegate : AdvanceLifeSupport?
    
    func emergencyCall(){
        delegate?.performCpr()
    }
    
    func accessSituation(){
        print("Tell me your situation!")
        print("This is an emergency, perform cpr")
    }
}

/*
 Emergency Call handler
 handles the emergency calls
 It routes the emergency call
 to the person who adopts Advance
 life support protocol
 */

struct Paramedics : AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    func performCpr() {
        print("Paramedics performing cpr!!")
        
    }
}

let emilio = EmergencyCallHandler()
emilio.accessSituation()
let pete = Paramedics(handler: emilio)
emilio.emergencyCall()
