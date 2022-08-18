package misc

// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.Vocabulary;
// import org.antlr.v4.runtime.VocabularyImpl;
from std import collection.*
// import java.util.Iterator;

open public class IntervalSet <: IntSet {

    public static let COMPLETE_CHAR_SET: IntervalSet = IntervalSet()
    
    public static let EMPTY_SET: IntervalSet = IntervalSet()
    
    protected var intervals: List<Interval> = List<Interval>()
    
    protected var readonly: Bool = true
    
    public init (intervals: List<Interval>){

    }

    public init (set: IntervalSet){

    }

    public init (els: Array<Int32>){

    }

    public static func of (a: Int32): IntervalSet {
        return IntervalSet()
    }

    public static func of (a: Int32, b: Int32): IntervalSet {
        return IntervalSet()
    }

    public open func clear (): Unit {
        
    }

    public open func add (el: Int32): Unit {
        
    }

    public open func add (a: Int32, b: Int32): Unit {
        
    }

    protected open func add (addition: Interval): Unit {
        
    }

    public static func or (sets: Array<IntervalSet>): IntervalSet {
        return IntervalSet()
    }

    public open func addAll (set: IntSet): IntervalSet {
        return IntervalSet()
    }

    public open func complement (minElement: Int32, maxElement: Int32): IntervalSet {
        return IntervalSet()
    }

    public open func complement (vocabulary: IntSet): IntervalSet {
        return IntervalSet()
    }

    public open func subtract (a: IntSet): IntervalSet {
        return IntervalSet()
    }

    public static func subtract (left: IntervalSet, right: IntervalSet): IntervalSet {
        return IntervalSet()
    }

    public open func or (a: IntSet): IntervalSet {
        return IntervalSet()
    }

    public open func and (other: IntSet): IntervalSet {
        return IntervalSet()
    }

    public open func contains (el: Int32): Bool {
        return true
    }

    public open func isNil (): Bool {
        return true
    }

    public open func getMaxElement (): Int32 {
        return 0
    }

    public open func getMinElement (): Int32 {
        return 0
    }

    public open func getIntervals (): List<Interval> {
        return List<Interval>()
    }

    public open func hashCode (): Int32 {
        return 0
    }

    public open func equals (obj: Object): Bool {
        return true
    }

    public open func toString (): String {
        return ""
    }

    public open func toString (elemAreChar: Bool): String {
        return ""
    }

    public open func toString (tokenNames: Array<String>): String {
        return ""
    }

    public open func toString (vocabulary: Vocabulary): String {
        return ""
    }

    protected open func elementName (tokenNames: Array<String>, a: Int32): String {
        return ""
    }

    protected open func elementName (vocabulary: Vocabulary, a: Int32): String {
        return ""
    }

    public open func sizeFunc (): Int32 {
        return 0
    }

    public open func toIntegerList (): IntegerList {
        return IntegerList()
    }

    public open func toList (): List<Integer> {
        return List<Integer>()
    }

    public open func toSet (): Set<Integer> {
        return Set<Integer>()
    }

    public open func get (i: Int32): Int32 {
        return 0
    }

    public open func toArray (): Array<Int32> {
        return Array<Int32>()
    }

    public open func remove (el: Int32): Unit {
        
    }

    public open func isReadonly (): Bool {
        return true
    }

    public open func setReadonly (readonly: Bool): Unit {
        
    }

    public init() {}
}


