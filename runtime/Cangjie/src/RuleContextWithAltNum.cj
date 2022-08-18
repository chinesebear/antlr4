package default

// import org.antlr.v4.runtime.atn.ATN;

open public class RuleContextWithAltNum <: ParserRuleContext {

    public var altNum: Int32 = 0
    
    public init (){

    }

    public init (parent: ParserRuleContext, invokingStateNumber: Int32){

    }

    public open func getAltNumber (): Int32 {
  //    return altNum;

        return 0
    }

    public open func setAltNumber (altNum: Int32): Unit {
  //    this.altNum = altNum;

        
    }

}


