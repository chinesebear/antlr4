package atn

// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.misc.MurmurHash;

public class LexerPopModeAction <: LexerAction {

    public static let INSTANCE: LexerPopModeAction = LexerPopModeAction()
    
    private init (){

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

    public func toString (): String {
        return ""
    }

}


