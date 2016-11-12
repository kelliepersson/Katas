//
//  BST.m
//  Katas
//
//  Created by Kellie Spears on 11/12/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import "BST.h"

@implementation BST

struct Node* newNode(int data)
{
    struct Node* node = (struct Node*) malloc(sizeof(struct Node));
    
    node->data = data;
    node->parent = nil;
    node->left = nil;
    node->right = nil;

    return node;
}

struct Node* toBST(int arr[]) {

    return nil;
}

@end
