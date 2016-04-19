//
//  ViewController.m
//  rdm.test
//
//  Created by 李雄 on 16/4/14.
//  Copyright © 2016年 李雄. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,retain) NSArray *testStr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self testFun];
    [self test2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testFun{
//    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
//    NSArray *test = [[NSArray alloc] initWithObjects:@"test123", nil];
//    NSLog(@"retain count:%lu",(unsigned long)test.retainCount);
//    self.testStr = test;
    @autoreleasepool {
        self.testStr = [[[NSArray alloc] initWithObjects:@"test123", nil]autorelease];
        NSLog(@"retain count:%lu",(unsigned long)self.testStr.retainCount);
    }

     NSLog(@"retain count:%lu",(unsigned long)self.testStr.retainCount);
//    [test release];
//    NSLog(@"retain count:%lu",(unsigned long)test.retainCount);
//    [pool release];
//    NSLog(@"retain count:%lu",(unsigned long)test.retainCount);
}

- (void)test2{
    NSLog(@"retain count:%lu",(unsigned long)self.testStr.retainCount);
}
@end
