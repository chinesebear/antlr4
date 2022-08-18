package default

// import org.antlr.v4.runtime.misc.Utils;
from std import io.*

//@Deprecated
open public class ANTLRFileStream <: ANTLRInputStream {

    protected var fileName: String = ""
    
    public init (fileName: String){

    }

    public init (fileName: String, encoding: String){

    }

    public open func load (fileName: String, encoding: String): Unit {
        
    }

    public open override func getSourceName (): String {
        return ""
    }

    public init() {}
}


