package default

from std import collection.*

open public class NoViableAltException <: RecognitionException {

    private let deadEndConfigs: ATNConfigSet = ATNConfigSet()
    
    private let startToken: Token = Token()
    
    public init (recognizer: Parser){

    }

    public init (recognizer: Parser, input: TokenStream, startToken: Token, offendingToken: Token, deadEndConfigs: ATNConfigSet, ctx: ParserRuleContext){

    }

    public open func getStartToken (): Token {
        return Token()
    }

    public open func getDeadEndConfigs (): ATNConfigSet {
        return ATNConfigSet()
    }

    public init() {}
}


