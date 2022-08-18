package default

// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.misc.MurmurHash;

public class LexerChannelAction <: LexerAction {

    private let channel: Int32 = 0
    
    public init (channel: Int32){

    }

    public func getChannel (): Int32 {
  //    return channel;

        return 0
    }

    public func getActionType (): LexerActionType {
  //    return LexerActionType.CHANNEL;

        return LexerActionType.CHANNEL
    }

    public func isPositionDependent (): Bool {
  //    return false;

        return true
    }

    public func execute (lexer: Option<Lexer>): Unit {
  //    lexer.setChannel(channel);

        
    }

    public func hashCodeFunc (): Int32 {
  //    int hash = MurmurHash.initialize();
  //    hash = MurmurHash.update(hash, getActionType.BYTE.ordinal());
  //    hash = MurmurHash.update(hash, channel);
  //    return MurmurHash.finish(hash, 2);

        return 0
    }

    public func equals (obj: Object): Bool {
  //    if (obj == this) {
  //        return true;
  //    } else if (!(obj instanceof LexerChannelAction)) {
  //        return false;
  //    return channel == ((LexerChannelAction)obj).channel;

        return true
    }

    public func toString (): String {
  //    return String.format("channel(%d)", channel);

        return ""
    }

    public init() {}
}


