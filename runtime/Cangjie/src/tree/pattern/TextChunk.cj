package default


open class TextChunk <: Chunk {

    private let text: String = ""
    
    public init (text: String){

    }

    public open func getText (): String {
  //    return text;

        return ""
    }

    public open func toString (): String {
  //    return "\'" + text + "\'";

        return ""
    }

    public init() {}
}


