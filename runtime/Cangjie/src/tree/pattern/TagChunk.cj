package tree.pattern


open class TagChunk <: Chunk {

    private let tag: String = ""
    
    private let label: String = ""
    
    public init (tag: String){

    }

    public init (label: String, tag: String){

    }

    public open func getTag (): String {
        return ""
    }

    public open func getLabel (): String {
        return ""
    }

    public open override func toString (): String {
        return ""
    }

    public init() {}
}


