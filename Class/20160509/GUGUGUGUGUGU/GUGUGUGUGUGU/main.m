//
//  main.m
//  GUGUGUGUGUGU
//
//  Created by ChoiSeok on 2016. 5. 9..
//  Copyright © 2016년 ChoiSeok. All rights reserved.
//

#import <Foundation/Foundation.h>

void Gugu(NSArray *dans){
    for(NSNumber *dan in dans){
        for(NSInteger multipleNum = 1; multipleNum <=9 ; multipleNum++){
            NSInteger result = (dan.integerValue) * multipleNum;
            NSLog(@"%@ * %zd = %zd",dan, multipleNum, result);
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *dan = @[@1, @2, @3,  @8, @9];
        Gugu(dan);
    }
    return 0;
}
