package default


public interface IntStream {

    prop public static let EOF: Int32 {
        get() { -1 }
        set(value) { }
    }
    prop public static let UNKNOWN_SOURCE_NAME: String {
        get() { "<unknown>" }
        set(value) { }
    }
    func consume (): Unit 

    func LA (i: Int32): Int32 

    func mark (): Int32 

    func release (marker: Int32): Unit 

    func indexFunc (): Int32 

    func seek (index: Int32): Unit 

    func sizeFunc (): Int32 

    func getSourceName (): String 

}


