package default


open public class RuntimeMetaData {

    public static let VERSION: String = "4.10.1"
    
    public static func getRuntimeVersion (): String {
        return ""
    }

    public static func checkVersion (generatingToolVersion: String, compileTimeVersion: String): Unit {
        
    }

    public static func getMajorMinorVersion (version: String): String {
        return ""
    }

    public init() {}
}


