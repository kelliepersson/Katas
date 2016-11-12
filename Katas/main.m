//
//  main.m
//  Katas
//
//  Created by Kellie Spears on 11/10/16.
//  Copyright © 2016 Kellie Spears. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>


void printName(const char *name) {

    printf("%s", name);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        printf("%s", @"Hello, World!\n".UTF8String);

        printName("Kellie\n");
}

    return 0;
}

