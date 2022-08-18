package default

from std import collection.*
// import org.antlr.v4.runtime.misc.Interval;
// import org.antlr.v4.runtime.misc.Utils;
// import java.util.Locale;

open public class LexerNoViableAltException <: RecognitionException {

    private let startIndex: Int32 = 0
    
    private let deadEndConfigs: ATNConfigSet = ATNConfigSet()
    
    public init (lexer: Lexer, input: CharStream, startIndex: Int32, deadEndConfigs: ATNConfigSet){

    }

    public open func getStartIndex (): Int32 {
        return 0
    }

    public open func getDeadEndConfigs (): ATNConfigSet {
        return ATNConfigSet()
    }

    public open override func getInputStream (): CharStream {
        return CharStream()
    }

    public open override func toString (): String {
        return ""
    }

    public init() {}
}


