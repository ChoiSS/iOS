//
//  main.m
//  CommandLineToolTest
//
//  Created by ChoiSeok on 2016. 5. 4..
//  Copyright © 2016년 ChoiSeok. All rights reserved.
//

#import <Foundation/Foundation.h>

int scoreOfKorean = 0;  int scoreOfMath = 0;
int scoreOfEnglish = 0; int scoreOfScience = 0;

int _totalScore =0;     int _avrgScore = 0;


void SetKoreanScore(int score){scoreOfKorean = score;}
void SetMathScore(int score){scoreOfMath = score;}
void SetEnglishScore(int score){scoreOfEnglish = score;}
void SetScienceScore(int score){scoreOfScience = score;}


int totalScore(int scoreOfKorean, int scoreOfMath, int scoreOfEnglish, int scoreOfScience){
    _totalScore = scoreOfKorean + scoreOfMath + scoreOfEnglish + scoreOfScience;
    return _totalScore;
}


int avrgScore(int tts){
    tts = _totalScore;
    _avrgScore = tts / 4;
    return _avrgScore;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SetKoreanScore(100);        SetEnglishScore(100);
        SetMathScore(80);           SetScienceScore(90);
        
        int a = totalScore(scoreOfKorean, scoreOfMath, scoreOfEnglish, scoreOfScience);
        int b = avrgScore(a);
       
        
        
        printf("내 점수의 총점은 %d이고, 평균은 %d입니다.", a, b);
        
        
        
        
        
        
        
        
        
        
        
        
        
        // insert code here...
        
        /*
        int age = 13;
        float height = 130.2;
        bool checkLogIn = YES ;
        const int PIE_ = 3.14;
        
        age = 33;
        height = 182.5;
        checkLogIn = NO;
        
        int half;
        
        int square = half * PIE_ ;
        
        return square;
        
  
        
        int priceOfCoke = 1000;
        int priceOfCoffee = 800;
        int priceOfJuice = 1500;
        
        
        int totalPrice = priceOfCoke + priceOfJuice + priceOfCoffee;
        int countOfBevarage = 3;
        const maxCountOfBeverage = 5;
        int change = 1500;
        
        NSString *nameOfbeverage_chosen = @"Coke";
        
        int scoreOfKorean = 100;
        int scoreOfMath = 80;
        int scoreOfEnglish = 100;
        
        int countOfSubject = 3;
        
        NSString *nameOfStudent = @"최석";
        
        
        int averageOfScore = (scoreOfMath + scoreOfKorean + scoreOfEnglish)/countOfSubject ;
        
        //NSLog(@"Hello, World!");
         */
        

        
        
    }
    return 0;
}


/*
 int b = 0;
 b = 1;
 
 에러가 나게된다.
 이유는 변수값을 변동하는 것은 행동인데, 
 이것은 함수안에서만 가능하다.
*/
