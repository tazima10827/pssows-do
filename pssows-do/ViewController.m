//
//  ViewController.m
//  pssows-do
//
//  Created by 田嶋智洋 on 2014/11/29.
//  Copyright (c) 2014年 田嶋智洋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
        resultLabel1.text = @"0";
        resultLabel2.text = @"0";
        resultLabel3.text = @"0";
        resultLabel4.text = @"0";
        resultLabel5.text = @"0";
        //countLabel.text = @"0";
        password = arc4random() % 90000;

}


 -(IBAction)start {
 //1が10000より小さい間ループ。
     for(int i=0 ;i<90000;i = i+1){
         //カウント中の数字をcountLabelにする
         int k = i;
          int digit[5];
         for (int j = 0 ; j < 5 ; j++){
             digit[j] = (k % 10); //j桁目の数字
             k =k / 10;
         }

         resultLabel1.text = [NSString stringWithFormat:@"%d",digit[0]];
         resultLabel2.text = [NSString stringWithFormat:@"%d",digit[1]];
         resultLabel3.text = [NSString stringWithFormat:@"%d",digit[2]];
         resultLabel4.text = [NSString stringWithFormat:@"%d",digit[3]];
         resultLabel5.text = [NSString stringWithFormat:@"%d",digit[4]];
         
        
         //処理を0.0005秒、待機する。
         [[NSRunLoop currentRunLoop]
          runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.0000009]
          ];
         
         if(i == password){ //passwordと一致した場合
             break;
         }
     }
 
 }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
