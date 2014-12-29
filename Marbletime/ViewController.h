//
//  ViewController.h
//  Marbletime
//
//  Created by 大氣 on 2014/10/07.
//  Copyright (c) 2014年 大氣. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GameFeatKit/GFIconController.h>
#import <GameFeatKit/GFIconView.h>
#import <GameFeatKit/GFPopupView.h>
int number;
@interface ViewController : UIViewController <GFPopupViewDelegate>{
    UIButton *LevelBtn[10];
    UIButton *superbtn;
    UILabel *specilLabel;
    GFIconController *gfIconController;
    
}

@end
