//
//  _1________Tests.m
//  01简单介绍几个控件Tests
//
//  Created by 小太阳 on 16/3/31.
//  Copyright © 2016年 小太阳. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface _1________Tests : XCTestCase

@end

@implementation _1________Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
