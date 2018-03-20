//
//  SortTests.m
//  SortTests
//
//  Created by 魏唯隆 on 2018/3/20.
//  Copyright © 2018年 魏唯隆. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface SortTests : XCTestCase

{
    NSMutableArray *values;
}

@end

@implementation SortTests

- (void)setUp {
    [super setUp];
    
    values = @[@37,@33,@24,@4,@58,@35,@40,@98,@76,@82].mutableCopy;
    NSLog(@"排序前： %@", values);
}

- (void)tearDown {
    
    values = nil;
    
    [super tearDown];
}

- (void)testExample {
    ViewController *VC = [[ViewController alloc] init];
    [VC insertSort:values];
    
    NSLog(@"排序后： %@", values);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
