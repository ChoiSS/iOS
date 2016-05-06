//
//  main.m
//  반복문
//
//  Created by ChoiSeok on 2016. 5. 5..
//  Copyright © 2016년 ChoiSeok. All rights reserved.
//

#import <Foundation/Foundation.h>



void Factorial(int number){
    int result = 1;
    for(int i = 1 ; i <= number ; i++){
        result = result * i ;
    }
    printf("%d",result);
}




void game369(int num)
{
    
    
    //입력된 숫자까지의 모든 숫자를 검토한다
    for (int i = 1; i <= num ; i++) {
        //검사 할 순서의 값을 자릿수별 계산을 위해 별도 저장
        int underCalNum = i;
        //*를 찍을 때와 안찍을 때 구분용 불린값
        BOOL flag = false ;
        
        //검사값의 각 자릿수에 3,6,9가 있는지 확인
        while(underCalNum > 0){
            int lastNum = underCalNum % 10;
            if((lastNum % 3 == 0) && (lastNum != 0 )){
                flag = true;
                break;
            }
            underCalNum = underCalNum / 10;
            
        }
        
        
        
        // true 일 경우 *을, 아니면 숫자를 출력한다.
        if (flag == true) {
            printf("* \n");
        } else {
            printf("%d \n", i);
        }
        
    }
}


int main(int argc, const char * argv[]){
    @autoreleasepool {
        game369(1333);
        
        //Factorial(5);
        
        //구구단
        //for(int i = 1; i < 10 ; i++ ){
        //printf("%d단은 다음과 같습니다.\n",i);
        //for(int d = 1; d < 10 ; d++){
        //printf("%d * %d = %d\n",  i, d, d*i);
        //}
        //}
        
    }
    return 0;
}






