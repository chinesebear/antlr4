package atn

// import org.antlr.v4.runtime.CharStream;
// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.Recognizer;
// import org.antlr.v4.runtime.misc.MurmurHash;

public class LexerCustomAction <: LexerAction {

    private let ruleIndex: Int32 = 0
    
    private let actionIndex: Int32 = 0
    
    public init (ruleIndex: Int32, actionIndex: Int32){

    }

    public func getRuleIndex (): Int32 {
        return 0
    }

    public func getActionIndex (): Int32 {
        return 0
    }

    public func getActionType (): LexerActionType {
        return LexerActionType()
    }

    public func isPositionDependent (): Bool {
        return true
    }

    public func execute (lexer: Lexer): Unit {
        
    }

    public func hashCode (): Int32 {
        return 0
    }

    public func equals (obj: Object): Bool {
        return true
    }

    public init() {}
}


