//
//  main.m
//  DDayProg
//
//  Created by ChoiSeok on 2016. 5. 8..
//  Copyright © 2016년 ChoiSeok. All rights reserved.
//

#import <Foundation/Foundation.h>

// 전역 변수
int day;
int month;
int year;

//입력받은 8자리 날짜 매개변수를 단위별로 끊어주는 함수
void SetyyMMdd(int date){
    int bufferNum = date;
    
    day =bufferNum % 100 ;
    bufferNum /= 100;
    month = bufferNum % 100 ;
    year = bufferNum / 100 ;
}


//달을 일자수로 변환시켜 남은 일자와 합치는 함수

int MonthWithday(int month, int day){
    //해당 달까지의 끝자리들을 누적시킬 변수
    int lastDay = 0;
    
    for( int i = 1 ; i< month ; i++){
    //달의 일자 계산하기(switch-case문 활용)
        switch(month){
            case 2 :
                lastDay = 28 ;
                break ;
            case 4 : case 6 : case 9 : case 11 :
                lastDay = 30 ;
                break;
            default :
                lastDay = 31 ;
                break;
        }
        lastDay += lastDay;
    }
    // 누적된 일자로 변환한 월 + 남은 일자
    
    int monthWithDay = lastDay + day ;
    
    return monthWithDay;
    
}



void DDay(int dayEvent, int dayBase){
    //최근에 (가까운 날짜)와 (먼 날짜)를 구분하는 변수를 선언
    int pastDate;                   int pastDay; int pastMonth; int pastYear;
    int recentDate;                 int recentDay; int recentMonth; int recentYear;
    
    
    //어떤 일자가 더 최근인지 알아본다. + 설정한다.
    if(dayBase - dayEvent > 0){recentDate = dayBase; pastDate = dayEvent ;}
                          else{recentDate = dayEvent; pastDate = dayBase ;} ;
    
    
    //주어진 매개변수를 년/월/일로 나누어서 세팅
    SetyyMMdd(pastDate);
    pastDay = day ;
    pastMonth = month;
    pastYear = year;
                        printf("더 옛날 날짜는 %d년 %d월 %d일 입니다.\n",pastYear,pastMonth,pastDay);
    
    
    SetyyMMdd(recentDate);
    recentDay = day ;
    recentMonth = month ;
    recentYear = year ;
                        printf("더 최근 날짜는 %d년 %d월 %d일 입니다.\n\n",recentYear,recentMonth,recentDay);
    
    
    //연도별 날짜를 연산(365일자 단위)
    int subYear = (recentYear - pastYear);
    int subYearToDate = subYear * 365 ;
                        printf("연도 차이는 일자로는 %d일 입니다.\n\n",subYearToDate);
    
    
    
    
    
    
    //윤년 케이스 연산(for문 + 윤년 연산 함수)
    for(int testYear = pastYear ; testYear < recentYear ; testYear++){
            if( testYear % 4 == 0  &&  ( testYear % 100 != 0 || testYear % 400 == 0 )   ){
                printf("\n %d년이 윤년이라 하루를 더합니다.\n \n",testYear);
                subYearToDate = subYearToDate + 1;
            }
        printf("윤년 연산 결과 %d일임이 확정되었습니다. \n",subYearToDate);
    }

    
    //남은 달수랑 일자 처리 함수 호출
    int pastMonthWithDay = MonthWithday(pastMonth, pastDay);
    int recentMonthWithDay = MonthWithday(recentMonth, recentDay);
    
    //각각의 일자 연산 후 변수에 저장
    int subMonthWithDay = 0;
    if(recentMonthWithDay - pastMonthWithDay > 0){subMonthWithDay = recentMonthWithDay - pastMonthWithDay;}
    else{ subYearToDate = subYearToDate - 365 ; subMonthWithDay = (recentMonthWithDay+365) - pastMonthWithDay ;} ;
    
    
    int lastDateResult = subYearToDate + subMonthWithDay;
    
    SetyyMMdd(dayBase) ;
    int baseDay = day ;
    int baseMonth = month;
    int baseYear = year;
    
    printf("D-Day는 기준일 %d년 %d월 %d일 로부터 %d일 차이가 납니당~\n",baseDay,baseMonth,baseYear,lastDateResult);
    


}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        DDay(20120831, 20160509);
        
    }
    return 0;
}
