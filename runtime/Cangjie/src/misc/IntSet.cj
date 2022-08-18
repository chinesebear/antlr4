package default

from std import collection.*

public interface IntSet {

    func add (el: Int32): Unit 

    func addAll (set: Option<IntSet>): Option<IntSet> 

    func and (a: Option<IntSet>): Option<IntSet> 

    func complement (elements: Option<IntSet>): Option<IntSet> 

    func or (a: Option<IntSet>): Option<IntSet> 

    func subtract (a: Option<IntSet>): Option<IntSet> 

    func sizeFunc (): Int32 

    func isNil (): Bool 

    func equals (obj: Object): Bool 

    func contains (el: Int32): Bool 

    func remove (el: Int32): Unit 

    func toList (): List<Integer> 

    func toString (): String 

}


