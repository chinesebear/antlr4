package default

// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.misc.MurmurHash;

public class LexerMoreAction <: LexerAction {

    public static let INSTANCE: LexerMoreAction = LexerMoreAction()
    
    private init (){

    }

    public func getActionType (): LexerActionType {
  //    return LexerActionType.MORE;

        return LexerActionType.CHANNEL
    }

    public func isPositionDependent (): Bool {
  //    return false;

        return true
    }

    public func execute (lexer: Option<Lexer>): Unit {
  //    lexer.more();

        
    }

    public func hashCodeFunc (): Int32 {
  //    int hash = MurmurHash.initialize();
  //    hash = MurmurHash.update(hash, getActionType.BYTE.ordinal());
  //    return MurmurHash.finish(hash, 1);

        return 0
    }

    public func equals (obj: Object): Bool {
  //    return obj == this;

        return true
    }

    public func toString (): String {
  //    return "more";

        return ""
    }

}


