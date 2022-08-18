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
    
    private let vocabulary: Option<Vocabulary> = Option<Vocabulary>.None
    
    protected let decisionToDFA: Array<DFA> = Array<DFA>()
    
    protected let sharedContextCache: PredictionContextCache = PredictionContextCache()
    
    public init (grammarFileName: String, tokenNames: Collection<String>, ruleNames: Collection<String>, modeNames: Collection<String>, atn: ATN, input: Option<CharStream>){

    }

    public init (grammarFileName: String, vocabulary: Option<Vocabulary>, ruleNames: Collection<String>, modeNames: Collection<String>, atn: ATN, input: Option<CharStream>){

    }

    public init (grammarFileName: String, vocabulary: Option<Vocabulary>, ruleNames: Collection<String>, channelNames: Collection<String>, modeNames: Collection<String>, atn: ATN, input: Option<CharStream>){

    }

    public open func getATN (): ATN {
  //    return atn;

        return ATN()
    }

    public open func getGrammarFileName (): String {
  //    return grammarFileName;

        return ""
    }

    public open override func getTokenNames (): Array<String> {
  //    return tokenNames;

        return Array<String>()
    }

    public open func getRuleNames (): Array<String> {
  //    return ruleNames;

        return Array<String>()
    }

    public open override func getChannelNames (): Array<String> {
  //    return channelNames;

        return Array<String>()
    }

    public open override func getModeNames (): Array<String> {
  //    return modeNames;

        return Array<String>()
    }

    public open func getVocabulary (): Option<Vocabulary> {
  //    if (vocabulary != null) {
  //        return vocabulary;
  //    return super.getVocabulary();

        return Option<Vocabulary>.None
    }

    public init() {}
}


