package default

// import org.antlr.v4.runtime.CharStream;
// import org.antlr.v4.runtime.CommonToken;
// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.LexerNoViableAltException;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.Vocabulary;
// import org.antlr.v4.runtime.VocabularyImpl;
// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.misc.Interval;

open public class XPathLexer <: Lexer {

    public static let TOKEN_REF: Int32 = 1
    
    public static let RULE_REF: Int32 = 2
    
    public static let ANYWHERE: Int32 = 3
    
    public static let ROOT: Int32 = 4
    
    public static let WILDCARD: Int32 = 5
    
    public static let BANG: Int32 = 6
    
    public static let ID: Int32 = 7
    
    public static let STRING: Int32 = 8
    
    public static var modeNames: Array<String> = ["DEFAULT_MODE"]
    
    public static let ruleNames: Array<String> = ["ANYWHERE", "ROOT", "WILDCARD", "BANG", "ID", "NameChar", "NameStartChar", "STRING"]
    
    private static let LITERAL_NAMES: Array<String> = Array<String>()
    
    private static let SYMBOLIC_NAMES: Array<String> = Array<String>()
    
    public static let VOCABULARY: Option<Vocabulary> = Option<Vocabulary>.None
    
    //@Deprecated
    public static let tokenNames: Array<String> = Array<String>()
    
    public open func getGrammarFileName (): String {
  //    return "XPathLexer.g4";

        return ""
    }

    public open func getRuleNames (): Array<String> {
  //    return ruleNames;

        return Array<String>()
    }

    public open override func getModeNames (): Array<String> {
  //    return modeNames;

        return Array<String>()
    }

    public open override func getTokenNames (): Array<String> {
  //    return tokenNames;

        return Array<String>()
    }

    public open func getVocabulary (): Option<Vocabulary> {
  //    return VOCABULARY;

        return Option<Vocabulary>.None
    }

    public open func getATN (): ATN {
  //    return null;

        return ATN()
    }

    protected var line: Int32 = 1
    
    protected var charPositionInLine: Int32 = 0
    
    public init (input: Option<CharStream>){

    }

    public open override func nextToken (): Option<Token> {
  //    _tokenStartCharIndex = _input.index();
  //    CommonToken t = null;
  //    while (t == null) {
  //        switch (_input.LA(1)) {
  //        case '/': 
  //            consume();
  //            if (_input.LA(1) == '/') {
  //                consume();
  //                t = new CommonToken(ANYWHERE, "//");
  //            } else {
  //                t = new CommonToken(ROOT, "/");
  //            break;
  //        
  //        case '*': 
  //            consume();
  //            t = new CommonToken(WILDCARD, "*");
  //            break;
  //        
  //        case '!': 
  //            consume();
  //            t = new CommonToken(BANG, "!");
  //            break;
  //        
  //        case '\'': 
  //            String s = matchString();
  //            t = new CommonToken(STRING, s);
  //            break;
  //        
  //        case CharStream.EOF: 
  //            return new CommonToken(EOF, "<EOF>");
  //        
  //        default: 
  //            if (isNameStartChar(_input.LA(1))) {
  //                String id = matchID();
  //                if (Character.isUpperCase(id.charAt(0))) t = new CommonToken(TOKEN_REF, id); else t = new CommonToken(RULE_REF, id);
  //            } else {
  //                throw new LexerNoViableAltException(this, _input, _tokenStartCharIndex, null);
  //            break;
  //        
  //    t.setStartIndex(_tokenStartCharIndex);
  //    t.setCharPositionInLine(_tokenStartCharIndex);
  //    t.setLine(line);
  //    return t;

        return Option<Token>.None
    }

    public open func consume (): Unit {
  //    int curChar = _input.LA(1);
  //    if (curChar == '\n') {
  //        line++;
  //        charPositionInLine = 0;
  //    } else {
  //        charPositionInLine++;
  //    _input.consume();

        
    }

    public open override func getCharPositionInLine (): Int32 {
  //    return charPositionInLine;

        return 0
    }

    public open func matchID (): String {
  //    int start = _input.index();
  //    consume();
  //    while (isNameChar(_input.LA(1))) {
  //        consume();
  //    return _input.getText(Interval.of(start, _input.index() - 1));

        return ""
    }

    public open func matchString (): String {
  //    int start = _input.index();
  //    consume();
  //    while (_input.LA(1) != '\'') {
  //        consume();
  //    consume();
  //    return _input.getText(Interval.of(start, _input.index() - 1));

        return ""
    }

    public open func isNameChar (c: Int32): Bool {
  //    return Character.isUnicodeIdentifierPart(c);

        return true
    }

    public open func isNameStartChar (c: Int32): Bool {
  //    return Character.isUnicodeIdentifierStart(c);

        return true
    }

    public init() {}
}


