package default


open class TagChunk <: Chunk {

    private let tag: String = ""
    
    private let label: String = ""
    
    public init (tag: String){

    }

    public init (label: String, tag: String){

    }

    public open func getTag (): String {
  //    return tag;

        return ""
    }

    public open func getLabel (): String {
  //    return label;

        return ""
    }

    public open func toString (): String {
  //    if (label != null) {
  //        return label + ":" + tag;
  //    return tag;

        return ""
    }

    public init() {}
}


