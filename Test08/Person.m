//
//  Person.m
//  Test08
//
//  Created by chong liu on 2019/12/10.
//  Copyright © 2019 chong liu. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
#import "Car.h"

@interface Person ()

@property (nonatomic, strong)Car *car;
@end

@implementation Person

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    return [super resolveInstanceMethod:sel];
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return [NSObject new];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    if (aSelector == @selector(test:)){
        return [NSMethodSignature signatureWithObjCTypes:"v@:@@"];
    }
    return [super forwardingTargetForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    if (anInvocation.selector == @selector(test:)){
        NSString *string = @"测试";
        NSString *string2 = @"测试2";
        Car *car = [[Car alloc] init];
        [anInvocation setTarget:car];
        [anInvocation setSelector:@selector(testInvocation:string2:)];
        [anInvocation setArgument:&string atIndex:2];
        [anInvocation setArgument:&string2 atIndex:3];
        [anInvocation invoke];
    }
}

@end
