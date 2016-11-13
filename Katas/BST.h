//
//  BST.h
//  Katas
//
//  Created by Kellie Spears on 11/12/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>

struct Node {

    int data;
    int index;
    struct Node *left;
    struct Node *right;
};
@interface BST : NSObject

struct Node* newNode(int data);
struct Node* toBST(NSArray *arr, int start, int end);

void preOrder(struct Node* node);
void inOrder(struct Node* node);
@end
