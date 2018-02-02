import Async

/// Scans an incoming HTTP request as a `ByteParserStream`.
public struct HTTPRequestScanner {
    
    /// Called on a data chunk scanned from the request's method.
    public var onMethod: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
    
    /// Called on a data chunk scanned from the request's status code.
    public var onStatusCode: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
    
    /// Called on a data chunk scanned from the request's route path.
    public var onPath: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
    
    /// Called on a data chunk scanned from one of the route's header keys.
    public var onHeaderKey: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
    
    /// Called on a data chunk scanned from one of the route's header keys.
    var onHeaderValue: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
    
    /// Called when the header scanning is finished.
    public var onHeadersComplete: () -> Void = {}
    
    /// Called on a data chunk scanned from the request's body.
    public var onBody: (UnsafeBufferPointer<UInt8>) -> Void = {_ in}
    
    /// Called when the request scanning is finished.
    public var onMessageComplete: () -> Void = {}
}
