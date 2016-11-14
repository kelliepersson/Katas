//
//  BST.m
//  Katas
//
//  Created by Kellie Spears on 11/12/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import "BST.h"

@implementation BST

struct BNode* bNode(int data)
{
    struct BNode* node = (struct BNode*) malloc(sizeof(struct BNode));

    node->data = data;
    node->index = -1;
    node->left = nil;
    node->right = nil;

    return node;
}

struct BNode* toBST(NSArray *arr, int start, int end) {

    if(start > end) return nil;

    int mid = (start + end)/2;
    int data = [arr[mid] intValue];
    struct BNode *root = bNode(data);

    root->index = (int)mid;
    root->left = toBST(arr, start, mid-1);
    root->right = toBST(arr, mid+1, end);

    return root;
}

void preOrder(struct BNode* node) {

    if(!node) return;

    printf("%ld,",(long)node->data);
    preOrder(node->left);
    preOrder(node->right);
}

void inOrder(struct BNode* node) {

    if(!node) return;

    inOrder(node->left);
    printf("%ld,",(long)node->data);
    inOrder(node->right);
}

@end
