//
//  main.m
//  AvrgScore
//
//  Created by ChoiSeok on 2016. 5. 9..
//  Copyright © 2016년 ChoiSeok. All rights reserved.
//

#import <Foundation/Foundation.h>



NSInteger TotalScore(NSArray *subjects){
    NSInteger totalscore = 0 ;
    for(NSNumber *score in subjects){
        totalscore += score.integerValue ;
    }
    return totalscore ;
}

CGFloat AverageSubjects(NSArray *subjects){
    CGFloat total = (CGFloat)TotalScore(subjects);
    return total/subjects.count;
}







int main(int argc, const char * argv[]) {
    @autoreleasepool {

    
        NSArray *subjectList = @[@100, @90, @34, @76, @54, @100];
        CGFloat average = AverageSubjects(subjectList);
        NSLog(@"%f",average);
            
    
    }
    
    return 0;
}
