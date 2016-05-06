//
//  ViewController.m
//  MyCalculator
//
//  Created by ChoiSeok on 2016. 5. 4..
//  Copyright © 2016년 ChoiSeok. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //데이터 초기화
    [self initData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// 초기화

-(void) initData
{
    resultNum = 0;
    operatorBuffer = @"";
    displayText = @"";
    [self.displayTextField setText:[NSString stringWithFormat:@"%zd", resultNum]];
}

//산술연산

-(void) operationAdd:(NSInteger) secondNum
{
    resultNum = resultNum + secondNum;
}

-(void) operationSub:(NSInteger) secondNum
{
    resultNum = resultNum - secondNum;
}

-(void) operationMultiple:(NSInteger) secondNum
{
    resultNum = resultNum * secondNum;
}

-(void) operationDevide:(NSInteger) secondNum
{
    resultNum = resultNum / secondNum;
}












-(IBAction)onTouchUpInsideNumberBtn:(id)sender
{
    NSString *numberStr = ((UIButton*)sender).titleLabel.text;
    displayText = [displayText stringByAppendingString:numberStr];
    
    [self.displayTextField setText:displayText];
}










-(IBAction)onTouchUpInsideOperationBtn:(UIButton *)sender
{
    //처음에는 숫자가 들어가야 한다.
    if(displayText.length >0){

        //기존의 display에 있는 숫자를 결과에 추가한다.
        [self operaingWithSecondNum:displayText.integerValue];
        
        //result(결과값)을 텍스트로 변경해서 표시
        [self.displayTextField setText:[NSString stringWithFormat:@"%zd",resultNum]];
        
        //displaytext  지우기
        displayText = @"";
        
        //operation 버퍼에 넣는다
        operatorBuffer =sender.titleLabel.text;
    }
    else
    {
        //연산기호 변경(연산기호를 연속으로 눌렀을 경우 마지막의 것으로 연산)
        if(operatorBuffer.length !=0)
{
            operatorBuffer = sender.titleLabel.text;
        }
    }
}









-(void)operaingWithSecondNum:(NSInteger)num
{
    if (operatorBuffer.length != 0)
    {
        if ([operatorBuffer isEqualToString:@"+"])
        {//더하기연산
            [self operationAdd:num];
        }
        
        else if ([operatorBuffer isEqualToString:@"-"])
        {//빼기 연산
            [self operationSub:num];
        }
        
        else if ([operatorBuffer isEqualToString:@"*"])
        {//곱하기 연산
            [self operationMultiple:num];
        }
        
        else if ([operatorBuffer isEqualToString:@"/"])
        {//나누기 연산
            [self operationDevide:num];
        }
        
        else
        {
            NSLog(@"error");
        }
    
    }else
        {
            resultNum = num;
        }
}






-(IBAction)onTouchUpInsideResultBtn:(id)sender
{}
-(IBAction)onTouchUpInsideCancelBtn:(id)sender
{
    [self initData];
}




@end
