//
//  BSTTest.m
//  Katas
//
//  Created by Kellie Spears on 11/12/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import <XCTest/XCTest.h>

// Collaborators
#import "BST.h"

@interface BSTTest : XCTestCase

@end

@implementation BSTTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNewNode {

    struct Node *node =  newNode(1);

    assert(node->data == 1);
    assert(node->parent == nil);
    assert(node->left == nil);
    assert(node->right == nil);
}

- (void)testToBST {

    NSArray<NSNumber *> *arr = @[@1, @2, @5, @9, @11, @12, @22];
    struct Node *root =  toBST(arr);

    assert(root->data == 9);
    assert(root->parent == nil);
    assert(root->left != nil);
    assert(root->right != nil);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
