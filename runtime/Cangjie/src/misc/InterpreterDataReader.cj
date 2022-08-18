package default

// import org.antlr.v4.runtime.Vocabulary;
// import org.antlr.v4.runtime.VocabularyImpl;
// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.atn.ATNDeserializer;
// import org.antlr.v4.runtime.dfa.DFA;
// import java.util.Collection;
from std import collection.*
from std import io.*

open public class InterpreterDataReader {

    public static func parseFile (fileName: String): InterpreterDataReaderInterpreterData {
  //    InterpreterDataReaderInterpreterData result = new InterpreterDataReaderInterpreterData();
  //    result.ruleNames = new ArrayList<String>();
  //    try (final BufferedReader br = new BufferedReader(new FileReader(fileName));) {
  //        String line;
  //        List<String> literalNames = new ArrayList<String>();
  //        List<String> symbolicNames = new ArrayList<String>();
  //        line = br.readLine();
  //        if (!line.equals("token literal names:")) throw new RuntimeException("Unexpected data entry");
  //        while ((line = br.readLine()) != null) {
  //            if (line.isEmpty()) break;
  //            literalNames.add(line.equals("null") ? "" : line);
  //        line = br.readLine();
  //        if (!line.equals("token symbolic names:")) throw new RuntimeException("Unexpected data entry");
  //        while ((line = br.readLine()) != null) {
  //            if (line.isEmpty()) break;
  //            symbolicNames.add(line.equals("null") ? "" : line);
  //        result.vocabulary = new VocabularyImpl(literalNames.toArray(new String[0]), symbolicNames.toArray(new String[0]));
  //        line = br.readLine();
  //        if (!line.equals("rule names:")) throw new RuntimeException("Unexpected data entry");
  //        while ((line = br.readLine()) != null) {
  //            if (line.isEmpty()) break;
  //            result.ruleNames.add(line);
  //        line = br.readLine();
  //        if (line.equals("channel names:")) {
  //            result.channels = new ArrayList<String>();
  //            while ((line = br.readLine()) != null) {
  //                if (line.isEmpty()) break;
  //                result.channels.add(line);
  //            line = br.readLine();
  //            if (!line.equals("mode names:")) throw new RuntimeException("Unexpected data entry");
  //            result.modes = new ArrayList<String>();
  //            while ((line = br.readLine()) != null) {
  //                if (line.isEmpty()) break;
  //                result.modes.add(line);
  //        line = br.readLine();
  //        if (!line.equals("atn:")) throw new RuntimeException("Unexpected data entry");
  //        line = br.readLine();
  //        String[] elements = line.substring(1, line.length() - 1).split(",");
  //        int[] serializedATN = new int[elements.length];
  //        for (int i = 0; i < elements.length; ++i) {
  //            serializedATN[i] = Integer.parseInt(elements[i].trim());
  //        ATNDeserializer deserializer = new ATNDeserializer();
  //        result.atn = deserializer.deserialize(serializedATN);
  //    } catch (java.io.IOException e) {
  //    return result;

        return InterpreterDataReaderInterpreterData()
    }

    public init() {}
}

public class InterpreterDataReaderInterpreterData {
    var class_out: InterpreterDataReader
    public init(out: InterpreterDataReader) {
        class_out = out
    }
    public init() {
        class_out = InterpreterDataReader()
    }
    var atn: ATN = ATN()
    
    var vocabulary: Option<Vocabulary> = Option<Vocabulary>.None
    
    var ruleNames: List<String> = List<String>()
    
    var channels: List<String> = List<String>()
    
    var modes: List<String> = List<String>()
    
}



