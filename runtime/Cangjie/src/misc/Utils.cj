package default

from std import io.*
from std import collection.*
// import java.util.Collection;
// import java.util.Iterator;

open public class Utils {

    public static func join<T> (iter: Option<Iterator<T>>, separator: String): String {
  //    StringBuilder buf = new StringBuilder();
  //    while (iter.hasNext()) {
  //        buf.append(iter.next());
  //        if (iter.hasNext()) {
  //            buf.append(separator);
  //    return buf.toString();

        return ""
    }

    public static func join<T> (array: Array<T>, separator: String): String {
  //    StringBuilder builder = new StringBuilder();
  //    for (int i = 0; i < array.length; i++) {
  //        builder.append(array[i]);
  //        if (i < array.length - 1) {
  //            builder.append(separator);
  //    return builder.toString();

        return ""
    }

    public static func numNonnull (data: Array<Object>): Int32 {
  //    int n = 0;
  //    if (data == null) return n;
  //    for (Object o : data) {
  //        if (o != null) n++;
  //    return n;

        return 0
    }

    public static func removeAllElements<T> (data: Collection<T>, value: T): Unit {
  //    if (data == null) return;
  //    while (data.contains(value)) data.remove(value);

        
    }

    public static func escapeWhitespace (s: String, escapeSpaces: Bool): String {
  //    StringBuilder buf = new StringBuilder();
  //    for (char c : s.toCharArray()) {
  //        if (c == ' ' && escapeSpaces) buf.append('\u00b7'); else if (c == '\t') buf.append("\\t"); else if (c == '\n') buf.append("\\n"); else if (c == '\r') buf.append("\\r"); else buf.append(c);
  //    return buf.toString();

        return ""
    }

    public func writeFile (fileName: String, content: String): Unit {
  //    writeFile(fileName, content, null);

        
    }

    public func writeFile (fileName: String, content: String, encoding: String): Unit {
  //    File f = new File(fileName);
  //    FileOutputStream fos = new FileOutputStream(f);
  //    OutputStreamWriter osw;
  //    if (encoding != null) {
  //        osw = new OutputStreamWriter(fos, encoding);
  //    } else {
  //        osw = new OutputStreamWriter(fos);
  //    try {
  //        osw.write(content);
  //    } finally {
  //        osw.close();

        
    }

    public func readFile (fileName: String): Array<Char> {
  //    return readFile(fileName, null);

        return Array<Char>()
    }

    public func readFile (fileName: String, encoding: String): Array<Char> {
  //    File f = new File(fileName);
  //    int size = (int)f.length();
  //    InputStreamReader isr;
  //    FileInputStream fis = new FileInputStream(fileName);
  //    if (encoding != null) {
  //        isr = new InputStreamReader(fis, encoding);
  //    } else {
  //        isr = new InputStreamReader(fis);
  //    char[] data = null;
  //    try {
  //        data = new char[size];
  //        int n = isr.read(data);
  //        if (n < data.length) {
  //            data = Arrays.copyOf(data, n);
  //    } finally {
  //        isr.close();
  //    return data;

        return Array<Char>()
    }

    public static func toMap (keys: Array<String>): Map<String, Integer> {
  //    Map<String, Integer> m = new HashMap<String, Integer>();
  //    for (int i = 0; i < keys.length; i++) {
  //        m.put(keys[i], i);
  //    return m;

        return Map<String, Integer>()
    }

    public static func toCharArray (data: IntegerList): Array<Char> {
  //    if (data == null) return null;
  //    return data.toCharArray();

        return Array<Char>()
    }

    public static func toSet (bits: BitSet): IntervalSet {
  //    IntervalSet s = new IntervalSet();
  //    int i = bits.nextSetBit(0);
  //    while (i >= 0) {
  //        s.add(i);
  //        i = bits.nextSetBit(i + 1);
  //    return s;

        return IntervalSet()
    }

    public static func expandTabs (s: String, tabSize: Int32): String {
  //    if (s == null) return null;
  //    StringBuilder buf = new StringBuilder();
  //    int col = 0;
  //    for (int i = 0; i < s.length(); i++) {
  //        char c = s.charAt(i);
  //        switch (c) {
  //        case '\n': 
  //            col = 0;
  //            buf.append(c);
  //            break;
  //        
  //        case '\t': 
  //            int n = tabSize - col % tabSize;
  //            col += n;
  //            buf.append(spaces(n));
  //            break;
  //        
  //        default: 
  //            col++;
  //            buf.append(c);
  //            break;
  //        
  //    return buf.toString();

        return ""
    }

    public static func spaces (n: Int32): String {
  //    return sequence(n, " ");

        return ""
    }

    public static func newlines (n: Int32): String {
  //    return sequence(n, "\n");

        return ""
    }

    public static func sequence (n: Int32, s: String): String {
  //    StringBuilder buf = new StringBuilder();
  //    for (int sp = 1; sp <= n; sp++) buf.append(s);
  //    return buf.toString();

        return ""
    }

    public static func count (s: String, x: Char): Int32 {
  //    int n = 0;
  //    for (int i = 0; i < s.length(); i++) {
  //        if (s.charAt(i) == x) {
  //            n++;
  //    return n;

        return 0
    }

    public init() {}
}


