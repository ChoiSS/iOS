//
//  main.m
//  D9_Project
//
//  Created by ChoiSeok on 2016. 5. 5..
//  Copyright © 2016년 ChoiSeok. All rights reserved.
//

#import <Foundation/Foundation.h>

int ScoreGrade(int score){
    if(score>=90){
        return 1;
    }else if(score>=80){
        return 2;
    }else if(score>=70){
        return 3;
    }else if(score>=60){
        return 4;
    }else if(score<60){
        return 5;
    }else{
        return 6;
    }
}

void Scolarship(int scoreGrade){
    switch (scoreGrade) {
        case 1 :
            printf("전액 장학금입니다.\n");
            break;
        
        case 2 :
            printf("50%% 장학금입니다.\n");
            break;
      
        case 3 :
            printf("25%% 장학금입니다.\n");
            break;
            
        default:
            printf("해당 사항이 없습니다.\n");
            break;
    }
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        int scoreOfHim = 92;
        int a = ScoreGrade(scoreOfHim);
        
        printf("등급은 %d등급입니다.\n", a);
        printf("등급은 %d등급입니다.\n", ScoreGrade(scoreOfHim));
        
        Scolarship(ScoreGrade(scoreOfHim));
        Scolarship(a);
        
    }
    return 0;
}
