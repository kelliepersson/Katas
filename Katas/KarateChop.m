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

struct Node* find(int target, struct Node* root) {

    if (root == nil || root->data == target)
        return root;

    // target is greater than root's data
    if (target > root->data)
        return find(target, (root->right));

    // target is less than root's data
    return find(target, (root->left));
}

int chop(int target, struct Node* root) {

    int index = -1;

    struct Node* node = find(target,root);
    if(node) index = node->index;

    return index;
}

@end
