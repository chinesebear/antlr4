package misc


public class MurmurHash {

    private static let DEFAULT_SEED: Int32 = 0
    
    public static func initialize (): Int32 {
        return 0
    }

    public static func initialize (seed: Int32): Int32 {
        return 0
    }

    public static func update (hash: Int32, value: Int32): Int32 {
        return 0
    }

    public static func update (hash: Int32, value: Object): Int32 {
        return 0
    }

    public static func finish (hash: Int32, numberOfWords: Int32): Int32 {
        return 0
    }

    public static func hashCode<T> (data: Array<T>, seed: Int32): Int32 {
        return 0
    }

    private init (){

    }

}


