package default

// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.misc.MurmurHash;

public class LexerModeAction <: LexerAction {

    private let mode: Int32 = 0
    
    public init (mode: Int32){

    }

    public func getMode (): Int32 {
  //    return mode;

        return 0
    }

    public func getActionType (): LexerActionType {
  //    return LexerActionType.MODE;

        return LexerActionType.CHANNEL
    }

    public func isPositionDependent (): Bool {
  //    return false;

        return true
    }

    public func execute (lexer: Option<Lexer>): Unit {
  //    lexer.mode(mode);

        
    }

    public func hashCodeFunc (): Int32 {
  //    int hash = MurmurHash.initialize();
  //    hash = MurmurHash.update(hash, getActionType.BYTE.ordinal());
  //    hash = MurmurHash.update(hash, mode);
  //    return MurmurHash.finish(hash, 2);

        return 0
    }

    public func equals (obj: Object): Bool {
  //    if (obj == this) {
  //        return true;
  //    } else if (!(obj instanceof LexerModeAction)) {
  //        return false;
  //    return mode == ((LexerModeAction)obj).mode;

        return true
    }

    public func toString (): String {
  //    return String.format("mode(%d)", mode);

        return ""
    }

    public init() {}
}


