package misc

from std import io.*
// import java.nio.charset.StandardCharsets;
// import java.nio.file.Files;
// import java.nio.file.Paths;
// import java.util.*;

open public class IntegerList {

    private static var EMPTY_DATA: Array<Int32> = Array<Int32>()
    
    private static let INITIAL_SIZE: Int32 = 4
    
    private static let MAX_ARRAY_SIZE: Int32 = 0
    
    private var data: Array<Int32> = Array<Int32>()
    
    private var size: Int32 = 0
    
    public init (){

    }

    public init (capacity: Int32){

    }

    public init (list: IntegerList){

    }

    public init (list: Collection<Integer>){

    }

    public open func add (value: Int32): Unit {
        
    }

    public open func addAll (array: Array<Int32>): Unit {
        
    }

    public open func addAll (list: IntegerList): Unit {
        
    }

    public open func addAll (list: Collection<Integer>): Unit {
        
    }

    public open func get (index: Int32): Int32 {
        return 0
    }

    public open func contains (value: Int32): Bool {
        return true
    }

    public open func set (index: Int32, value: Int32): Int32 {
        return 0
    }

    public open func removeAt (index: Int32): Int32 {
        return 0
    }

    public open func removeRange (fromIndex: Int32, toIndex: Int32): Unit {
        
    }

    public open func isEmpty (): Bool {
        return true
    }

    public open func sizeFunc (): Int32 {
        return 0
    }

    public open func trimToSize (): Unit {
        
    }

    public open func clear (): Unit {
        
    }

    public open func toArray (): Array<Int32> {
        return Array<Int32>()
    }

    public open func sort (): Unit {
        
    }

    public open func equals (o: Object): Bool {
        return true
    }

    public open func hashCode (): Int32 {
        return 0
    }

    public open func toString (): String {
        return ""
    }

    public open func binarySearch (key: Int32): Int32 {
        return 0
    }

    public open func binarySearch (fromIndex: Int32, toIndex: Int32, key: Int32): Int32 {
        return 0
    }

    private func ensureCapacity (capacity: Int32): Unit {
        
    }

    public open func toCharArray (): Array<Char> {
        return Array<Char>()
    }

    private func charArraySize (): Int32 {
        return 0
    }

}


