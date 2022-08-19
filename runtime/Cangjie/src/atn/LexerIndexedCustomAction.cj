package default

// import org.antlr.v4.runtime.CharStream;
// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.misc.MurmurHash;

public class LexerIndexedCustomAction <: LexerAction {

    private let offset: Int32 = 0
    
    private let action: Option<LexerAction> = Option<LexerAction>.None
    
    public init (offset: Int32, action: Option<LexerAction>){

    }

    public func getOffset (): Int32 {
  //    return offset;

        return 0
    }

    public func getAction (): Option<LexerAction> {
  //    return action;

        return Option<LexerAction>.None
    }

    public func getActionType (): LexerActionType {
  //    return action.getActionType.BYTE;

        return LexerActionType.CHANNEL
    }

    public func isPositionDependent (): Bool {
  //    return true;

        return true
    }

    public func execute (lexer: Option<Lexer>): Unit {
  //    action.execute(lexer);

        
    }

    public func hashCodeFunc (): Int32 {
  //    int hash = MurmurHash.initialize();
  //    hash = MurmurHash.update(hash, offset);
  //    hash = MurmurHash.update(hash, action);
  //    return MurmurHash.finish(hash, 2);

        return 0
    }

    public func equals (obj: Object): Bool {
  //    if (obj == this) {
  //        return true;
  //    } else if (!(obj instanceof LexerIndexedCustomAction)) {
  //        return false;
  //    LexerIndexedCustomAction other = (LexerIndexedCustomAction)obj;
  //    return offset == other.offset && action.equals(other.action);

        return true
    }

    public init() {}
}


