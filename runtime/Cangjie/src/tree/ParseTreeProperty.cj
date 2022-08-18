package tree

from std import collection.*

open public class ParseTreeProperty<V> {

    protected var annotations: Map<ParseTree, V> = Map<ParseTree, V>()
    
    public open func get (node: ParseTree): V {
        return V()
    }

    public open func put (node: ParseTree, value: V): Unit {
        
    }

    public open func removeFrom (node: ParseTree): V {
        return V()
    }

    public init() {}
}


