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

    NSInteger data;
    struct Node *parent;
    struct Node *left;
    struct Node *right;
};
@interface BST : NSObject

struct Node* newNode(NSInteger data);

struct Node* toBST(NSArray *arr);

@end
