package atn

// import org.antlr.v4.runtime.misc.AbstractEqualityComparator;
from std import collection.*
// import java.util.Collection;
// import java.util.Iterator;
import misc.*

open public class ATNConfigSet <: Set<ATNConfig> {

    protected var readonly: Bool = true
    
    public var configLookup: AbstractConfigHashSet = AbstractConfigHashSet()
    
    public let configs: ArrayList<ATNConfig> = ArrayList<ATNConfig>()
    
    public var uniqueAlt: Int32 = 0
    
    protected var conflictingAlts: BitSet = BitSet()
    
    public var hasSemanticContext: Bool = true
    
    public var dipsIntoOuterContext: Bool = true
    
    public let fullCtx: Bool = true
    
    private var cachedHashCode: Int32 = -1
    
    public open func add (config: ATNConfig): Bool {
        return true
    }

    public open func add (config: ATNConfig, mergeCache: DoubleKeyMap<PredictionContext, PredictionContext, PredictionContext>): Bool {
        return true
    }

    public open func elementsFunc (): List<ATNConfig> {
        return List<ATNConfig>()
    }

    public open func getStates (): Set<ATNState> {
        return Set<ATNState>()
    }

    public open func getAlts (): BitSet {
        return BitSet()
    }

    public open func getPredicates (): List<SemanticContext> {
        return List<SemanticContext>()
    }

    public open func get (i: Int32): ATNConfig {
        return ATNConfig()
    }

    public open func optimizeConfigs (interpreter: ATNSimulator): Unit {
        
    }

    public open func addAll (coll: Collection< ATNConfig>): Bool {
        return true
    }

    public open func equals (o: Object): Bool {
        return true
    }

    public open func hashCode (): Int32 {
        return 0
    }

    public open func sizeFunc (): Int32 {
        return 0
    }

    public open func isEmpty (): Bool {
        return true
    }

    public open func contains (o: Object): Bool {
        return true
    }

    public open func containsFast (obj: ATNConfig): Bool {
        return true
    }

    public open func iterator (): Iterator<ATNConfig> {
        return Iterator<ATNConfig>()
    }

    public open func clear (): Unit {
        
    }

    public open func isReadonly (): Bool {
        return true
    }

    public open func setReadonly (readonly: Bool): Unit {
        
    }

    public open func toString (): String {
        return ""
    }

    public open func toArray (): Array<ATNConfig> {
        return Array<ATNConfig>()
    }

    public open func toArray (a: Array<T>): Array<T> {
        return Array<T>()
    }

    public open func remove (o: Object): Bool {
        return true
    }

    public open func containsAll (c: Collection<T>): Bool {
        return true
    }

    public open func retainAll (c: Collection<T>): Bool {
        return true
    }

    public open func removeAll (c: Collection<T>): Bool {
        return true
    }

    public init() {}
}

class ATNConfigSetConfigHashSet <: AbstractConfigHashSet {
    var class_out: ATNConfigSet
    public init(out: ATNConfigSet) {
        class_out = out
    }
    public init() {
        class_out = ATNConfigSet()
    }
}


class ATNConfigSetConfigEqualityComparator <: AbstractEqualityComparator<ATNConfig> {
    var class_out: ATNConfigSet
    public init(out: ATNConfigSet) {
        class_out = out
    }
    public init() {
        class_out = ATNConfigSet()
    }
    public static let INSTANCE: ConfigEqualityComparator = ConfigEqualityComparator()
    
    public func hashCode (o: ATNConfig): Int32 {
        return 0
    }

    public func equals (a: ATNConfig, b: ATNConfig): Bool {
        return true
    }

}


class ATNConfigSetAbstractConfigHashSet <: Array2DHashSet<ATNConfig> {
    var class_out: ATNConfigSet
    public init(out: ATNConfigSet) {
        class_out = out
    }
    public init() {
        class_out = ATNConfigSet()
    }
    protected func asElementType (o: Object): ATNConfig {
        return ATNConfig()
    }

    protected func createBuckets (capacity: Int32): Array<Array<ATNConfig>> {
        return Array<Array<ATNConfig>>()
    }

    protected func createBucket (capacity: Int32): Array<ATNConfig> {
        return Array<ATNConfig>()
    }

}



