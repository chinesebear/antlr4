package default

from std import collection.*

open public class NoViableAltException <: RecognitionException {

    private let deadEndConfigs: ATNConfigSet = ATNConfigSet()
    
    private let startToken: Option<Token> = Option<Token>.None
    
    public init (recognizer: Option<Parser>){

    }

    public init (recognizer: Option<Parser>, input: Option<TokenStream>, startToken: Option<Token>, offendingToken: Option<Token>, deadEndConfigs: ATNConfigSet, ctx: ParserRuleContext){

    }

    public open func getStartToken (): Option<Token> {
  //    return startToken;

        return Option<Token>.None
    }

    public open func getDeadEndConfigs (): ATNConfigSet {
  //    return deadEndConfigs;

        return ATNConfigSet()
    }

    public init() {}
}


