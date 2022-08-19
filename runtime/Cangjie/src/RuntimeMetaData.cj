package default


open public class RuntimeMetaData {

    public static let VERSION: String = "4.10.1"
    
    public static func getRuntimeVersion (): String {
  //    return VERSION;

        return ""
    }

    public static func checkVersion (generatingToolVersion: String, compileTimeVersion: String): Unit {
  //    String runtimeVersion = VERSION;
  //    boolean runtimeConflictsWithGeneratingTool = false;
  //    boolean runtimeConflictsWithCompileTimeTool = false;
  //    if (generatingToolVersion != null) {
  //        runtimeConflictsWithGeneratingTool = !runtimeVersion.equals(generatingToolVersion) && !getMajorMinorVersion(runtimeVersion).equals(getMajorMinorVersion(generatingToolVersion));
  //    runtimeConflictsWithCompileTimeTool = !runtimeVersion.equals(compileTimeVersion) && !getMajorMinorVersion(runtimeVersion).equals(getMajorMinorVersion(compileTimeVersion));
  //    if (runtimeConflictsWithGeneratingTool) {
  //        System.err.printf("ANTLR Tool version %s used for code generation does not match the current runtime version %s%n", generatingToolVersion, runtimeVersion);
  //    if (runtimeConflictsWithCompileTimeTool) {
  //        System.err.printf("ANTLR Runtime version %s used for parser compilation does not match the current runtime version %s%n", compileTimeVersion, runtimeVersion);

        
    }

    public static func getMajorMinorVersion (version: String): String {
  //    int firstDot = version.indexOf('.');
  //    int secondDot = firstDot >= 0 ? version.indexOf('.', firstDot + 1) : -1;
  //    int firstDash = version.indexOf('-');
  //    int referenceLength = version.length();
  //    if (secondDot >= 0) {
  //        referenceLength = Math.min(referenceLength, secondDot);
  //    if (firstDash >= 0) {
  //        referenceLength = Math.min(referenceLength, firstDash);
  //    return version.substring(0, referenceLength);

        return ""
    }

    public init() {}
}


