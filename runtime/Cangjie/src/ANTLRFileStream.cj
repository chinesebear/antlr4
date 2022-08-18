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

    public open override func load (fileName: String, encoding: String): Unit {
  //    data = Utils.readFile(fileName, encoding);
  //    this.n = data.length;

        
    }

    public open override func getSourceName (): String {
  //    return fileName;

        return ""
    }

    public init() {}
}


