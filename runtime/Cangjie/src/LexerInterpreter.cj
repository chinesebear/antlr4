package default

// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.atn.ATNType;
// import org.antlr.v4.runtime.atn.LexerATNSimulator;
// import org.antlr.v4.runtime.atn.PredictionContextCache;
// import org.antlr.v4.runtime.dfa.DFA;
from std import collection.*
// import java.util.Collection;

open public class LexerInterpreter <: Lexer {

    protected let grammarFileName: String = ""
    
    protected let atn: ATN = ATN()
    
    //@Deprecated
    protected let tokenNames: Array<String> = Array<String>()
    
    protected let ruleNames: Array<String> = Array<String>()
    
    protected let channelNames: Array<String> = Array<String>()
    
    protected let modeNames: Array<String> = Array<String>()
    
    private let vocabulary: Vocabulary = Vocabulary()
    
    protected let decisionToDFA: Array<DFA> = Array<DFA>()
    
    protected let sharedContextCache: PredictionContextCache = PredictionContextCache()
    
    public init (grammarFileName: String, tokenNames: Collection<String>, ruleNames: Collection<String>, modeNames: Collection<String>, atn: ATN, input: CharStream){

    }

    public init (grammarFileName: String, vocabulary: Vocabulary, ruleNames: Collection<String>, modeNames: Collection<String>, atn: ATN, input: CharStream){

    }

    public init (grammarFileName: String, vocabulary: Vocabulary, ruleNames: Collection<String>, channelNames: Collection<String>, modeNames: Collection<String>, atn: ATN, input: CharStream){

    }

    public open override func getATN (): ATN {
        return ATN()
    }

    public open override func getGrammarFileName (): String {
        return ""
    }

    public open override func getTokenNames (): Array<String> {
        return Array<String>()
    }

    public open override func getRuleNames (): Array<String> {
        return Array<String>()
    }

    public open override func getChannelNames (): Array<String> {
        return Array<String>()
    }

    public open override func getModeNames (): Array<String> {
        return Array<String>()
    }

    public open override func getVocabulary (): Vocabulary {
        return Vocabulary()
    }

    public init() {}
}


