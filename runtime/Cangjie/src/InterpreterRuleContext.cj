package default


open public class InterpreterRuleContext <: ParserRuleContext {

    protected var ruleIndex: Int32 = -1
    
    public init (){

    }

    public init (parent: ParserRuleContext, invokingStateNumber: Int32, ruleIndex: Int32){

    }

    public open func getRuleIndex (): Int32 {
  //    return ruleIndex;

        return 0
    }

}


