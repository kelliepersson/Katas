//
//  KarateChopTest.m
//  Katas
//
//  Created by Kellie Spears on 11/12/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import <XCTest/XCTest.h>

// Class under test
#import "KarateChop.h"

@interface KarateChopTest : XCTestCase {

    KarateChop *sut;
}

@end

@implementation KarateChopTest

- (void)setUp {
    
    [super setUp];

    sut = [[KarateChop alloc] init];
}

- (void)tearDown {

    // deallocate
    sut = nil;

    [super tearDown];
}

- (void)testKarateChop {

    //assert(-1 == chop(3,@[]));
    //assert(-1 == [sut searchIndex:3 inArray:@[@1]]);
    //assert(0 == [sut searchIndex:1 inArray:@[@1]]);


//    assert_equal(0,  chop(1, [1, 3, 5]))
//    assert_equal(1,  chop(3, [1, 3, 5]))
//    assert_equal(2,  chop(5, [1, 3, 5]))
//    assert_equal(-1, chop(0, [1, 3, 5]))
//    assert_equal(-1, chop(2, [1, 3, 5]))
//    assert_equal(-1, chop(4, [1, 3, 5]))
//    assert_equal(-1, chop(6, [1, 3, 5]))
//
//    assert_equal(0,  chop(1, [1, 3, 5, 7]))
//    assert_equal(1,  chop(3, [1, 3, 5, 7]))
//    assert_equal(2,  chop(5, [1, 3, 5, 7]))
//    assert_equal(3,  chop(7, [1, 3, 5, 7]))
//    assert_equal(-1, chop(0, [1, 3, 5, 7]))
//    assert_equal(-1, chop(2, [1, 3, 5, 7]))
//    assert_equal(-1, chop(4, [1, 3, 5, 7]))
//    assert_equal(-1, chop(6, [1, 3, 5, 7]))
//    assert_equal(-1, chop(8, [1, 3, 5, 7]))
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
