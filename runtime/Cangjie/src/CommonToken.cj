package default

// import org.antlr.v4.runtime.misc.Interval;
// import org.antlr.v4.runtime.misc.Pair;
from std import io.*

open public class CommonToken <: WritableToken & Serializable {

    protected static let EMPTY_SOURCE: Pair<Option<TokenSource>, Option<CharStream>> = Pair<Option<TokenSource>, Option<CharStream>>()
    
    protected var `type`: Int32 = 0
    
    protected var line: Int32 = 0
    
    protected var charPositionInLine: Int32 = -1
    
    protected var channel: Int32 = 0
    
    protected var source: Pair<Option<TokenSource>, Option<CharStream>> = Pair<Option<TokenSource>, Option<CharStream>>()
    
    protected var text: String = ""
    
    protected var index: Int32 = -1
    
    protected var start: Int32 = 0
    
    protected var stop: Int32 = 0
    
    public init (`type`: Int32){

    }

    public init (source: Pair<Option<TokenSource>, Option<CharStream>>, `type`: Int32, channel: Int32, start: Int32, stop: Int32){

    }

    public init (`type`: Int32, text: String){

    }

    public init (oldToken: Option<Token>){

    }

    public open func getType (): Int32 {
  //    return type;

        return 0
    }

    public open func setLine (line: Int32): Unit {
  //    this.line = line;

        
    }

    public open func getText (): String {
  //    if (text != null) {
  //        return text;
  //    CharStream input = getInputStream();
  //    if (input == null) return null;
  //    int n = input.size();
  //    if (start < n && stop < n) {
  //        return input.getText(Interval.of(start, stop));
  //    } else {
  //        return "<EOF>";

        return ""
    }

    public open func setText (text: String): Unit {
  //    this.text = text;

        
    }

    public open func getLine (): Int32 {
  //    return line;

        return 0
    }

    public open func getCharPositionInLine (): Int32 {
  //    return charPositionInLine;

        return 0
    }

    public open func setCharPositionInLine (charPositionInLine: Int32): Unit {
  //    this.charPositionInLine = charPositionInLine;

        
    }

    public open func getChannel (): Int32 {
  //    return channel;

        return 0
    }

    public open func setChannel (channel: Int32): Unit {
  //    this.channel = channel;

        
    }

    public open func setType (`type`: Int32): Unit {
  //    this.type = type;

        
    }

    public open func getStartIndex (): Int32 {
  //    return start;

        return 0
    }

    public open func setStartIndex (start: Int32): Unit {
  //    this.start = start;

        
    }

    public open func getStopIndex (): Int32 {
  //    return stop;

        return 0
    }

    public open func setStopIndex (stop: Int32): Unit {
  //    this.stop = stop;

        
    }

    public open func getTokenIndex (): Int32 {
  //    return index;

        return 0
    }

    public open func setTokenIndex (index: Int32): Unit {
  //    this.index = index;

        
    }

    public open func getTokenSource (): Option<TokenSource> {
  //    return source.a;

        return Option<TokenSource>.None
    }

    public open func getInputStream (): Option<CharStream> {
  //    return source.b;

        return Option<CharStream>.None
    }

    public open func toString (): String {
  //    return toString(null);

        return ""
    }

    public open func toString (r: Recognizer<T, T>): String {
  //    String channelStr = "";
  //    if (channel > 0) {
  //        channelStr = ",channel=" + channel;
  //    String txt = getText();
  //    if (txt != null) {
  //        txt = txt.replace("\n", "\\n");
  //        txt = txt.replace("\r", "\\r");
  //        txt = txt.replace("\t", "\\t");
  //    } else {
  //        txt = "<no text>";
  //    String typeString = String.valueOf(type);
  //    if (r != null) {
  //        typeString = r.getVocabulary().getDisplayName(type);
  //    return "[@" + getTokenIndex() + "," + start + ":" + stop + "=\'" + txt + "\',<" + typeString + ">" + channelStr + "," + line + ":" + getCharPositionInLine() + "]";

        return ""
    }

    public init() {}
}


