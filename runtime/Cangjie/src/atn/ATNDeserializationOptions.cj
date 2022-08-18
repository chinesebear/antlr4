package atn


open public class ATNDeserializationOptions {

    private static let defaultOptions: ATNDeserializationOptions = ATNDeserializationOptions()
    
    private var readOnly: Bool = true
    
    private var verifyATN: Bool = true
    
    private var generateRuleBypassTransitions: Bool = true
    
    public init (){

    }

    public init (options: ATNDeserializationOptions){

    }

    public static func getDefaultOptions (): ATNDeserializationOptions {
        return ATNDeserializationOptions()
    }

    public open func isReadOnly (): Bool {
        return true
    }

    public open func makeReadOnly (): Unit {
        
    }

    public open func isVerifyATN (): Bool {
        return true
    }

    public open func setVerifyATN (verifyATN: Bool): Unit {
        
    }

    public open func isGenerateRuleBypassTransitions (): Bool {
        return true
    }

    public open func setGenerateRuleBypassTransitions (generateRuleBypassTransitions: Bool): Unit {
        
    }

    protected open func throwIfReadOnly (): Unit {
        
    }

}


