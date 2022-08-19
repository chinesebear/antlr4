package default

from std import io.*
// import java.text.SimpleDateFormat;
from std import collection.*
// import java.util.Date;

open public class LogManager {

    protected var records: List<LogManagerRecord> = List<LogManagerRecord>()
    
    public open func log (component: String, msg: String): Unit {
  //    LogManagerRecord r = new LogManagerRecord();
  //    r.component = component;
  //    r.msg = msg;
  //    if (records == null) {
  //        records = new ArrayList<LogManagerRecord>();
  //    records.add(r);

        
    }

    public open func log (msg: String): Unit {
  //    log(null, msg);

        
    }

    public open func save (filename: String): Unit {
  //    FileWriter fw = new FileWriter(filename);
  //    BufferedWriter bw = new BufferedWriter(fw);
  //    try {
  //        bw.write(toString());
  //    } finally {
  //        bw.close();

        
    }

    public open func save (): String {
  //    String dir = ".";
  //    String defaultFilename = dir + "/antlr-" + new SimpleDateFormat("yyyy-MM-dd-HH.mm.ss").format(new Date()) + ".log";
  //    save(defaultFilename);
  //    return defaultFilename;

        return ""
    }

    public open func toString (): String {
  //    if (records == null) return "";
  //    String nl = System.getProperty("line.separator");
  //    StringBuilder buf = new StringBuilder();
  //    for (LogManagerRecord r : records) {
  //        buf.append(r);
  //        buf.append(nl);
  //    return buf.toString();

        return ""
    }

    public static func `main` (args: Array<String>): Unit {
  //    LogManager mgr = new LogManager();
  //    mgr.log("atn", "test msg");
  //    mgr.log("dfa", "test msg 2");
  //    System.out.println(mgr);
  //    mgr.save();

        
    }

    public init() {}
}

public class LogManagerRecord {
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
  //    StringBuilder buf = new StringBuilder();
  //    buf.append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS").format(new Date(timestamp)));
  //    buf.append(" ");
  //    buf.append(component);
  //    buf.append(" ");
  //    buf.append(location.getFileName());
  //    buf.append(":");
  //    buf.append(location.getLineNumber());
  //    buf.append(" ");
  //    buf.append(msg);
  //    return buf.toString();

        return ""
    }

}



