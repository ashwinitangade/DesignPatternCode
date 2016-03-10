//
//  DesignPattersTests.m
//  DesignPattersTests
//
//  Created by Ashwini Tangade on 3/9/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SingletonClass.h"

@interface DesignPattersTests : XCTestCase
@property(nonatomic,weak)SingletonClass *xcTest;
@end

@implementation DesignPattersTests

- (void)setUp {
    [super setUp];
    self.xcTest = [SingletonClass sharedInstance];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testReverseString {
    NSMutableString *inputString = [NSMutableString stringWithString:@"Physical"];
    NSString *reverseString = @"lacisyhPo";
    XCTAssertEqualObjects([self.xcTest reverseString:inputString], reverseString,@"The two strings are not equal.The test failed");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
