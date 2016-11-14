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

// Collaborators
#import "BST.h"

@interface KarateChopTest : XCTestCase {

   NSArray *arr;
}

@end

@implementation KarateChopTest

- (void)setUp {
    
    [super setUp];

    arr = @[@1, @3, @5, @7];
}

- (void)tearDown {

    // deallocate
    arr = nil;

    [super tearDown];
}

- (void)testFind_TargetNotFound {

    // given
    struct BNode *root = toBST(arr, 0, (int)arr.count-1);

    // when
    struct BNode *node = find(4, root);

    // then
    assert(node == nil);
}

- (void)testFind_TargetFound {

    // given
    struct BNode *root = toBST(arr, 0, (int)arr.count-1);

    // when
    struct BNode *node = find(3, root);

    // then
    assert(node->data == 3);
    assert(root->index == 1);
    assert(root->left->data == 1);
    assert(root->right->data == 5);
}

- (void)testChop {

    assert(-1 == chop(3, @[]));;
    assert(-1 == chop(3, @[@1]));
    assert(0 == chop(1, @[@1]));

    assert(0 == chop(1, @[@1, @3, @5]));
    assert(1 == chop(3, @[@1, @3, @5]));
    assert(2 == chop(5, @[@1, @3, @5]));
    assert(-1 == chop(0, @[@1, @3, @5]));
    assert(-1 == chop(2, @[@1, @3, @5]));
    assert(-1 == chop(4, @[@1, @3, @5]));
    assert(-1 == chop(6, @[@1, @3, @5]));

    assert(0 == chop(1, @[@1, @3, @5, @7]));
    assert(1 == chop(3, @[@1, @3, @5, @7]));
    assert(2 == chop(5, @[@1, @3, @5, @7]));
    assert(3 == chop(7, @[@1, @3, @5, @7]));
    assert(-1 == chop(0, @[@1, @3, @5, @7]));
    assert(-1 == chop(2, @[@1, @3, @5, @7]));
    assert(-1 == chop(4, @[@1, @3, @5, @7]));
    assert(-1 == chop(6, @[@1, @3, @5, @7]));
    assert(-1 == chop(8, @[@1, @3, @5, @7]));
}

@end
