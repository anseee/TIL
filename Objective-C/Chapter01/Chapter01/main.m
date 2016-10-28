//
//  main.m
//  Chapter01
//
//  Created by 박성원 on 2016. 10. 28..
//  Copyright © 2016년 partner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint: NSObject

- (void)setX:(int)x;
- (void)setY:(int)y;
- (int)x;
- (int)y;

@end

@implementation XYPoint
{
    int x;
    int y;
}

- (void)setX:(int)tempX {
    x = tempX;
}

- (void)setY:(int)tempY {
    y = tempY;
}

- (int)x {
    return x;
}

- (int)y {
    return y;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        XYPoint *point = [XYPoint new];
        
        [point setX:1];
        [point setY:2];
        
        NSLog(@"(%d,%d)", [point x], [point y]);
    
    }
    return 0;
}
