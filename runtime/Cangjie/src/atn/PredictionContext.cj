package default

// import org.antlr.v4.runtime.Recognizer;
// import org.antlr.v4.runtime.RuleContext;
from std import collection.*
// import org.antlr.v4.runtime.misc.MurmurHash;
// import java.util.Collections;
// import java.util.Comparator;

public abstract class PredictionContext {

    public static let EMPTY: EmptyPredictionContext = EmptyPredictionContext()
    
    public static let EMPTY_RETURN_STATE: Int32 = 0
    
    private static let INITIAL_HASH: Int32 = 1
    
    public static var globalNodeCount: Int32 = 0
    
    public let id: Int32 = 0
    
    public let cachedHashCode: Int32 = 0
    
    protected init (cachedHashCode: Int32){

    }

    public static func fromRuleContext (atn: ATN, outerContext: RuleContext): Option<PredictionContext> {
  //    if (outerContext == null) outerContext = RuleContext.EMPTY;
  //    if (outerContext.parent == null || outerContext == RuleContext.EMPTY) {
  //        return Option<PredictionContext>.EMPTY;
  //    PredictionContext parent = EMPTY;
  //    parent = PredictionContext.fromRuleContext(atn, outerContext.parent);
  //    ATNState state = atn.states.get(outerContext.invokingState);
  //    RuleTransition transition = (RuleTransition)state.transition(0);
  //    return SingletonPredictionContext.create(parent, transition.followState.stateNumber);

        return Option<PredictionContext>.None
    }

    public func size (): Int32 

    public func getParent (index: Int32): Option<PredictionContext> 

    public func getReturnState (index: Int32): Int32 

    public open func isEmpty (): Bool {
  //    return this == EMPTY;

        return true
    }

    public open func hasEmptyPath (): Bool {
  //    return getReturnState(size() - 1) == EMPTY_RETURN_STATE;

        return true
    }

    public open func hashCodeFunc (): Int32 {
  //    return cachedHashCode;

        return 0
    }

    public func equals (obj: Object): Bool 

    protected static func calculateEmptyHashCode (): Int32 {
  //    int hash = MurmurHash.initialize(INITIAL_HASH);
  //    hash = MurmurHash.finish(hash, 0);
  //    return hash;

        return 0
    }

    protected func calculateHashCode (parent: Option<PredictionContext>, returnState: Int32): Int32 {
  //    int hash = MurmurHash.initialize(INITIAL_HASH);
  //    hash = MurmurHash.update(hash, parent);
  //    hash = MurmurHash.update(hash, returnState);
  //    hash = MurmurHash.finish(hash, 2);
  //    return hash;

        return 0
    }

    protected func calculateHashCode (parents: Array<Option<PredictionContext>>, returnStates: Array<Int32>): Int32 {
  //    int hash = MurmurHash.initialize(INITIAL_HASH);
  //    for (PredictionContext parent : parents) {
  //        hash = MurmurHash.update(hash, parent);
  //    for (int returnState : returnStates) {
  //        hash = MurmurHash.update(hash, returnState);
  //    hash = MurmurHash.finish(hash, 2 * parents.length);
  //    return hash;

        return 0
    }

    public static func merge (a: Option<PredictionContext>, b: Option<PredictionContext>, rootIsWildcard: Bool, mergeCache: DoubleKeyMap<Option<PredictionContext>, Option<PredictionContext>, Option<PredictionContext>>): Option<PredictionContext> {
  //    assert a != null && b != null;
  //    if (a == b || a.equals(b)) return a;
  //    if (a instanceof SingletonPredictionContext && b instanceof SingletonPredictionContext) {
  //        return mergeSingletons((SingletonPredictionContext)a, (SingletonPredictionContext)b, rootIsWildcard, mergeCache);
  //    if (rootIsWildcard) {
  //        if (a instanceof EmptyPredictionContext) return a;
  //        if (b instanceof EmptyPredictionContext) return b;
  //    if (a instanceof SingletonPredictionContext) {
  //        a = new ArrayPredictionContext((SingletonPredictionContext)a);
  //    if (b instanceof SingletonPredictionContext) {
  //        b = new ArrayPredictionContext((SingletonPredictionContext)b);
  //    return mergeArrays((ArrayPredictionContext)a, (ArrayPredictionContext)b, rootIsWildcard, mergeCache);

        return Option<PredictionContext>.None
    }

    public static func mergeSingletons (a: SingletonPredictionContext, b: SingletonPredictionContext, rootIsWildcard: Bool, mergeCache: DoubleKeyMap<Option<PredictionContext>, Option<PredictionContext>, Option<PredictionContext>>): Option<PredictionContext> {
  //    if (mergeCache != null) {
  //        PredictionContext previous = mergeCache.get(a, b);
  //        if (previous != null) return previous;
  //        previous = mergeCache.get(b, a);
  //        if (previous != null) return previous;
  //    PredictionContext rootMerge = mergeRoot(a, b, rootIsWildcard);
  //    if (rootMerge != null) {
  //        if (mergeCache != null) mergeCache.put(a, b, rootMerge);
  //        return rootMerge;
  //    if (a.returnState == b.returnState) {
  //        PredictionContext parent = merge(a.parent, b.parent, rootIsWildcard, mergeCache);
  //        if (parent == a.parent) return a;
  //        if (parent == b.parent) return b;
  //        PredictionContext a_ = SingletonPredictionContext.create(parent, a.returnState);
  //        if (mergeCache != null) mergeCache.put(a, b, a_);
  //        return a_;
  //    } else {
  //        PredictionContext singleParent = null;
  //        if (a == b || (a.parent != null && a.parent.equals(b.parent))) {
  //            singleParent = a.parent;
  //        if (singleParent != null) {
  //            int[] payloads = {a.returnState, b.returnState};
  //            if (a.returnState > b.returnState) {
  //                payloads[0] = b.returnState;
  //                payloads[1] = a.returnState;
  //            PredictionContext[] parents = {singleParent, singleParent};
  //            PredictionContext a_ = new ArrayPredictionContext(parents, payloads);
  //            if (mergeCache != null) mergeCache.put(a, b, a_);
  //            return a_;
  //        int[] payloads = {a.returnState, b.returnState};
  //        PredictionContext[] parents = {a.parent, b.parent};
  //        if (a.returnState > b.returnState) {
  //            payloads[0] = b.returnState;
  //            payloads[1] = a.returnState;
  //            parents = new PredictionContext[]{b.parent, a.parent};
  //        PredictionContext a_ = new ArrayPredictionContext(parents, payloads);
  //        if (mergeCache != null) mergeCache.put(a, b, a_);
  //        return a_;

        return Option<PredictionContext>.None
    }

    public static func mergeRoot (a: SingletonPredictionContext, b: SingletonPredictionContext, rootIsWildcard: Bool): Option<PredictionContext> {
  //    if (rootIsWildcard) {
  //        if (a == EMPTY) return EMPTY;
  //        if (b == EMPTY) return EMPTY;
  //    } else {
  //        if (a == EMPTY && b == EMPTY) return EMPTY;
  //        if (a == EMPTY) {
  //            int[] payloads = {b.returnState, EMPTY_RETURN_STATE};
  //            PredictionContext[] parents = {b.parent, null};
  //            PredictionContext joined = new ArrayPredictionContext(parents, payloads);
  //            return joined;
  //        if (b == EMPTY) {
  //            int[] payloads = {a.returnState, EMPTY_RETURN_STATE};
  //            PredictionContext[] parents = {a.parent, null};
  //            PredictionContext joined = new ArrayPredictionContext(parents, payloads);
  //            return joined;
  //    return null;

        return Option<PredictionContext>.None
    }

    public static func mergeArrays (a: ArrayPredictionContext, b: ArrayPredictionContext, rootIsWildcard: Bool, mergeCache: DoubleKeyMap<Option<PredictionContext>, Option<PredictionContext>, Option<PredictionContext>>): Option<PredictionContext> {
  //    if (mergeCache != null) {
  //        PredictionContext previous = mergeCache.get(a, b);
  //        if (previous != null) return previous;
  //        previous = mergeCache.get(b, a);
  //        if (previous != null) return previous;
  //    int i = 0;
  //    int j = 0;
  //    int k = 0;
  //    int[] mergedReturnStates = new int[a.returnStates.length + b.returnStates.length];
  //    PredictionContext[] mergedParents = new PredictionContext[a.returnStates.length + b.returnStates.length];
  //    while (i < a.returnStates.length && j < b.returnStates.length) {
  //        PredictionContext a_parent = a.parents[i];
  //        PredictionContext b_parent = b.parents[j];
  //        if (a.returnStates[i] == b.returnStates[j]) {
  //            int payload = a.returnStates[i];
  //            boolean both$ = payload == EMPTY_RETURN_STATE && a_parent == null && b_parent == null;
  //            boolean ax_ax = (a_parent != null && b_parent != null) && a_parent.equals(b_parent);
  //            if (both$ || ax_ax) {
  //                mergedParents[k] = a_parent;
  //                mergedReturnStates[k] = payload;
  //            } else {
  //                PredictionContext mergedParent = merge(a_parent, b_parent, rootIsWildcard, mergeCache);
  //                mergedParents[k] = mergedParent;
  //                mergedReturnStates[k] = payload;
  //            i++;
  //            j++;
  //        } else if (a.returnStates[i] < b.returnStates[j]) {
  //            mergedParents[k] = a_parent;
  //            mergedReturnStates[k] = a.returnStates[i];
  //            i++;
  //        } else {
  //            mergedParents[k] = b_parent;
  //            mergedReturnStates[k] = b.returnStates[j];
  //            j++;
  //        k++;
  //    if (i < a.returnStates.length) {
  //        for (int p = i; p < a.returnStates.length; p++) {
  //            mergedParents[k] = a.parents[p];
  //            mergedReturnStates[k] = a.returnStates[p];
  //            k++;
  //    } else {
  //        for (int p = j; p < b.returnStates.length; p++) {
  //            mergedParents[k] = b.parents[p];
  //            mergedReturnStates[k] = b.returnStates[p];
  //            k++;
  //    if (k < mergedParents.length) {
  //        if (k == 1) {
  //            PredictionContext a_ = SingletonPredictionContext.create(mergedParents[0], mergedReturnStates[0]);
  //            if (mergeCache != null) mergeCache.put(a, b, a_);
  //            return a_;
  //        mergedParents = Arrays.copyOf(mergedParents, k);
  //        mergedReturnStates = Arrays.copyOf(mergedReturnStates, k);
  //    PredictionContext M = new ArrayPredictionContext(mergedParents, mergedReturnStates);
  //    if (M.equals(a)) {
  //        if (mergeCache != null) mergeCache.put(a, b, a);
  //        return a;
  //    if (M.equals(b)) {
  //        if (mergeCache != null) mergeCache.put(a, b, b);
  //        return b;
  //    combineCommonParents(mergedParents);
  //    if (mergeCache != null) mergeCache.put(a, b, M);
  //    return M;

        return Option<PredictionContext>.None
    }

    protected static func combineCommonParents (parents: Array<Option<PredictionContext>>): Unit {
  //    Map<PredictionContext, PredictionContext> uniqueParents = new HashMap<PredictionContext, PredictionContext>();
  //    for (int p = 0; p < parents.length; p++) {
  //        PredictionContext parent = parents[p];
  //        if (!uniqueParents.containsKey(parent)) {
  //            uniqueParents.put(parent, parent);
  //    for (int p = 0; p < parents.length; p++) {
  //        parents[p] = uniqueParents.get(parents[p]);

        
    }

    public static func toDOTString (context: Option<PredictionContext>): String {
  //    if (context == null) return "";
  //    StringBuilder buf = new StringBuilder();
  //    buf.append("digraph G {\n");
  //    buf.append("rankdir=LR;\n");
  //    List<PredictionContext> nodes = getAllContextNodes(context);
  //    Collections.sort(nodes, new Comparator<PredictionContext>(){
  //        
  //        @Override()
  //        public int compare(PredictionContext o1, PredictionContext o2) {
  //            return o1.id - o2.id;
  //    });
  //    for (PredictionContext current : nodes) {
  //        if (current instanceof SingletonPredictionContext) {
  //            String s = String.valueOf(current.id);
  //            buf.append("  s").append(s);
  //            String returnState = String.valueOf(current.getReturnState(0));
  //            if (current instanceof EmptyPredictionContext) returnState = "$";
  //            buf.append(" [label=\"").append(returnState).append("\"];\n");
  //            continue;
  //        ArrayPredictionContext arr = (ArrayPredictionContext)current;
  //        buf.append("  s").append(arr.id);
  //        buf.append(" [shape=box, label=\"");
  //        buf.append("[");
  //        boolean first = true;
  //        for (int inv : arr.returnStates) {
  //            if (!first) buf.append(", ");
  //            if (inv == EMPTY_RETURN_STATE) buf.append("$"); else buf.append(inv);
  //            first = false;
  //        buf.append("]");
  //        buf.append("\"];\n");
  //    for (PredictionContext current : nodes) {
  //        if (current == EMPTY) continue;
  //        for (int i = 0; i < current.size(); i++) {
  //            if (current.getParent(i) == null) continue;
  //            String s = String.valueOf(current.id);
  //            buf.append("  s").append(s);
  //            buf.append("->");
  //            buf.append("s");
  //            buf.append(current.getParent(i).id);
  //            if (current.size() > 1) buf.append(" [label=\"parent[" + i + "]\"];\n"); else buf.append(";\n");
  //    buf.append("}\n");
  //    return buf.toString();

        return ""
    }

    public static func getCachedContext (context: Option<PredictionContext>, contextCache: PredictionContextCache, visited: IdentityHashMap<Option<PredictionContext>, Option<PredictionContext>>): Option<PredictionContext> {
  //    if (context.isEmpty()) {
  //        return context;
  //    PredictionContext existing = visited.get(context);
  //    if (existing != null) {
  //        return existing;
  //    existing = contextCache.get(context);
  //    if (existing != null) {
  //        visited.put(context, existing);
  //        return existing;
  //    boolean changed = false;
  //    PredictionContext[] parents = new PredictionContext[context.size()];
  //    for (int i = 0; i < parents.length; i++) {
  //        PredictionContext parent = getCachedContext(context.getParent(i), contextCache, visited);
  //        if (changed || parent != context.getParent(i)) {
  //            if (!changed) {
  //                parents = new PredictionContext[context.size()];
  //                for (int j = 0; j < context.size(); j++) {
  //                    parents[j] = context.getParent(j);
  //                changed = true;
  //            parents[i] = parent;
  //    if (!changed) {
  //        contextCache.add(context);
  //        visited.put(context, context);
  //        return context;
  //    PredictionContext updated;
  //    if (parents.length == 0) {
  //        updated = EMPTY;
  //    } else if (parents.length == 1) {
  //        updated = SingletonPredictionContext.create(parents[0], context.getReturnState(0));
  //    } else {
  //        ArrayPredictionContext arrayPredictionContext = (ArrayPredictionContext)context;
  //        updated = new ArrayPredictionContext(parents, arrayPredictionContext.returnStates);
  //    contextCache.add(updated);
  //    visited.put(updated, updated);
  //    visited.put(context, updated);
  //    return updated;

        return Option<PredictionContext>.None
    }

    public static func getAllContextNodes (context: Option<PredictionContext>): List<Option<PredictionContext>> {
  //    List<PredictionContext> nodes = new ArrayList<PredictionContext>();
  //    Map<PredictionContext, PredictionContext> visited = new IdentityHashMap<PredictionContext, PredictionContext>();
  //    getAllContextNodes_(context, nodes, visited);
  //    return nodes;

        return List<Option<PredictionContext>>()
    }

    public static func getAllContextNodes_ (context: Option<PredictionContext>, nodes: List<Option<PredictionContext>>, visited: Map<Option<PredictionContext>, Option<PredictionContext>>): Unit {
  //    if (context == null || visited.containsKey(context)) return;
  //    visited.put(context, context);
  //    nodes.add(context);
  //    for (int i = 0; i < context.size(); i++) {
  //        getAllContextNodes_(context.getParent(i), nodes, visited);

        
    }

    public open func toString (recog: Recognizer<T, T>): String {
  //    return toString();

        return ""
    }

    public open func toStrings (recognizer: Recognizer<T, T>, currentState: Int32): Array<String> {
  //    return toStrings(recognizer, EMPTY, currentState);

        return Array<String>()
    }

    public open func toStrings (recognizer: Recognizer<T, T>, stop: Option<PredictionContext>, currentState: Int32): Array<String> {
  //    List<String> result = new ArrayList<String>();
  //    outer: for (int perm = 0; ; perm++) {
  //        int offset = 0;
  //        boolean last = true;
  //        PredictionContext p = this;
  //        int stateNumber = currentState;
  //        StringBuilder localBuffer = new StringBuilder();
  //        localBuffer.append("[");
  //        while (!p.isEmpty() && p != stop) {
  //            int index = 0;
  //            if (p.size() > 0) {
  //                int bits = 1;
  //                while ((1 << bits) < p.size()) {
  //                    bits++;
  //                int mask = (1 << bits) - 1;
  //                index = (perm >> offset) & mask;
  //                last &= index >= p.size() - 1;
  //                if (index >= p.size()) {
  //                    continue outer;
  //                offset += bits;
  //            if (recognizer != null) {
  //                if (localBuffer.length() > 1) {
  //                    localBuffer.append(' ');
  //                ATN atn = recognizer.getATN();
  //                ATNState s = atn.states.get(stateNumber);
  //                String ruleName = recognizer.getRuleNames()[s.ruleIndex];
  //                localBuffer.append(ruleName);
  //            } else if (p.getReturnState(index) != EMPTY_RETURN_STATE) {
  //                if (!p.isEmpty()) {
  //                    if (localBuffer.length() > 1) {
  //                        localBuffer.append(' ');
  //                    localBuffer.append(p.getReturnState(index));
  //            stateNumber = p.getReturnState(index);
  //            p = p.getParent(index);
  //        localBuffer.append("]");
  //        result.add(localBuffer.toString());
  //        if (last) {
  //            break;
  //    return result.toArray(new String[0]);

        return Array<String>()
    }

    public init() {}
}


