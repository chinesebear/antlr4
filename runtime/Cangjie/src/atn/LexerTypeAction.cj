package default

// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.misc.MurmurHash;

open public class LexerTypeAction <: LexerAction {

    private let `type`: Int32 = 0
    
    public init (`type`: Int32){

    }

    public open func getType (): Int32 {
  //    return type;

        return 0
    }

    public open func getActionType (): LexerActionType {
  //    return LexerActionType.TYPE;

        return LexerActionType.CHANNEL
    }

    public open func isPositionDependent (): Bool {
  //    return false;

        return true
    }

    public open func execute (lexer: Option<Lexer>): Unit {
  //    lexer.setType(type);

        
    }

    public open func hashCodeFunc (): Int32 {
  //    int hash = MurmurHash.initialize();
  //    hash = MurmurHash.update(hash, getActionType.BYTE.ordinal());
  //    hash = MurmurHash.update(hash, type);
  //    return MurmurHash.finish(hash, 2);

        return 0
    }

    public open func equals (obj: Object): Bool {
  //    if (obj == this) {
  //        return true;
  //    } else if (!(obj instanceof LexerTypeAction)) {
  //        return false;
  //    return type == ((LexerTypeAction)obj).type;

        return true
    }

    public open func toString (): String {
  //    return String.format("type(%d)", type);

        return ""
    }

    public init() {}
}


