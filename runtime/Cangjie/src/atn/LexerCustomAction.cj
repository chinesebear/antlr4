package default

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
  //    return ruleIndex;

        return 0
    }

    public func getActionIndex (): Int32 {
  //    return actionIndex;

        return 0
    }

    public func getActionType (): LexerActionType {
  //    return LexerActionType.CUSTOM;

        return LexerActionType.CHANNEL
    }

    public func isPositionDependent (): Bool {
  //    return true;

        return true
    }

    public func execute (lexer: Option<Lexer>): Unit {
  //    lexer.action(null, ruleIndex, actionIndex);

        
    }

    public func hashCodeFunc (): Int32 {
  //    int hash = MurmurHash.initialize();
  //    hash = MurmurHash.update(hash, getActionType.BYTE.ordinal());
  //    hash = MurmurHash.update(hash, ruleIndex);
  //    hash = MurmurHash.update(hash, actionIndex);
  //    return MurmurHash.finish(hash, 3);

        return 0
    }

    public func equals (obj: Object): Bool {
  //    if (obj == this) {
  //        return true;
  //    } else if (!(obj instanceof LexerCustomAction)) {
  //        return false;
  //    LexerCustomAction other = (LexerCustomAction)obj;
  //    return ruleIndex == other.ruleIndex && actionIndex == other.actionIndex;

        return true
    }

    public init() {}
}


