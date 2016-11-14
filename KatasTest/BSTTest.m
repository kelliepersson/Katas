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

- (void)testBNode {

    struct BNode *bnode =  bNode(1);

    assert(bnode->data == 1);
    assert(bnode->index == -1);
    assert(bnode->left == nil);
    assert(bnode->right == nil);
}

- (void)testToBST {

    NSArray<NSNumber *> *arr = @[@1, @2, @5, @9, @11, @12, @22];
    struct BNode *root =  toBST(arr, 0, (int)arr.count-1);

    assert(root->data == 9);
    assert(root->index == 3);
    assert(root->left->data == 2);
    assert(root->right->data == 12);
}

- (void)testPreOrder {

    NSArray<NSNumber *> *arr = @[@1, @2, @5, @9, @11, @12, @22];
    struct BNode *root =  toBST(arr, 0, (int)arr.count-1);

    preOrder(root);
    printf("\n");
    inOrder(root);
    printf("\n");
}

@end
