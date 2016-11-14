//
//  TST.h
//  Katas
//
//  Created by Kellie Spears on 11/14/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import <Foundation/Foundation.h>

struct TNode {

    char key;
    int idx;
    struct TNode *left;
    struct TNode *equal;
    struct TNode *right;
};
@interface TST : NSObject

struct TNode *tNode(int key);
struct TNode *toTST(NSArray *arr, int start, int end);

@end
