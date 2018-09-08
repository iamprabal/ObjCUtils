//
//  AtomicNSInteger.m
//
//  Created by Prabal on 24/11/17.
//

#import "AtomicNSInteger.h"
#import <libkern/OSAtomic.h>

#define Is64BitArch __LP64__ || (TARGET_OS_EMBEDDED && !TARGET_OS_IPHONE) || NS_BUILD_32_LIKE_64

@implementation AtomicNSInteger {
    
#if Is64BitArch
    volatile int64_t _underlying;
#else
    volatile int32_t _underlying;
#endif
}

- (instancetype)init {
    return [self initWithValue:0];
}

- (instancetype)initWithValue:(NSInteger)value {
    if (self = [super init]) {
        _underlying = value;
    }
    return self;
}

- (NSInteger)getValue {
    return _underlying;
}

- (void)setValue:(NSInteger)value {
    _underlying = value;
}

- (BOOL)compareTo:(NSInteger)expected andSetValue:(NSInteger)value {
#if Is64BitArch
    return OSAtomicCompareAndSwap64(expected, value, &_underlying);
#else
    return OSAtomicCompareAndSwap32(expected, value, &_underlying);
#endif
}

- (NSInteger)getAndSetValue:(NSInteger)value {
    while (true) {
        NSInteger current = [self getValue];
        if ([self compareTo:current andSetValue:value]) {
            return current;
        }
    }
}

- (NSInteger)getAndIncrementValue {
    return [self getAndAddValue:1];
}

- (NSInteger)getAndDecrementValue {
    return [self getAndAddValue:-1];
}

- (NSInteger)getAndAddValue:(NSInteger)delta {
    while (true) {
        NSInteger current = [self getValue];
        NSInteger next = current + delta;
        if ([self compareTo:current andSetValue:next]) {
            return current;
        }
    }
}

- (NSInteger)incrementAndGetValue {
    return [self addAndGetValue:1];
}

- (NSInteger)decrementAndGetValue {
    return [self addAndGetValue:-1];
}

- (NSInteger)addAndGetValue:(NSInteger)delta {
#if Is64BitArch
    return OSAtomicAdd64(delta, &_underlying);
#else
    return OSAtomicAdd32(delta, &_underlying);
#endif
}

@end
