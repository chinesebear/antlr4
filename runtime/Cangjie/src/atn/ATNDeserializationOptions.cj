package default


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
  //    return defaultOptions;

        return ATNDeserializationOptions()
    }

    public open func isReadOnly (): Bool {
  //    return readOnly;

        return true
    }

    public open func makeReadOnly (): Unit {
  //    readOnly = true;

        
    }

    public open func isVerifyATN (): Bool {
  //    return verifyATN;

        return true
    }

    public open func setVerifyATN (verifyATN: Bool): Unit {
  //    throwIfReadOnly();
  //    this.verifyATN = verifyATN;

        
    }

    public open func isGenerateRuleBypassTransitions (): Bool {
  //    return generateRuleBypassTransitions;

        return true
    }

    public open func setGenerateRuleBypassTransitions (generateRuleBypassTransitions: Bool): Unit {
  //    throwIfReadOnly();
  //    this.generateRuleBypassTransitions = generateRuleBypassTransitions;

        
    }

    protected open func throwIfReadOnly (): Unit {
  //    if (isReadOnly()) {
  //        throw new IllegalStateException("The object is read only.");

        
    }

}


