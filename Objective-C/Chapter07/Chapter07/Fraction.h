//
//  Fraction.h
//  Chapter07
//
//  Created by 박성원 on 2016. 11. 2..
//  Copyright © 2016년 sungwon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denomiator;

- (void)print;
- (void)setTo:(int)n over:(int)d;
- (double)convertToNum;
- (void)add:(Fraction *)f;
- (void)reduce;

@end
