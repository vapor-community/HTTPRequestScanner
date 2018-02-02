import Async

/// Scans an incoming HTTP request as a `ByteParserStream`.
public struct HTTPRequestScanner {
    
    /// Called on a data chunk scanned from the request's method.
    var onMethod: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
    
    /// Called on a data chunk scanned from the request's status code.
    var onStatusCode: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
    
    /// Called on a data chunk scanned from the request's route path.
    var onPath: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
    
    /// Called on a data chunk scanned from one of the route's header keys.
    var onHeaderKey: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
    
    /// Called on a data chunk scanned from one of the route's header keys.
    var onHeaderValue: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
    
    /// Called when the header scanning is finished.
    var onHeadersComplete: () -> Void = {}
    
    /// Called on a data chunk scanned from the request's route path.
    var onBody: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
}
