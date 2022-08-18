package atn

// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.misc.MurmurHash;

public class LexerChannelAction <: LexerAction {

    private let channel: Int32 = 0
    
    public init (channel: Int32){

    }

    public func getChannel (): Int32 {
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

    public func hashCodeFunc (): Int32 {
        return 0
    }

    public func equals (obj: Object): Bool {
        return true
    }

    public func toString (): String {
        return ""
    }

    public init() {}
}


