//
//  KarateChop.h
//  Katas
//
//  Created by Kellie Spears on 11/10/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>

@class BST;
@interface KarateChop : NSObject

struct Node* find(int target, struct Node* root);

int chop(int target, struct Node* root);

@end

