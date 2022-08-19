package default

from std import collection.*
// import org.antlr.v4.runtime.misc.Interval;
// import org.antlr.v4.runtime.misc.Utils;
// import java.util.Locale;

open public class LexerNoViableAltException <: RecognitionException {

    private let startIndex: Int32 = 0
    
    private let deadEndConfigs: ATNConfigSet = ATNConfigSet()
    
    public init (lexer: Option<Lexer>, input: Option<CharStream>, startIndex: Int32, deadEndConfigs: ATNConfigSet){

    }

    public open func getStartIndex (): Int32 {
  //    return startIndex;

        return 0
    }

    public open func getDeadEndConfigs (): ATNConfigSet {
  //    return deadEndConfigs;

        return ATNConfigSet()
    }

    public open override func getInputStream (): Option<CharStream> {
  //    return (Option<CharStream>)super.getInputStream();

        return Option<CharStream>.None
    }

    public open func toString (): String {
  //    String symbol = "";
  //    if (startIndex >= 0 && startIndex < getInputStream().size()) {
  //        symbol = getInputStream().getText(Interval.of(startIndex, startIndex));
  //        symbol = Utils.escapeWhitespace(symbol, false);
  //    return String.format(Locale.getDefault(), "%s(\'%s\')", LexerNoViableAltException.class.getSimpleName(), symbol);

        return ""
    }

    public init() {}
}


