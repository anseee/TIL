//
//  main.m
//  Chapter07
//
//  Created by 박성원 on 2016. 11. 2..
//  Copyright © 2016년 sungwon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *aFraction = [Fraction new];
        Fraction *bFraction = [Fraction new];
        
        [aFraction setTo: 1 over: 4];
        [bFraction setTo: 1 over: 3];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        
        [aFraction add: bFraction];
        [aFraction print];
        
    }
    return 0;
}
