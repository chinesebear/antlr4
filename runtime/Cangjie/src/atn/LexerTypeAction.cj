package atn

// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.misc.MurmurHash;

open public class LexerTypeAction <: LexerAction {

    private let `type`: Int32 = 0
    
    public init (`type`: Int32){

    }

    public open func getType (): Int32 {
        return 0
    }

    public open func getActionType (): LexerActionType {
        return LexerActionType()
    }

    public open func isPositionDependent (): Bool {
        return true
    }

    public open func execute (lexer: Lexer): Unit {
        
    }

    public open func hashCodeFunc (): Int32 {
        return 0
    }

    public open func equals (obj: Object): Bool {
        return true
    }

    public open func toString (): String {
        return ""
    }

    public init() {}
}


