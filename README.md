# ObjCUtils

This is a collection of Data Structures and Utility classes written in Objective C, that are not provided by Cocoa itself.


## ConcurrentDictionary

Counterpart to ConcurrentHashMap Java Collection. This class utilises the power of the libdispatch library to provide synchronuos reads and exclusive writes to give you a thread-safe key-value data structure, that is, it can maintain data consistency even when multiple threads are trying to read from and write to the data structure.

### How it works

[Read guidelines here](https://medium.com/@iamprabal/https-medium-com-concurrenthashmap-in-objective-c-bec042b3a3bc)
The dictionary creates a concurrent dispatch queue solely for the purpose of reading from / writing to this dictionary. We use dispatch_sync for reading synchronously and dispatch_barrier_async for writing exclusively to the data.


## AtomicNSInteger

Counterpart to AtomicInteger from Java. This class uses OS-level atomic operations meant for register addition and register swapping to wrap an NSInteger such that it can support reads / writes by multiple concurrent threads, in an atomic fashion.

### How it works

[Read guidelines here](https://medium.com/@iamprabal/atomicinteger-in-objective-c-740f0c00da92)


### Get started

1. Install with [CocoaPods](http://cocoapods.org) or clone from github. Add `pod 'ObjCUtils'` to your `Podfile` and run `pod install`.
2. Import the required file e.g. `#import "ConcurrentDictionary.h"` in your code and start using.


### Support / Discussions

Please raise issues on github as needed. For any questions / suggestions (that do not directly translate into issues) please write to me at <iamprabal@gmail.com>
