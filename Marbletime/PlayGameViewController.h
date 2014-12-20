//
//  PlayGameViewController.h
//  Marbletime
//
//  Created by 大氣 on 2014/10/07.
//  Copyright (c) 2014年 大氣. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <AVFoundation/AVFoundation.h>
int clearcount[10];
NSUserDefaults *countUD[10];

int specilCount;

NSUserDefaults *specilUD;

@interface PlayGameViewController : UIViewController{
    int count[10];
    IBOutlet   UIImageView *desk; //背景の設定
    UIImageView *ball[10];//静止しているビー玉
    UIImageView  *GameOver;//ゲームオーバーの画像
    
    UIImageView *mainBidama;//メインのビー玉
    NSTimer *timer; //ビー玉動かす用のTimer
    bool moving;
    NSTimer *speedTimer;
    
    int Playtime;
    NSTimer *PlayTimers; //Play時間用のTimer
    IBOutlet UILabel *TimeLabel; //タイムを表示
    
    float speed;  //speedを取りたい
    
    float ballMoveX ,ballMoveY;
    
    double degree;  //ビー玉の進行方向用角度
    CGPoint startPoint,endPoint;    //タップ初めと終わりの座標習得
    CGFloat moveX,moveY;
    
    AVAudioPlayer *audio;
    AVAudioPlayer *audio2;
    AVAudioPlayer *clearAudio;
    AVAudioPlayer *gameOverAudio;
    
    
    IBOutlet UILabel * specilLabel;
    int special ; //スペシャルコースに使う
    
    UIButton *home;//ホームへ戻るボタン
    
    UIButton *saikai;//再開するボタン
    
    UIButton *mouitido ;
    
    UIButton *clearbtn;
  
    UIButton *Endbtn;
    float  distance[10];
    
    
    IBOutlet UILabel *LebelLabel;

}

@end
