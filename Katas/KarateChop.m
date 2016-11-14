//
//  KarateChop.m
//  Katas
//
//  Created by Kellie Spears on 11/10/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import "KarateChop.h"

// Collaborator
#import "BST.h"

@implementation KarateChop

struct BNode* find(int target, struct BNode* root) {

    if (root == nil || root->data == target)
        return root;

    // target is greater than root's data
    if (target > root->data)
        return find(target, (root->right));

    // target is less than root's data
    return find(target, (root->left));
}

int chop(int target, NSArray *arr) {

    struct BNode *root =  toBST(arr, 0, (int)arr.count-1);
    struct BNode* node = find(target,root);
    
    if(node) return node->index;

    return -1;
}

@end
