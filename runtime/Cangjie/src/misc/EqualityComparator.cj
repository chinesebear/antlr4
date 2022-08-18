package misc


public interface EqualityComparator<T> {

    func hashCode (obj: T): Int32 

    func equals (a: T, b: T): Bool 

}


