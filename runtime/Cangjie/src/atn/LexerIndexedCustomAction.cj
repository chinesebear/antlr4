package atn

// import org.antlr.v4.runtime.CharStream;
// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.misc.MurmurHash;

public class LexerIndexedCustomAction <: LexerAction {

    private let offset: Int32 = 0
    
    private let action: LexerAction = LexerAction()
    
    public init (offset: Int32, action: LexerAction){

    }

    public func getOffset (): Int32 {
        return 0
    }

    public func getAction (): LexerAction {
        return LexerAction()
    }

    public func getActionType (): LexerActionType {
        return LexerActionType()
    }

    public func isPositionDependent (): Bool {
        return true
    }

    public func execute (lexer: Lexer): Unit {
        
    }

    public func hashCodeFunc (): Int32 {
        return 0
    }

    public func equals (obj: Object): Bool {
        return true
    }

    public init() {}
}


