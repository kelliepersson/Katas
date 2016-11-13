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
    node->index = -1;
    node->left = nil;
    node->right = nil;

    return node;
}

struct Node* toBST(NSArray *arr, int start, int end) {

    if(start > end) return nil;

    int mid = (start + end)/2;
    int data = [arr[mid] intValue];
    struct Node *root = newNode(data);

    root->index = (int)mid;
    root->left = toBST(arr, start, mid-1);
    root->right = toBST(arr, mid+1, end);

    return root;
}

void preOrder(struct Node* node) {

    if(!node) return;

    printf("%ld,",(long)node->data);
    preOrder(node->left);
    preOrder(node->right);
}

void inOrder(struct Node* node) {

    if(!node) return;

    inOrder(node->left);
    printf("%ld,",(long)node->data);
    inOrder(node->right);
}

@end
