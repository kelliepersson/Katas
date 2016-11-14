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

struct BNode* find(int target, struct BNode* root);

int chop(int target, NSArray *arr);

@end

