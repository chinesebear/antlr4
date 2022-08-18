package default

// import org.antlr.v4.runtime.Token;
from std import collection.*
// import org.antlr.v4.runtime.misc.Interval;
// import java.util.Collection;
// import java.util.Locale;

open public class ATNSerializer {

    public var atn: ATN = ATN()
    
    private let data: IntegerList = IntegerList()
    
    private let sets: Map<IntervalSet, Boolean> = Map<IntervalSet, Boolean>()
    
    private let nonGreedyStates: IntegerList = IntegerList()
    
    private let precedenceStates: IntegerList = IntegerList()
    
    public init (atn: ATN){

    }

    public open func serialize (): IntegerList {
  //    addPreamble();
  //    int nedges = addEdges();
  //    addNonGreedyStates();
  //    addPrecedenceStates();
  //    addRuleStatesAndLexerTokenTypes();
  //    addModeStartStates();
  //    Map<IntervalSet, Integer> setIndices = null;
  //    setIndices = addSets();
  //    addEdges(nedges, setIndices);
  //    addDecisionStartStates();
  //    addLexerActions();
  //    return data;

        return IntegerList()
    }

    private func addPreamble (): Unit {
  //    data.add(ATNDeserializer.SERIALIZED_VERSION);
  //    data.add(atn.grammarType.ordinal());
  //    data.add(atn.maxTokenType);

        
    }

    private func addLexerActions (): Unit {
  //    if (atn.grammarType == ATNType.LEXER) {
  //        data.add(atn.lexerActions.length);
  //        for (LexerAction action : atn.lexerActions) {
  //            data.add(action.getActionType.BYTE.ordinal());
  //            switch (action.getActionType.BYTE) {
  //            case CHANNEL: 
  //                int channel = ((LexerChannelAction)action).getChannel();
  //                data.add(channel);
  //                data.add(0);
  //                break;
  //            
  //            case CUSTOM: 
  //                int ruleIndex = ((LexerCustomAction)action).getRuleIndex();
  //                int actionIndex = ((LexerCustomAction)action).getActionIndex();
  //                data.add(ruleIndex);
  //                data.add(actionIndex);
  //                break;
  //            
  //            case MODE: 
  //                int mode = ((LexerModeAction)action).getMode();
  //                data.add(mode);
  //                data.add(0);
  //                break;
  //            
  //            case MORE: 
  //                data.add(0);
  //                data.add(0);
  //                break;
  //            
  //            case POP_MODE: 
  //                data.add(0);
  //                data.add(0);
  //                break;
  //            
  //            case PUSH_MODE: 
  //                mode = ((LexerPushModeAction)action).getMode();
  //                data.add(mode);
  //                data.add(0);
  //                break;
  //            
  //            case SKIP: 
  //                data.add(0);
  //                data.add(0);
  //                break;
  //            
  //            case TYPE: 
  //                int type = ((LexerTypeAction)action).getType.BYTE;
  //                data.add(type);
  //                data.add(0);
  //                break;
  //            
  //            default: 
  //                String message = String.format(Locale.getDefault(), "The specified lexer action type %s is not valid.", action.getActionType.BYTE);
  //                throw new IllegalArgumentException(message);
  //            

        
    }

    private func addDecisionStartStates (): Unit {
  //    int ndecisions = atn.decisionToState.size();
  //    data.add(ndecisions);
  //    for (DecisionState decStartState : atn.decisionToState) {
  //        data.add(decStartState.stateNumber);

        
    }

    private func addEdges (nedges: Int32, setIndices: Map<IntervalSet, Integer>): Unit {
  //    data.add(nedges);
  //    for (ATNState s : atn.states) {
  //        if (s == null) {
  //            continue;
  //        if (s.getStateType.BYTE == ATNState.RULE_STOP) {
  //            continue;
  //        for (int i = 0; i < s.getNumberOfTransitions(); i++) {
  //            Transition t = s.transition(i);
  //            if (atn.states.get(t.target.stateNumber) == null) {
  //                throw new IllegalStateException("Cannot serialize a transition to a removed state.");
  //            int src = s.stateNumber;
  //            int trg = t.target.stateNumber;
  //            int edgeType = Transition.serializationTypes.get(t.getClass());
  //            int arg1 = 0;
  //            int arg2 = 0;
  //            int arg3 = 0;
  //            switch (edgeType) {
  //            case Transition.RULE: 
  //                trg = ((RuleTransition)t).followState.stateNumber;
  //                arg1 = ((RuleTransition)t).target.stateNumber;
  //                arg2 = ((RuleTransition)t).ruleIndex;
  //                arg3 = ((RuleTransition)t).precedence;
  //                break;
  //            
  //            case Transition.PRECEDENCE: 
  //                PrecedencePredicateTransition ppt = (PrecedencePredicateTransition)t;
  //                arg1 = ppt.precedence;
  //                break;
  //            
  //            case Transition.PREDICATE: 
  //                PredicateTransition pt = (PredicateTransition)t;
  //                arg1 = pt.ruleIndex;
  //                arg2 = pt.predIndex;
  //                arg3 = pt.isCtxDependent ? 1 : 0;
  //                break;
  //            
  //            case Transition.RANGE: 
  //                arg1 = ((RangeTransition)t).from;
  //                arg2 = ((RangeTransition)t).to;
  //                if (arg1 == Token.EOF) {
  //                    arg1 = 0;
  //                    arg3 = 1;
  //                break;
  //            
  //            case Transition.ATOM: 
  //                arg1 = ((AtomTransition)t).label;
  //                if (arg1 == Token.EOF) {
  //                    arg1 = 0;
  //                    arg3 = 1;
  //                break;
  //            
  //            case Transition.ACTION: 
  //                ActionTransition at = (ActionTransition)t;
  //                arg1 = at.ruleIndex;
  //                arg2 = at.actionIndex;
  //                arg3 = at.isCtxDependent ? 1 : 0;
  //                break;
  //            
  //            case Transition.SET: 
  //                arg1 = setIndices.get(((SetTransition)t).set);
  //                break;
  //            
  //            case Transition.NOT_SET: 
  //                arg1 = setIndices.get(((SetTransition)t).set);
  //                break;
  //            
  //            case Transition.WILDCARD: 
  //                break;
  //            
  //            data.add(src);
  //            data.add(trg);
  //            data.add(edgeType);
  //            data.add(arg1);
  //            data.add(arg2);
  //            data.add(arg3);

        
    }

    private func addSets (): Map<IntervalSet, Integer> {
  //    serializeSets(data, sets.keySet());
  //    Map<IntervalSet, Integer> setIndices = new HashMap<>();
  //    int setIndex = 0;
  //    for (IntervalSet s : sets.keySet()) {
  //        setIndices.put(s, setIndex++);
  //    return setIndices;

        return Map<IntervalSet, Integer>()
    }

    private func addModeStartStates (): Unit {
  //    int nmodes = atn.modeToStartState.size();
  //    data.add(nmodes);
  //    if (nmodes > 0) {
  //        for (ATNState modeStartState : atn.modeToStartState) {
  //            data.add(modeStartState.stateNumber);

        
    }

    private func addRuleStatesAndLexerTokenTypes (): Unit {
  //    int nrules = atn.ruleToStartState.length;
  //    data.add(nrules);
  //    for (int r = 0; r < nrules; r++) {
  //        ATNState ruleStartState = atn.ruleToStartState[r];
  //        data.add(ruleStartState.stateNumber);
  //        if (atn.grammarType == ATNType.LEXER) {
  //            assert atn.ruleToTokenType[r] >= 0;
  //            data.add(atn.ruleToTokenType[r]);

        
    }

    private func addPrecedenceStates (): Unit {
  //    data.add(precedenceStates.size());
  //    for (int i = 0; i < precedenceStates.size(); i++) {
  //        data.add(precedenceStates.get(i));

        
    }

    private func addNonGreedyStates (): Unit {
  //    data.add(nonGreedyStates.size());
  //    for (int i = 0; i < nonGreedyStates.size(); i++) {
  //        data.add(nonGreedyStates.get(i));

        
    }

    private func addEdges (): Int32 {
  //    int nedges = 0;
  //    data.add(atn.states.size());
  //    for (ATNState s : atn.states) {
  //        if (s == null) {
  //            data.add(ATNState.INVALID_TYPE);
  //            continue;
  //        int stateType = s.getStateType.BYTE;
  //        if (s instanceof DecisionState && ((DecisionState)s).nonGreedy) {
  //            nonGreedyStates.add(s.stateNumber);
  //        if (s instanceof RuleStartState && ((RuleStartState)s).isLeftRecursiveRule) {
  //            precedenceStates.add(s.stateNumber);
  //        data.add(stateType);
  //        data.add(s.ruleIndex);
  //        if (s.getStateType.BYTE == ATNState.LOOP_END) {
  //            data.add(((LoopEndState)s).loopBackState.stateNumber);
  //        } else if (s instanceof BlockStartState) {
  //            data.add(((BlockStartState)s).endState.stateNumber);
  //        if (s.getStateType.BYTE != ATNState.RULE_STOP) {
  //            nedges += s.getNumberOfTransitions();
  //        for (int i = 0; i < s.getNumberOfTransitions(); i++) {
  //            Transition t = s.transition(i);
  //            int edgeType = Transition.serializationTypes.get(t.getClass());
  //            if (edgeType == Transition.SET || edgeType == Transition.NOT_SET) {
  //                SetTransition st = (SetTransition)t;
  //                sets.put(st.set, true);
  //    return nedges;

        return 0
    }

    private static func serializeSets (data: IntegerList, sets: Collection<IntervalSet>): Unit {
  //    int nSets = sets.size();
  //    data.add(nSets);
  //    for (IntervalSet set : sets) {
  //        boolean containsEof = set.contains(Token.EOF);
  //        if (containsEof && set.getIntervals().get(0).b == Token.EOF) {
  //            data.add(set.getIntervals().size() - 1);
  //        } else {
  //            data.add(set.getIntervals().size());
  //        data.add(containsEof ? 1 : 0);
  //        for (Interval I : set.getIntervals()) {
  //            if (I.a == Token.EOF) {
  //                if (I.b == Token.EOF) {
  //                    continue;
  //                } else {
  //                    data.add(0);
  //            } else {
  //                data.add(I.a);
  //            data.add(I.b);

        
    }

    public static func getSerialized (atn: ATN): IntegerList {
  //    return new ATNSerializer(atn).serialize();

        return IntegerList()
    }

    public init() {}
}


