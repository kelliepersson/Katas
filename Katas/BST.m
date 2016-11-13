//
//  BST.m
//  Katas
//
//  Created by Kellie Spears on 11/12/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import "BST.h"

@implementation BST

struct Node* newNode(NSInteger data)
{
    struct Node* node = (struct Node*) malloc(sizeof(struct Node));
    
    node->data = data;
    node->parent = nil;
    node->left = nil;
    node->right = nil;

    return node;
}

struct Node* toBST(NSArray *arr) {

    if(!arr.count) return nil;

    NSUInteger mid = arr.count/2;
    int data = [arr[mid] intValue];
    struct Node *root = newNode(data);

    root->left = toBST([arr subarrayWithRange:NSMakeRange(0, mid)]);
    root->right = toBST([arr subarrayWithRange:NSMakeRange(mid+1, mid)]);

    return root;
}

@end
