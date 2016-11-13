//
//  main.m
//  Katas
//
//  Created by Kellie Spears on 11/10/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>

// Collaborators
#import "BST.h"
#import "KarateChop.h"

void printName(const char *name) {

    printf("%s", name);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        printf("%s", @"Hello, World!\n".UTF8String);
        printName("Kellie\n");

        NSArray *arr = @[@1, @2, @5, @9, @11, @12, @22];
        struct Node *root =  toBST(arr, 0, (int)arr.count-1);
        printf("%i\n", chop(12,root));
        printf("%i\n", chop(44,root));
    }
    
    return 0;
}

