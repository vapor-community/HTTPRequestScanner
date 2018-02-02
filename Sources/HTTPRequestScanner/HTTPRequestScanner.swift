import Async

/// Scans an incoming HTTP request as a `ByteParserStream`.
public struct HTTPRequestScanner {
    
    /// Called on a data chunk scanned from the request's method.
    var onMethod: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
    
    /// Called on a data chunk scanned from the request's status code.
    var onStatusCode: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
}
