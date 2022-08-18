package default

// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.atn.ATNState;
// import org.antlr.v4.runtime.atn.ActionTransition;
// import org.antlr.v4.runtime.atn.AtomTransition;
// import org.antlr.v4.runtime.atn.DecisionState;
// import org.antlr.v4.runtime.atn.LoopEndState;
// import org.antlr.v4.runtime.atn.ParserATNSimulator;
// import org.antlr.v4.runtime.atn.PrecedencePredicateTransition;
// import org.antlr.v4.runtime.atn.PredicateTransition;
// import org.antlr.v4.runtime.atn.PredictionContextCache;
// import org.antlr.v4.runtime.atn.RuleStartState;
// import org.antlr.v4.runtime.atn.RuleTransition;
// import org.antlr.v4.runtime.atn.StarLoopEntryState;
// import org.antlr.v4.runtime.atn.Transition;
// import org.antlr.v4.runtime.dfa.DFA;
// import org.antlr.v4.runtime.misc.Pair;
from std import collection.*
// import java.util.Collection;
// import java.util.Deque;

open public class ParserInterpreter <: Parser {

    protected let grammarFileName: String = ""
    
    protected let atn: ATN = ATN()
    
    protected let decisionToDFA: Array<DFA> = Array<DFA>()
    
    protected let sharedContextCache: PredictionContextCache = PredictionContextCache()
    
    //@Deprecated
    protected let tokenNames: Array<String> = Array<String>()
    
    protected let ruleNames: Array<String> = Array<String>()
    
    private let vocabulary: Vocabulary = Vocabulary()
    
    protected let parentContextStack: Deque<Pair<ParserRuleContext, Integer>> = Deque<Pair<ParserRuleContext, Integer>>()
    
    protected var overrideDecision: Int32 = -1
    
    protected var overrideDecisionInputIndex: Int32 = -1
    
    protected var overrideDecisionAlt: Int32 = -1
    
    protected var overrideDecisionReached: Bool = true
    
    protected var overrideDecisionRoot: InterpreterRuleContext = InterpreterRuleContext()
    
    protected var rootContext: InterpreterRuleContext = InterpreterRuleContext()
    
    public init (grammarFileName: String, tokenNames: Collection<String>, ruleNames: Collection<String>, atn: ATN, input: TokenStream){

    }

    public init (grammarFileName: String, vocabulary: Vocabulary, ruleNames: Collection<String>, atn: ATN, input: TokenStream){

    }

    public open override func reset (): Unit {
        
    }

    public open override func getATN (): ATN {
        return ATN()
    }

    public open override func getTokenNames (): Array<String> {
        return Array<String>()
    }

    public open override func getVocabulary (): Vocabulary {
        return Vocabulary()
    }

    public open override func getRuleNames (): Array<String> {
        return Array<String>()
    }

    public open override func getGrammarFileName (): String {
        return ""
    }

    public open func parse (startRuleIndex: Int32): ParserRuleContext {
        return ParserRuleContext()
    }

    public open override func enterRecursionRule (localctx: ParserRuleContext, state: Int32, ruleIndex: Int32, precedence: Int32): Unit {
        
    }

    protected open func getATNState (): ATNState {
        return ATNState()
    }

    protected open func visitState (p: ATNState): Unit {
        
    }

    protected open func visitDecisionState (p: DecisionState): Int32 {
        return 0
    }

    protected open func createInterpreterRuleContext (parent: ParserRuleContext, invokingStateNumber: Int32, ruleIndex: Int32): InterpreterRuleContext {
        return InterpreterRuleContext()
    }

    protected open func visitRuleStopState (p: ATNState): Unit {
        
    }

    public open func addDecisionOverride (decision: Int32, tokenIndex: Int32, forcedAlt: Int32): Unit {
        
    }

    public open func getOverrideDecisionRoot (): InterpreterRuleContext {
        return InterpreterRuleContext()
    }

    protected open func recover (e: RecognitionException): Unit {
        
    }

    protected open func recoverInline (): Token {
        return Token()
    }

    public open func getRootContext (): InterpreterRuleContext {
        return InterpreterRuleContext()
    }

    public init() {}
}


