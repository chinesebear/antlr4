package tree.pattern


open class TextChunk <: Chunk {

    private let text: String = ""
    
    public init (text: String){

    }

    public open func getText (): String {
        return ""
    }

    public open override func toString (): String {
        return ""
    }

    public init() {}
}


