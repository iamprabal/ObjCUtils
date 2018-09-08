//
//  ConcurrentDictionary.h
//
//  Created by Prabal on 24/11/17.
//
//  Generic Thread Safe implementation of NSMutableDictionary backed by a NSMutableDictionary


#import <Foundation/Foundation.h>

@interface ConcurrentDictionary<KeyType, ObjectType> : NSObject

- (instancetype)initWithCapacity:(NSUInteger)capacity;
- (ObjectType)objectForKey:(KeyType)aKey;
- (void)setObject:(ObjectType)anObject forKey:(KeyType)aKey;
- (ObjectType)putIfAbsentObject:(ObjectType)anObject forKey:(KeyType)aKey;
- (void)removeObjectForKey:(KeyType)aKey;
- (void)removeAllObjects;
- (NSArray<KeyType> *)allKeys;
- (NSUInteger)count;
- (NSDictionary<KeyType, ObjectType> *)getSnapshot;

@end
