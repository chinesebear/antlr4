package default

// import org.antlr.v4.runtime.misc.AbstractEqualityComparator;
from std import collection.*
// import java.util.Collection;
// import java.util.Iterator;

open public class ATNConfigSet <: Set<ATNConfig> {

    protected var readonly: Bool = true
    
    public var configLookup: ATNConfigSetAbstractConfigHashSet = ATNConfigSetAbstractConfigHashSet()
    
    public let configs: ArrayList<ATNConfig> = ArrayList<ATNConfig>()
    
    public var uniqueAlt: Int32 = 0
    
    protected var conflictingAlts: BitSet = BitSet()
    
    public var hasSemanticContext: Bool = true
    
    public var dipsIntoOuterContext: Bool = true
    
    public let fullCtx: Bool = true
    
    private var cachedHashCode: Int32 = -1
    
    public open func add (config: ATNConfig): Bool {
  //    return add(config, null);

        return true
    }

    public open func add (config: ATNConfig, mergeCache: DoubleKeyMap<Option<PredictionContext>, Option<PredictionContext>, Option<PredictionContext>>): Bool {
  //    if (readonly) throw new IllegalStateException("This set is readonly");
  //    if (config.semanticContext != SemanticContext.NONE) {
  //        hasSemanticContext = true;
  //    if (config.getOuterContextDepth() > 0) {
  //        dipsIntoOuterContext = true;
  //    ATNConfig existing = configLookup.getOrAdd(config);
  //    if (existing == config) {
  //        cachedHashCode = -1;
  //        configs.add(config);
  //        return true;
  //    boolean rootIsWildcard = !fullCtx;
  //    PredictionContext merged = PredictionContext.merge(existing.context, config.context, rootIsWildcard, mergeCache);
  //    existing.reachesIntoOuterContext = Math.max(existing.reachesIntoOuterContext, config.reachesIntoOuterContext);
  //    if (config.isPrecedenceFilterSuppressed()) {
  //        existing.setPrecedenceFilterSuppressed(true);
  //    existing.context = merged;
  //    return true;

        return true
    }

    public open func elements (): List<ATNConfig> {
  //    return configs;

        return List<ATNConfig>()
    }

    public open func getStates (): Set<Option<ATNState>> {
  //    Set<ATNState> states = new HashSet<ATNState>();
  //    for (ATNConfig c : configs) {
  //        states.add(c.state);
  //    return states;

        return Set<Option<ATNState>>()
    }

    public open func getAlts (): BitSet {
  //    BitSet alts = new BitSet();
  //    for (ATNConfig config : configs) {
  //        alts.set(config.alt);
  //    return alts;

        return BitSet()
    }

    public open func getPredicates (): List<Option<SemanticContext>> {
  //    List<SemanticContext> preds = new ArrayList<SemanticContext>();
  //    for (ATNConfig c : configs) {
  //        if (c.semanticContext != SemanticContext.NONE) {
  //            preds.add(c.semanticContext);
  //    return preds;

        return List<Option<SemanticContext>>()
    }

    public open func get (i: Int32): ATNConfig {
  //    return configs.get(i);

        return ATNConfig()
    }

    public open func optimizeConfigs (interpreter: Option<ATNSimulator>): Unit {
  //    if (readonly) throw new IllegalStateException("This set is readonly");
  //    if (configLookup.isEmpty()) return;
  //    for (ATNConfig config : configs) {
  //        config.context = interpreter.getCachedContext(config.context);

        
    }

    public open func addAll (coll: Collection<ATNConfig>): Bool {
  //    for (ATNConfig c : coll) add(c);
  //    return false;

        return true
    }

    public open func equals (o: Object): Bool {
  //    if (o == this) {
  //        return true;
  //    } else if (!(o instanceof ATNConfigSet)) {
  //        return false;
  //    ATNConfigSet other = (ATNConfigSet)o;
  //    boolean same = configs != null && configs.equals(other.configs) && this.fullCtx == other.fullCtx && this.uniqueAlt == other.uniqueAlt && this.conflictingAlts == other.conflictingAlts && this.hasSemanticContext == other.hasSemanticContext && this.dipsIntoOuterContext == other.dipsIntoOuterContext;
  //    return same;

        return true
    }

    public open func hashCode (): Int32 {
  //    if (isReadonly()) {
  //        if (cachedHashCode == -1) {
  //            cachedHashCode = configs.hashCode();
  //        return cachedHashCode;
  //    return configs.hashCode();

        return 0
    }

    public open func size (): Int32 {
  //    return configs.size();

        return 0
    }

    public open func isEmpty (): Bool {
  //    return configs.isEmpty();

        return true
    }

    public open func contains (o: Object): Bool {
  //    if (configLookup == null) {
  //        throw new UnsupportedOperationException("This method is not implemented for readonly sets.");
  //    return configLookup.contains(o);

        return true
    }

    public open func containsFast (obj: ATNConfig): Bool {
  //    if (configLookup == null) {
  //        throw new UnsupportedOperationException("This method is not implemented for readonly sets.");
  //    return configLookup.containsFast(obj);

        return true
    }

    public open func iterator (): Iterator<ATNConfig> {
  //    return configs.iterator();

        return Iterator<ATNConfig>()
    }

    public open func clear (): Unit {
  //    if (readonly) throw new IllegalStateException("This set is readonly");
  //    configs.clear();
  //    cachedHashCode = -1;
  //    configLookup.clear();

        
    }

    public open func isReadonly (): Bool {
  //    return readonly;

        return true
    }

    public open func setReadonly (readonly: Bool): Unit {
  //    this.readonly = readonly;
  //    configLookup = null;

        
    }

    public open func toString (): String {
  //    StringBuilder buf = new StringBuilder();
  //    buf.append(elements().toString());
  //    if (hasSemanticContext) buf.append(",hasSemanticContext=").append(hasSemanticContext);
  //    if (uniqueAlt != ATN.INVALID_ALT_NUMBER) buf.append(",uniqueAlt=").append(uniqueAlt);
  //    if (conflictingAlts != null) buf.append(",conflictingAlts=").append(conflictingAlts);
  //    if (dipsIntoOuterContext) buf.append(",dipsIntoOuterContext");
  //    return buf.toString();

        return ""
    }

    public open func toArray (): Array<ATNConfig> {
  //    return configLookup.toArray();

        return Array<ATNConfig>()
    }

    public func toArray (a: Array<T>): Array<T> {
  //    return configLookup.toArray(a);

        return Array<T>()
    }

    public open func remove (o: Object): Bool {
  //    throw new UnsupportedOperationException();

        return true
    }

    public open func containsAll (c: Collection<T>): Bool {
  //    throw new UnsupportedOperationException();

        return true
    }

    public open func retainAll (c: Collection<T>): Bool {
  //    throw new UnsupportedOperationException();

        return true
    }

    public open func removeAll (c: Collection<T>): Bool {
  //    throw new UnsupportedOperationException();

        return true
    }

    public init() {}
}

public class ATNConfigSetConfigHashSet <: AbstractConfigHashSet {
    var class_out: ATNConfigSet
    public init(out: ATNConfigSet) {
        class_out = out
    }
    public init() {
        class_out = ATNConfigSet()
    }
}


public class ATNConfigSetConfigEqualityComparator <: AbstractEqualityComparator<ATNConfig> {
    var class_out: ATNConfigSet
    public init(out: ATNConfigSet) {
        class_out = out
    }
    public init() {
        class_out = ATNConfigSet()
    }
    public static let INSTANCE: ATNConfigSetConfigEqualityComparator = ATNConfigSetConfigEqualityComparator()
    
    public func hashCode (o: ATNConfig): Int32 {
  //    int hashCode = 7;
  //    hashCode = 31 * hashCode + o.state.stateNumber;
  //    hashCode = 31 * hashCode + o.alt;
  //    hashCode = 31 * hashCode + o.semanticContext.hashCode();
  //    return hashCode;

        return 0
    }

    public func equals (a: ATNConfig, b: ATNConfig): Bool {
  //    if (a == b) return true;
  //    if (a == null || b == null) return false;
  //    return a.state.stateNumber == b.state.stateNumber && a.alt == b.alt && a.semanticContext.equals(b.semanticContext);

        return true
    }

}


public class ATNConfigSetAbstractConfigHashSet <: Array2DHashSet<ATNConfig> {
    var class_out: ATNConfigSet
    public init(out: ATNConfigSet) {
        class_out = out
    }
    public init() {
        class_out = ATNConfigSet()
    }
    protected func asElementType (o: Object): ATNConfig {
  //    if (!(o instanceof ATNConfig)) {
  //        return null;
  //    return (ATNConfig)o;

        return ATNConfig()
    }

    protected func createBuckets (capacity: Int32): Array<Array<ATNConfig>> {
  //    return new ATNConfig[capacity][];

        return Array<Array<ATNConfig>>()
    }

    protected func createBucket (capacity: Int32): Array<ATNConfig> {
  //    return new ATNConfig[capacity];

        return Array<ATNConfig>()
    }

}



