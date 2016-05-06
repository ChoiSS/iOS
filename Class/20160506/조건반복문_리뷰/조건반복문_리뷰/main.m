//
//  main.m
//  조건반복문_리뷰
//
//  Created by ChoiSeok on 2016. 5. 6..
//  Copyright © 2016년 ChoiSeok. All rights reserved.
//

#import <Foundation/Foundation.h>

////// $각 자리수 더하는 함수
void AddAllNum(int a){
    //더한 수의 결과값 누적 변수
    int resultNum = 0;
    // 받아온 값을 요리하기 위해 따로 저장한 변수
    int num = a;
    
    while(num > 0){
        // 끝자리수만 떼오기
        int lastNum = num % 10;
        // 끝자리수 합계 누적
        resultNum += lastNum;
        //끝자리를 제외한 수 만들기
        num = num / 10;
    }
    printf("%d\n",resultNum);
    
}


////// $두 수 사이의 5의 배수의 삼각수 함수
void FivesBetweenTwoNum(int a, int b){
    //입력받은 수 중 큰값과 작은 값 구분하는 변수
    int min = 0;
    int max = 0;
    //5의 배수가 저장 변수
    int fiveNum = 0;
    //찾아진 배수의 삼각수 저장 변수
    int numOfTriangle = 0;
    
    //어떤 값이 더 큰지 판단
    if(a - b > 0){
        max = a;
        min = b;
    }else{
        max = b;
        min = a;
    }
    
    
    //주어진 값 사이의 모든 숫자 추출
    for(int i = min ; i <= max ; i++ ){
        //추출된 숫자 중 5의 배수 추출
        if(i % 5 == 0 && i != 0){
            fiveNum = i;
            //추출된 5의 배수를 삼각수 함수 호출하여 연산
            numOfTriangle = NumTriangle(fiveNum);
            //출력
            printf("%d\n", numOfTriangle);
        }
    }
    
}


////// $삼각수 함수
int NumTriangle(int a){
    //결과값이 저정될 변수 지정
    int resultNum = 0 ;
    //주어진 숫자에서 하나씩 내림차순으로 추출
    for(int i = a ; i > 0 ; i--){
        //결과값에 내린 자릿수 누적
        resultNum = resultNum + i;
    }
    printf("%d\n",resultNum);
    return resultNum;
}


//////  $스왑함수
void Swap(int a, int b){
    //입력 받은 수 출력
    printf("입력받은 수는 %d, %d 입니다.\n", a, b);

    //중간에 값을 임시 저장해 둘 변수 지정
    int swap_stop = 0;
    //중간임시 변수에 값 하나 저장
    swap_stop = a;
    //임시변수에 값을 저장한 변수의 원본값 변환
    a = b;
    //남은 변수에 임시저장 값(타변수)의 값 저장
    b = swap_stop;
    
    //출력
    printf("바뀌어진 수는 %d, %d 입니다.\n", a, b);
}

////// $메인함수
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //AddAllNum(118);
        
        //FivesBetweenTwoNum(5, 10);
        
        //NumTriangle(10);
        
        //Swap(3, 4);

    }
    return 0;
}
