package tree.xpath

// import org.antlr.v4.runtime.CharStream;
// import org.antlr.v4.runtime.CommonToken;
// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.LexerNoViableAltException;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.Vocabulary;
// import org.antlr.v4.runtime.VocabularyImpl;
// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.misc.Interval;

import atn.*

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
    
    public static let VOCABULARY: Vocabulary = Vocabulary()
    
    //@Deprecated
    public static let tokenNames: Array<String> = Array<String>()
    
    public open override func getGrammarFileName (): String {
        return ""
    }

    public open override func getRuleNames (): Array<String> {
        return Array<String>()
    }

    public open override func getModeNames (): Array<String> {
        return Array<String>()
    }

    public open override func getTokenNames (): Array<String> {
        return Array<String>()
    }

    public open override func getVocabulary (): Vocabulary {
        return Vocabulary()
    }

    public open override func getATN (): ATN {
        return ATN()
    }

    protected var line: Int32 = 1
    
    protected var charPositionInLine: Int32 = 0
    
    public init (input: CharStream){

    }

    public open override func nextToken (): Token {
        return Token()
    }

    public open func consume (): Unit {
        
    }

    public open override func getCharPositionInLine (): Int32 {
        return 0
    }

    public open func matchID (): String {
        return ""
    }

    public open func matchString (): String {
        return ""
    }

    public open func isNameChar (c: Int32): Bool {
        return true
    }

    public open func isNameStartChar (c: Int32): Bool {
        return true
    }

    public init() {}
}


