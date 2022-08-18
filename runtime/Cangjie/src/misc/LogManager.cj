package misc

from std import io.*
// import java.text.SimpleDateFormat;
from std import collection.*
// import java.util.Date;

open public class LogManager {

    protected var records: List<Record> = List<Record>()
    
    public open func log (component: String, msg: String): Unit {
        
    }

    public open func log (msg: String): Unit {
        
    }

    public open func save (filename: String): Unit {
        
    }

    public open func save (): String {
        return ""
    }

    public open func toString (): String {
        return ""
    }

    public static func `main` (args: Array<String>): Unit {
        
    }

    public init() {}
}

class LogManagerRecord {
    var class_out: LogManager
    public init(out: LogManager) {
        class_out = out
    }
    public init() {
        class_out = LogManager()
    }
    var timestamp: Int64 = 0
    
    var location: StackTraceElement = StackTraceElement()
    
    var component: String = ""
    
    var msg: String = ""
    
    public func toString (): String {
        return ""
    }

}



