//
//  TST.m
//  Katas
//
//  Created by Kellie Spears on 11/14/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import "TST.h"

@implementation TST

struct TNode *tNode(char key) {

    struct TNode* node = (struct TNode*) malloc(sizeof(struct TNode));

    node->data = key;
    node->eos = false;
    node->left = nil;
    node->equal = nil;
    node->right = nil;

    return node;
}

void insert(struct TNode **root, char *word) {

    if(!(*root)) *root = tNode(* word);

    if(*word < (*root)->data)
        insert(&(*root)->left, word);

    else if(*word > (*root)->data)
        insert(&(*root)->right, word);

    else {

        // if next char exists continue recursion
        if(*(word + 1)) insert(&(*root)->equal, word+1);

        // else end of word
        else (*root)->eos = true;
    }
}

@end
