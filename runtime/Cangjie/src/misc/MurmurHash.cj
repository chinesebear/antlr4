package default


public class MurmurHash {

    private static let DEFAULT_SEED: Int32 = 0
    
    public func initialize (): Int32 {
  //    return initialize(DEFAULT_SEED);

        return 0
    }

    public func initialize (seed: Int32): Int32 {
  //    return seed;

        return 0
    }

    public func update (hash: Int32, value: Int32): Int32 {
  //    final int c1 = -862048943;
  //    final int c2 = 461845907;
  //    final int r1 = 15;
  //    final int r2 = 13;
  //    final int m = 5;
  //    final int n = -430675100;
  //    int k = value;
  //    k = k * c1;
  //    k = (k << r1) | (k >>> (32 - r1));
  //    k = k * c2;
  //    hash = hash ^ k;
  //    hash = (hash << r2) | (hash >>> (32 - r2));
  //    hash = hash * m + n;
  //    return hash;

        return 0
    }

    public func update (hash: Int32, value: Object): Int32 {
  //    return update(hash, value != null ? value.hashCode() : 0);

        return 0
    }

    public static func finish (hash: Int32, numberOfWords: Int32): Int32 {
  //    hash = hash ^ (numberOfWords * 4);
  //    hash = hash ^ (hash >>> 16);
  //    hash = hash * -2048144789;
  //    hash = hash ^ (hash >>> 13);
  //    hash = hash * -1028477387;
  //    hash = hash ^ (hash >>> 16);
  //    return hash;

        return 0
    }

    public static func hashCodeFunc<T> (data: Array<T>, seed: Int32): Int32 {
  //    int hash = initialize(seed);
  //    for (T value : data) {
  //        hash = update(hash, value);
  //    hash = finish(hash, data.length);
  //    return hash;

        return 0
    }

    private init (){

    }

}


