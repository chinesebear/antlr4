package default

from std import io.*
// import java.nio.charset.StandardCharsets;
// import java.nio.file.Files;
// import java.nio.file.Paths;
// import java.util.*;

open public class IntegerList {

    private static var EMPTY_DATA: Array<Int32> = Array<Int32>()
    
    private static let INITIAL_SIZE: Int32 = 4
    
    private static let MAX_ARRAY_SIZE: Int32 = 0
    
    private var data: Array<Int32> = Array<Int32>()
    
    private var size: Int32 = 0
    
    public init (){

    }

    public init (capacity: Int32){

    }

    public init (list: IntegerList){

    }

    public init (list: Collection<Integer>){

    }

    public open func add (value: Int32): Unit {
  //    if (_data.length == _size) {
  //        ensureCapacity(_size + 1);
  //    _data[_size] = value;
  //    _size++;

        
    }

    public open func addAll (array: Array<Int32>): Unit {
  //    ensureCapacity(_size + array.length);
  //    System.arraycopy(array, 0, _data, _size, array.length);
  //    _size += array.length;

        
    }

    public open func addAll (list: IntegerList): Unit {
  //    ensureCapacity(_size + list._size);
  //    System.arraycopy(list._data, 0, _data, _size, list._size);
  //    _size += list._size;

        
    }

    public open func addAll (list: Collection<Integer>): Unit {
  //    ensureCapacity(_size + list.size());
  //    int current = 0;
  //    for (int x : list) {
  //        _data[_size + current] = x;
  //        current++;
  //    _size += list.size();

        
    }

    public open func get (index: Int32): Int32 {
  //    if (index < 0 || index >= _size) {
  //        throw new IndexOutOfBoundsException();
  //    return _data[index];

        return 0
    }

    public open func contains (value: Int32): Bool {
  //    for (int i = 0; i < _size; i++) {
  //        if (_data[i] == value) {
  //            return true;
  //    return false;

        return true
    }

    public open func setFunc (index: Int32, value: Int32): Int32 {
  //    if (index < 0 || index >= _size) {
  //        throw new IndexOutOfBoundsException();
  //    int previous = _data[index];
  //    _data[index] = value;
  //    return previous;

        return 0
    }

    public open func removeAt (index: Int32): Int32 {
  //    int value = get(index);
  //    System.arraycopy(_data, index + 1, _data, index, _size - index - 1);
  //    _data[_size - 1] = 0;
  //    _size--;
  //    return value;

        return 0
    }

    public open func removeRange (fromIndex: Int32, toIndex: Int32): Unit {
  //    if (fromIndex < 0 || toIndex < 0 || fromIndex > _size || toIndex > _size) {
  //        throw new IndexOutOfBoundsException();
  //    if (fromIndex > toIndex) {
  //        throw new IllegalArgumentException();
  //    System.arraycopy(_data, toIndex, _data, fromIndex, _size - toIndex);
  //    Arrays.fill(_data, _size - (toIndex - fromIndex), _size, 0);
  //    _size -= (toIndex - fromIndex);

        
    }

    public open func isEmpty (): Bool {
  //    return _size == 0;

        return true
    }

    public open func sizeFunc (): Int32 {
  //    return _size;

        return 0
    }

    public open func trimToSize (): Unit {
  //    if (_data.length == _size) {
  //        return;
  //    _data = Arrays.copyOf(_data, _size);

        
    }

    public open func clear (): Unit {
  //    Arrays.fill(_data, 0, _size, 0);
  //    _size = 0;

        
    }

    public open func toArray (): Array<Int32> {
  //    if (_size == 0) {
  //        return EMPTY_DATA;
  //    return Arrays.copyOf(_data, _size);

        return Array<Int32>()
    }

    public open func sort (): Unit {
  //    Arrays.sort(_data, 0, _size);

        
    }

    public open func equals (o: Object): Bool {
  //    if (o == this) {
  //        return true;
  //    if (!(o instanceof IntegerList)) {
  //        return false;
  //    IntegerList other = (IntegerList)o;
  //    if (_size != other._size) {
  //        return false;
  //    for (int i = 0; i < _size; i++) {
  //        if (_data[i] != other._data[i]) {
  //            return false;
  //    return true;

        return true
    }

    public open func hashCodeFunc (): Int32 {
  //    int hashCode = 1;
  //    for (int i = 0; i < _size; i++) {
  //        hashCode = 31 * hashCode + _data[i];
  //    return hashCode;

        return 0
    }

    public open func toString (): String {
  //    return Arrays.toString(toArray());

        return ""
    }

    public open func binarySearch (key: Int32): Int32 {
  //    return Arrays.binarySearch(_data, 0, _size, key);

        return 0
    }

    public open func binarySearch (fromIndex: Int32, toIndex: Int32, key: Int32): Int32 {
  //    if (fromIndex < 0 || toIndex < 0 || fromIndex > _size || toIndex > _size) {
  //        throw new IndexOutOfBoundsException();
  //    if (fromIndex > toIndex) {
  //        throw new IllegalArgumentException();
  //    return Arrays.binarySearch(_data, fromIndex, toIndex, key);

        return 0
    }

    private func ensureCapacity (capacity: Int32): Unit {
  //    if (capacity < 0 || capacity > MAX_ARRAY_SIZE) {
  //        throw new OutOfMemoryError();
  //    int newLength;
  //    if (_data.length == 0) {
  //        newLength = INITIAL_SIZE;
  //    } else {
  //        newLength = _data.length;
  //    while (newLength < capacity) {
  //        newLength = newLength * 2;
  //        if (newLength < 0 || newLength > MAX_ARRAY_SIZE) {
  //            newLength = MAX_ARRAY_SIZE;
  //    _data = Arrays.copyOf(_data, newLength);

        
    }

    public open func toCharArray (): Array<Char> {
  //    char[] resultArray = new char[_size];
  //    int resultIdx = 0;
  //    boolean calculatedPreciseResultSize = false;
  //    for (int i = 0; i < _size; i++) {
  //        int codePoint = _data[i];
  //        if (!calculatedPreciseResultSize && Character.isSupplementaryCodePoint(codePoint)) {
  //            resultArray = Arrays.copyOf(resultArray, charArraySize());
  //            calculatedPreciseResultSize = true;
  //        int charsWritten = Character.toChars(codePoint, resultArray, resultIdx);
  //        resultIdx += charsWritten;
  //    return resultArray;

        return Array<Char>()
    }

    private func charArraySize (): Int32 {
  //    int result = 0;
  //    for (int i = 0; i < _size; i++) {
  //        result += Character.charCount(_data[i]);
  //    return result;

        return 0
    }

}


