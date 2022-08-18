package misc

from std import collection.*

public interface IntSet {

    func add (el: Int32): Unit 

    func addAll (set: IntSet): IntSet 

    func and (a: IntSet): IntSet 

    func complement (elements: IntSet): IntSet 

    func or (a: IntSet): IntSet 

    func subtract (a: IntSet): IntSet 

    func sizeFunc (): Int32 

    func isNil (): Bool 

    func equals (obj: Object): Bool 

    func contains (el: Int32): Bool 

    func remove (el: Int32): Unit 

    func toList (): List<Integer> 

    func toString (): String 

}


