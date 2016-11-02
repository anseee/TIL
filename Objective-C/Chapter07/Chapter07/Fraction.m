//
//  Fraction.m
//  Chapter07
//
//  Created by 박성원 on 2016. 11. 2..
//  Copyright © 2016년 sungwon. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denomiator;

- (void)print {
    NSLog(@"%i/%i", numerator, denomiator);
}

- (double)convertToNum {
    if (denomiator != 0)
        return (double)numerator / denomiator;
    else
        return NAN;
}

- (void)setTo:(int)n over:(int)d {
    numerator = n;
    denomiator = d;
}

- (void)add:(Fraction *)f {
    numerator = numerator * f.denomiator + denomiator* f.numerator;
    denomiator = denomiator * f.denomiator;
}

- (void)reduce {
    int u = numerator;
    int v = denomiator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denomiator /= u;
}

@end
