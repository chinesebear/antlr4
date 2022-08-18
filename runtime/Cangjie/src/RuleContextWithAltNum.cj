package default

// import org.antlr.v4.runtime.atn.ATN;

open public class RuleContextWithAltNum <: ParserRuleContext {

    public var altNum: Int32 = 0
    
    public init (){

    }

    public init (parent: ParserRuleContext, invokingStateNumber: Int32){

    }

    public open override func getAltNumber (): Int32 {
        return 0
    }

    public open override func setAltNumber (altNum: Int32): Unit {
        
    }

}


