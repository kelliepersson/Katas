//
//  TST.h
//  Katas
//
//  Created by Kellie Spears on 11/14/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import <Foundation/Foundation.h>

struct TNode {

    char data;
    BOOL eos;  // end of string
    struct TNode *left;
    struct TNode *equal;
    struct TNode *right;
};
@interface TST : NSObject

struct TNode *tNode(const char key);
void insert(struct TNode **root, char *word);

@end
