package default

from std import collection.*

open public class VocabularyImpl <: Vocabulary {

    private static let EMPTY_NAMES: Array<String> = Array<String>()
    
    public static let EMPTY_VOCABULARY: VocabularyImpl = VocabularyImpl()
    
    private let literalNames: Array<String> = Array<String>()
    
    private let symbolicNames: Array<String> = Array<String>()
    
    private let displayNames: Array<String> = Array<String>()
    
    private let maxTokenType: Int32 = 0
    
    public init (literalNames: Array<String>, symbolicNames: Array<String>){

    }

    public init (literalNames: Array<String>, symbolicNames: Array<String>, displayNames: Array<String>){

    }

    public static func fromTokenNames (tokenNames: Array<String>): Option<Vocabulary> {
  //    if (tokenNames == null || tokenNames.length == 0) {
  //        return EMPTY_VOCABULARY;
  //    String[] literalNames = Arrays.copyOf(tokenNames, tokenNames.length);
  //    String[] symbolicNames = Arrays.copyOf(tokenNames, tokenNames.length);
  //    for (int i = 0; i < tokenNames.length; i++) {
  //        String tokenName = tokenNames[i];
  //        if (tokenName == null) {
  //            continue;
  //        if (!tokenName.isEmpty()) {
  //            char firstChar = tokenName.charAt(0);
  //            if (firstChar == '\'') {
  //                symbolicNames[i] = null;
  //                continue;
  //            } else if (Character.isUpperCase(firstChar)) {
  //                literalNames[i] = null;
  //                continue;
  //        literalNames[i] = null;
  //        symbolicNames[i] = null;
  //    return new VocabularyImpl(literalNames, symbolicNames, tokenNames);

        return Option<Vocabulary>.None
    }

    public open func getMaxTokenType (): Int32 {
  //    return maxTokenType;

        return 0
    }

    public open func getLiteralName (tokenType: Int32): String {
  //    if (tokenType >= 0 && tokenType < literalNames.length) {
  //        return literalNames[tokenType];
  //    return null;

        return ""
    }

    public open func getSymbolicName (tokenType: Int32): String {
  //    if (tokenType >= 0 && tokenType < symbolicNames.length) {
  //        return symbolicNames[tokenType];
  //    if (tokenType == Token.EOF) {
  //        return "EOF";
  //    return null;

        return ""
    }

    public open func getDisplayName (tokenType: Int32): String {
  //    if (tokenType >= 0 && tokenType < displayNames.length) {
  //        String displayName = displayNames[tokenType];
  //        if (displayName != null) {
  //            return displayName;
  //    String literalName = getLiteralName(tokenType);
  //    if (literalName != null) {
  //        return literalName;
  //    String symbolicName = getSymbolicName(tokenType);
  //    if (symbolicName != null) {
  //        return symbolicName;
  //    return Integer.toString(tokenType);

        return ""
    }

    public open func getLiteralNames (): Array<String> {
  //    return literalNames;

        return Array<String>()
    }

    public open func getSymbolicNames (): Array<String> {
  //    return symbolicNames;

        return Array<String>()
    }

    public open func getDisplayNames (): Array<String> {
  //    return displayNames;

        return Array<String>()
    }

    public init() {}
}


