//
//  BST.h
//  Katas
//
//  Created by Kellie Spears on 11/12/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import <Foundation/Foundation.h>

struct BNode {

    int data;
    int index;
    struct BNode *left;
    struct BNode *right;
};
@interface BST : NSObject

struct BNode* bNode(int data);
struct BNode* toBST(NSArray *arr, int start, int end);

void preOrder(struct BNode* node);
void inOrder(struct BNode* node);

@end
