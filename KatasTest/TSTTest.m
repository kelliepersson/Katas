//
//  TSTTest.m
//  Katas
//
//  Created by Kellie Spears on 11/14/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import <XCTest/XCTest.h>

// Collaborators
#import "TST.h"

@interface TSTTest : XCTestCase {

    NSArray *arr;
}

@end

@implementation TSTTest

- (void)setUp {
    [super setUp];

    arr = @[@"a", @"able", @"about", @"account", @"acid", @"across", @"act", @"baby", @"back", @"bad", @"bag", @"balance", @"ball", @"common", @"company", @"comparison", @"dark", @"daughter", @"day", @"dead", @"dear", @"ear", @"early", @"earth", @"east", @"edge", @"education", @"effect", @"egg", @"elastic", @"electric", @"end", @"engine", @"face", @"fact", @"fall", @"false", @"family", @"far", @"farm", @"fat", @"father", @"fear", @"feather", @"feeble", @"feeling", @"female", @"fiction", @"field", @"fight", @"finger", @"fire", @"first", @"fish", @"fixed", @"flag", @"flame", @"flat", @"flight", @"floor", @"flower", @"fly", @"fold", @"food", @"foolish", @"foot", @"for", @"force", @"fork", @"form", @"forward", @"fowl", @"frame", @"free", @"frequent", @"friend", @"from", @"front", @"fruit", @"full", @"future", @"keep", @"kettle", @"key", @"kick", @"kind", @"kiss", @"knee", @"knife", @"knot", @"knowledge", @"quality", @"question", @"quick", @"quiet", @"quite", @"spade", @"special", @"sponge", @"spoon", @"spring", @"square", @"stamp", @"stage", @"star", @"start", @"statement", @"the", @"then", @"theory", @"there", @"thick", @"thin", @"thing", @"this", @"though", @"thought", @"thread", @"throat", @"walk", @"wall", @"waiting", @"war", @"warm", @"wash"];
}

- (void)tearDown {

    //deallocate
    arr = nil;

    [super tearDown];
}

- (void)testTNode {

    // when
    struct TNode *tnode = tNode('c');

    // then
    XCTAssertEqual(tnode->data,'c');
    XCTAssertFalse(tnode->eos);
    XCTAssertEqual(tnode->left,nil);
    XCTAssertEqual(tnode->right,nil);
}

- (void)testInsert {

    // given
    struct TNode *root = nil;

    // when
    insert(&root, "cat");
    insert(&root, "cats");
    insert(&root, "catch");
    insert(&root, "");

    // then
    XCTAssertEqual(root->data,'c');
    XCTAssertEqual(root->eos,NO);
    XCTAssertEqual(root->right,nil);

    XCTAssertEqual(root->equal->data,'a');
    XCTAssertEqual(root->equal->eos,NO);
    XCTAssertEqual(root->equal->left, nil);
    XCTAssertEqual(root->equal->right,nil);

    XCTAssertEqual(root->equal->equal->data,'t');
    XCTAssertEqual(root->equal->equal->eos,YES);
    XCTAssertEqual(root->equal->equal->right, nil);

    XCTAssertEqual(root->equal->equal->equal->data,'s');
    XCTAssertEqual(root->equal->equal->equal->eos,YES);
    XCTAssertEqual(root->equal->equal->equal->right,nil);

    XCTAssertEqual(root->equal->equal->equal->left->data,'c');
    XCTAssertEqual(root->equal->equal->equal->left->eos,NO);
    XCTAssertEqual(root->equal->equal->equal->left->left, nil);
    XCTAssertEqual(root->equal->equal->equal->left->right, nil);

    XCTAssertEqual(root->equal->equal->equal->left->equal->data, 'h');
    XCTAssertEqual(root->equal->equal->equal->left->equal->eos, YES);
    XCTAssertEqual(root->equal->equal->equal->left->equal->left, nil);
    XCTAssertEqual(root->equal->equal->equal->left->equal->equal, nil);
    XCTAssertEqual(root->equal->equal->equal->left->equal->right, nil);


}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
