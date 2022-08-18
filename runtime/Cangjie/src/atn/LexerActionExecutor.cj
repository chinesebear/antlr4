package atn

// import org.antlr.v4.runtime.CharStream;
// import org.antlr.v4.runtime.IntStream;
// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.dfa.DFA;
// import org.antlr.v4.runtime.misc.MurmurHash;
from std import collection.*

open public class LexerActionExecutor {

    private let lexerActions: Array<LexerAction> = Array<LexerAction>()
    
    private let hashCode: Int32 = 0
    
    public init (lexerActions: Array<LexerAction>){

    }

    public static func append (lexerActionExecutor: LexerActionExecutor, lexerAction: LexerAction): LexerActionExecutor {
        return LexerActionExecutor()
    }

    public open func fixOffsetBeforeMatch (offset: Int32): LexerActionExecutor {
        return LexerActionExecutor()
    }

    public open func getLexerActions (): Array<LexerAction> {
        return Array<LexerAction>()
    }

    public open func execute (lexer: Lexer, input: CharStream, startIndex: Int32): Unit {
        
    }

    public open func hashCodeFunc (): Int32 {
        return 0
    }

    public open func equals (obj: Object): Bool {
        return true
    }

    public init() {}
}


