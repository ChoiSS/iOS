//
//  ViewController.h
//  MyCalculator
//
//  Created by ChoiSeok on 2016. 5. 4..
//  Copyright © 2016년 ChoiSeok. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController



{
    
//계산 후 결과값 저장될 변수
NSInteger resultNum;

    
//연산자
NSString *operatorBuffer;
    
    
//화면 표시 내용
NSString *displayText;

    
}



//UITextField
@property (nonatomic, weak) IBOutlet UITextField *displayTextField;

@end

