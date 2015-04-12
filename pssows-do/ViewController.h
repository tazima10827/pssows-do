//
//  ViewController.h
//  pssows-do
//
//  Created by 田嶋智洋 on 2014/11/29.
//  Copyright (c) 2014年 田嶋智洋. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
        IBOutlet UILabel *resultLabel1 ;   //結果(1番右のラベル)
        IBOutlet UILabel *resultLabel2 ;   //結果(2番右のラベル)
        IBOutlet UILabel *resultLabel3 ;   //結果(3番右のラベル)
        IBOutlet UILabel *resultLabel4 ;   //結果(4番右のラベル)
        IBOutlet UILabel *resultLabel5 ;   //結果(5番右のラベル)
        IBOutlet UILabel *countLabel ;   //結果(1番右のラベル)
        IBOutlet UIBarButtonItem *start ;   //結果(1番右のラベル)
    
    int pas;
    int password;
}


@end

