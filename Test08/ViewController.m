//
//  ViewController.m
//  Test08
//
//  Created by chong liu on 2019/12/10.
//  Copyright © 2019 chong liu. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Person *person = [[Person alloc] init];
    [person performSelector:@selector(test:) withObject:@"测试" afterDelay:0];
}


@end
