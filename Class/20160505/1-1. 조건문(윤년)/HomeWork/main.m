//
//  main.m
//  HomeWork
//
//  Created by ChoiSeok on 2016. 5. 5..
//  Copyright © 2016년 ChoiSeok. All rights reserved.
//

#import <Foundation/Foundation.h>
//절대값 구하는 문제
//함수입력 absoluteNumber(-12) 12

//문자구분 문자 하나를 입력받아 이문자가 소문자인지 대문자인지 숫자인지 구분
//함수입력 checkAlphabet('c') c는 소문자입니다.

//윤년 구하는 문제 : 윤년은 기본적으로 매 4년마다 돌아오나 100으로 나누어 떨어지는 해는 윤년이 아니다, 또 그중 400년로 나눠 떨어지는 해는 윤년이다
//checkLeapYear(1984) 1984년은 윤년이 아닙니다


void AbsoluteNumber(int number){
    if (number<0){
        number = number * -1;
        printf("%d",number);
    }else{
        printf("%d",number);
    }
}



void CheckAlphabet(char a){
    
    if((int)a >=48 && (int)a  <= 57){
        printf("%c는 숫자입니다.",a);
    }else if( (int)a >= 65 && (int)a <=90 ){
        printf("%c는 대문자입니다.", a);
    }else if( (int)a >= 97 && (int)a <= 122){
        printf("%c는 소문자입니다.", a);
    }else{
        printf("%c는 특수문자입니다.", a);
    }
    
}

void CheckLeapYear(int year){
    
    if( year % 4 == 0  &&  ( year % 100 != 0 || year % 400 == 0 )   ){
        printf("%d년은 윤년입니다.\n", year);
    }else{
        printf("%d년은 윤년이 아닙니다.\n", year);
    }
}






int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        CheckAlphabet('2');
        
        CheckLeapYear(2016);
        CheckLeapYear(2000);//윤년
        CheckLeapYear(2004);
        CheckLeapYear(2100);
        
    }
    return 0;
}
