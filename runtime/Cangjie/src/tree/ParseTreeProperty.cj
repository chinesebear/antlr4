package default

from std import collection.*

open public class ParseTreeProperty<V> {

    protected var annotations: Map<Option<ParseTree>, V> = Map<Option<ParseTree>, V>()
    
    public open func get (node: Option<ParseTree>): V {
  //    return annotations.get(node);

        return V()
    }

    public open func put (node: Option<ParseTree>, value: V): Unit {
  //    annotations.put(node, value);

        
    }

    public open func removeFrom (node: Option<ParseTree>): V {
  //    return annotations.remove(node);

        return V()
    }

    public init() {}
}


