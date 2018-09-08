//
//  AtomicNSInteger.h
//
//  Created by Prabal on 24/11/17.
//
//  AtomicInteger implementation backed by OS level atomic operations from Foundation
//  all the operations are standard ones that AtomicInteger in Java prvides

#import <Foundation/Foundation.h>

@interface AtomicNSInteger : NSObject

- (instancetype)initWithValue:(NSInteger)val;
- (NSInteger)getValue;
- (void)setValue:(NSInteger)value;
- (BOOL)compareTo:(NSInteger)expected andSetValue:(NSInteger)value;
- (NSInteger)getAndSetValue:(NSInteger)value;

// Return old value and update
- (NSInteger)getAndIncrementValue;
- (NSInteger)getAndDecrementValue;
- (NSInteger)getAndAddValue:(NSInteger)delta;

// Update and return new value
- (NSInteger)incrementAndGetValue;
- (NSInteger)decrementAndGetValue;
- (NSInteger)addAndGetValue:(NSInteger)delta;

@end
