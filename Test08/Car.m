//
//  Car.m
//  Test08
//
//  Created by chong liu on 2019/12/10.
//  Copyright © 2019 chong liu. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)test:(NSString *)string {
    NSLog(@"%s",__FUNCTION__);
}

- (void)testInvocation:(NSString *)string string2:(NSString *)string2{
    NSLog(@"%s",__FUNCTION__);
    NSLog(@"arg0:%@",string);
    NSLog(@"arg1:%@",string);
}
@end
