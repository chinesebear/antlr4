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

    public static func fromTokenNames (tokenNames: Array<String>): Vocabulary {
        return Vocabulary()
    }

    public open func getMaxTokenType (): Int32 {
        return 0
    }

    public open func getLiteralName (tokenType: Int32): String {
        return ""
    }

    public open func getSymbolicName (tokenType: Int32): String {
        return ""
    }

    public open func getDisplayName (tokenType: Int32): String {
        return ""
    }

    public open func getLiteralNames (): Array<String> {
        return Array<String>()
    }

    public open func getSymbolicNames (): Array<String> {
        return Array<String>()
    }

    public open func getDisplayNames (): Array<String> {
        return Array<String>()
    }

    public init() {}
}


