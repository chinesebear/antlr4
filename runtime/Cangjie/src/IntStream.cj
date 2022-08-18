package default



public let EOF: Int32 = -1
public let UNKNOWN_SOURCE_NAME: String = "<unknown>"

public interface IntStream {
    func consume (): Unit 

    func LA (i: Int32): Int32 

    func mark (): Int32 

    func release (marker: Int32): Unit 

    func indexFunc (): Int32 

    func seek (index: Int32): Unit 

    func sizeFunc (): Int32 

    func getSourceName (): String 

}


