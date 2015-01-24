//
//  ViewController.h
//  Marbletime
//
//  Created by 大氣 on 2014/10/07.
//  Copyright (c) 2014年 大氣. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <GameFeatKit/GFIconController.h>
#import <GameFeatKit/GFIconView.h>
#import <GameFeatKit/GFPopupView.h>
#import "GADInterstitial.h"
#import "GADInterstitialDelegate.h"

int number;
@interface ViewController : UIViewController <GFPopupViewDelegate,GADInterstitialDelegate>{
    UIButton *LevelBtn[10];
    UIButton *superbtn;
    UILabel *specilLabel;
    GFIconController *gfIconController;
    
    GADInterstitial *interstitial_;
}

@end
