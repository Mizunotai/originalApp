//
//  PlayGameViewController.m
//  Marbletime
//
//  Created by 大氣 on 2014/10/07.
//  Copyright (c) 2014年 大氣. All rights reserved.
//

#import "PlayGameViewController.h"
#import "ViewController.h"
@interface PlayGameViewController ()

@end

@implementation PlayGameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    UIImage *image1 =[UIImage imageNamed:@"desk.jpg"];
    [desk setImage:image1];
    
    LebelLabel.text =[NSString stringWithFormat:@"Level%d",number];
    
    if (number < 10) {
        specilLabel.hidden = YES;
    }

    
    //Play用のタイマー
    count[0]=0;
    count[1]=0;
    count[2]=0;
    count[3]=0;
    count[4]=0;
    count[5]=0;
    count[6]=0;
    count[7]=0;
    count[8]=0;
    count[9]=0;
    
    Playtime = 30.0;
    PlayTimers = [NSTimer scheduledTimerWithTimeInterval:1
                                                  target:self
                                                selector:@selector(playtime:)
                                                userInfo:nil
                                                 repeats:YES];
    TimeLabel.text = [NSString stringWithFormat:@"%.d ",Playtime];
    
    
    // メインのビー玉を追加
    UIImage *MainBidamaimg = [UIImage imageNamed:@"main_bidama.png"];
    mainBidama = [[UIImageView alloc] initWithImage:MainBidamaimg];
    mainBidama.frame = [[UIScreen mainScreen]  bounds];
    CGRect rect= CGRectMake(self.view.frame.size.width/2 - 20,self.view.frame.size.height-100, 40,  40);
    mainBidama.frame = rect;
    [self.view addSubview:mainBidama];
   
    
    /*固定ボールの追加*/
    //1
    UIImage *ballimg1 = [UIImage imageNamed:@"ball.png"];
    ball[0]= [[UIImageView alloc] initWithImage:ballimg1];
    ball[0].frame = [[UIScreen mainScreen]  bounds];
    CGRect rect1= CGRectMake(400,400, 35,  35);
    ball[0].frame = rect1;
    
    //2
    UIImage *ballimg2 = [UIImage imageNamed:@"ball.png"];
    ball[1]= [[UIImageView alloc] initWithImage:ballimg2];
    ball[1].frame = [[UIScreen mainScreen]  bounds];
    CGRect rect2= CGRectMake(400,400, 35,  35);
    ball[1].frame = rect2;
    
    //3
    UIImage *balling3 =[UIImage imageNamed:@"ball.png"];
    ball[2]=[[UIImageView alloc] initWithImage:balling3];
    ball[2].frame = [[UIScreen mainScreen] bounds];
    CGRect rect3 = CGRectMake(400,400, 35, 35);
    ball[2].frame =rect3;
    
    //4
    UIImage *balling4 =[UIImage imageNamed:@"ball.png"];
    ball[3]=[[UIImageView alloc] initWithImage:balling4];
    ball[3].frame = [[UIScreen mainScreen] bounds];
    CGRect rect4 = CGRectMake(400, 400, 35, 35);
    ball[3].frame =rect4;
    
    //5
    UIImage *balling5 =[UIImage imageNamed:@"ball.png"];
    ball[4]=[[UIImageView alloc] initWithImage:balling5];
    ball[4].frame = [[UIScreen mainScreen] bounds];
    CGRect rect5= CGRectMake(400,400, 35, 35);
    ball[4].frame =rect5;
    
    //6
    UIImage *balling6 =[UIImage imageNamed:@"ball.png"];
    ball[5]=[[UIImageView alloc] initWithImage:balling6];
    ball[5].frame = [[UIScreen mainScreen] bounds];
    CGRect rect6= CGRectMake(400,400, 35, 35);
    ball[5].frame =rect6;
    
    //7
    UIImage *balling7 =[UIImage imageNamed:@"ball.png"];
    ball[6]=[[UIImageView alloc] initWithImage:balling7];
    ball[6].frame = [[UIScreen mainScreen] bounds];
    CGRect rect7= CGRectMake(400,400, 35, 35);
    ball[6].frame =rect7;
    
    //8
    UIImage *balling8 =[UIImage imageNamed:@"ball.png"];
    ball[7]=[[UIImageView alloc] initWithImage:balling8];
    ball[7].frame = [[UIScreen mainScreen] bounds];
    CGRect rect8= CGRectMake(400,400, 35, 35);
    ball[7].frame =rect8;
    
    //9
    UIImage *balling9 =[UIImage imageNamed:@"ball.png"];
    ball[8]=[[UIImageView alloc] initWithImage:balling9];
    ball[8].frame = [[UIScreen mainScreen] bounds];
    CGRect rect9= CGRectMake(400,400, 35, 35);
    ball[8].frame =rect9;
    
    //10
    UIImage *balling10 =[UIImage imageNamed:@"ball.png"];
    ball[9]=[[UIImageView alloc] initWithImage:balling10];
    ball[9].frame = [[UIScreen mainScreen] bounds];
    CGRect rect10= CGRectMake(400,400, 35, 35);
    ball[9].frame =rect10;
    
    
    
    
    
    
    if (number == 1) {
        
        //1個目の座標
        ball[0].center = CGPointMake(50, 40);
        [self.view addSubview:ball[0]];
        
        //2個目の座標
        ball[1].center = CGPointMake(299, 47);
        [self.view addSubview:ball[1]];
        
        //3個目の座標
        ball[2].center = CGPointMake(300, 300);
        [self.view addSubview:ball[2]];
        
    }
    
    if(number ==2) {
        
        //1個目の座標
        ball[0].center = CGPointMake(165, 88);
        [self.view addSubview:ball[0]];
        //２個目の座票
        ball[1].center = CGPointMake(300, 333);
        [self.view addSubview:ball[1]];
        //3個目の座標
        ball[2].center = CGPointMake(19, 222);
        [self.view addSubview:ball[2]];
        //4個目の座標
        ball[3].center = CGPointMake(45, 14);
        [self.view addSubview:ball[3]];
        
    }else if (number == 3){
        
        //1個目の座表
        ball[0].center = CGPointMake(33, 188);
        [self.view addSubview:ball[0]];
        //２個目の座票
        ball[1].center = CGPointMake(156, 150);
        [self.view addSubview:ball[1]];
        //3個目の座標
        ball[2].center = CGPointMake(99, 278);
        [self.view addSubview:ball[2]];
        //4個目の座標
        ball[3].center = CGPointMake(204, 33);
        [self.view addSubview:ball[3]];
        //５個目の座標
        ball[4].center = CGPointMake(243,333);
        [self.view addSubview:ball[4]];
        
    }else if (number == 4){
        //1個目の座表
        ball[0].center = CGPointMake(34, 188);
        [self.view addSubview:ball[0]];
        //２個目の座票
        ball[1].center = CGPointMake(156, 57);
        [self.view addSubview:ball[1]];
        //3個目の座標
        ball[2].center = CGPointMake(278, 278);
        [self.view addSubview:ball[2]];
        //4個目の座標
        ball[3].center = CGPointMake(204, 300);
        [self.view addSubview:ball[3]];
        //５個目の座標
        ball[4].center = CGPointMake(39,39);
        [self.view addSubview:ball[4]];
        //６個目の座標
        ball[5].center=CGPointMake(100,100);
        [self.view addSubview:ball[5]];
        
    }else if (number == 5){
        //1個目の座表
        ball[0].center = CGPointMake(17,17);
        [self.view addSubview:ball[0]];
        //２個目の座票
        ball[1].center = CGPointMake(300, 400);
        [self.view addSubview:ball[1]];
        //        //3個目の座標
        ball[2].center = CGPointMake(100, 278);
        [self.view addSubview:ball[2]];
        //        //4個目の座標
        ball[3].center = CGPointMake(300,17);
        [self.view addSubview:ball[3]];
        //        //５個目の座標
        ball[4].center = CGPointMake(200,100);
        [self.view addSubview:ball[4]];
        //        //６個目の座標
        ball[5].center=CGPointMake(50,200);
        [self.view addSubview:ball[5]];
        
        //7個目の座標
        ball[6].center = CGPointMake(250, 250);
        [self.view addSubview:ball[6]];
        
    }else if (number == 6){
        //1個目の座表
        ball[0].center = CGPointMake(17,240);
        [self.view addSubview:ball[0]];
        //        //２個目の座票
        ball[1].center = CGPointMake(120, 240);
        [self.view addSubview:ball[1]];
        //        //        //3個目の座標
        ball[2].center = CGPointMake(220, 240);
        [self.view addSubview:ball[2]];
        //        //        //4個目の座標
        ball[3].center = CGPointMake(310,240);
        [self.view addSubview:ball[3]];
        //        //        //５個目の座標
        ball[4].center = CGPointMake(200,100);
        [self.view addSubview:ball[4]];
        //        //        //６個目の座標
        ball[5].center=CGPointMake(50,350);
        [self.view addSubview:ball[5]];
        //
        //7個目の座標
        ball[6].center = CGPointMake(250, 350);
        [self.view addSubview:ball[6]];
        
        //８個目の座標
        ball[7].center = CGPointMake(60, 100);
        [self.view addSubview:ball[7]];
        
    }else if (number == 7){
        //1個目の座表
        ball[0].center = CGPointMake(17,200);
        [self.view addSubview:ball[0]];
        //        //        //２個目の座票
        ball[1].center = CGPointMake(17, 100);
        [self.view addSubview:ball[1]];
        //        //        //        //3個目の座標
        ball[2].center = CGPointMake(100, 100);
        [self.view addSubview:ball[2]];
        //        //        //        //4個目の座標
        ball[3].center = CGPointMake(183,100);
        [self.view addSubview:ball[3]];
        //        //        //        //５個目の座標
        ball[4].center = CGPointMake(266,100);
        [self.view addSubview:ball[4]];
        //        //        //        //６個目の座標
        ball[5].center=CGPointMake(266,200);
        [self.view addSubview:ball[5]];
        //        //
        //        //7個目の座標
        ball[6].center = CGPointMake(266, 300);
        [self.view addSubview:ball[6]];
        //
        //        //８個目の座標
        ball[7].center = CGPointMake(266, 400);
        [self.view addSubview:ball[7]];
        
        //9個目の座標
        ball[8].center = CGPointMake(17, 150);
        [self.view addSubview:ball[8]];
        
    }else if (number == 8){
        //1個目の座表
        ball[0].center = CGPointMake(17,200);
        [self.view addSubview:ball[0]];
        //２個目の座票
        ball[1].center = CGPointMake(17, 100);
        [self.view addSubview:ball[1]];
        //        //3個目の座標
        ball[2].center = CGPointMake(17, 300);
        [self.view addSubview:ball[2]];
        //4個目の座標
        ball[3].center = CGPointMake(17,400);
        [self.view addSubview:ball[3]];
        //５個目の座標
        ball[4].center = CGPointMake(117,100);
        [self.view addSubview:ball[4]];
        //６個目の座標
        ball[5].center=CGPointMake(217,100);
        [self.view addSubview:ball[5]];
        //        //7個目の座標
        ball[6].center = CGPointMake(300, 100);
        [self.view addSubview:ball[6]];
        //８個目の座標
        ball[7].center = CGPointMake(300,200);
        [self.view addSubview:ball[7]];
        
        //9個目の座標
        ball[8].center = CGPointMake(300, 300);
        [self.view addSubview:ball[8]];
        
        //10個目の座標
        ball[9].center = CGPointMake(300, 400);
        [self.view addSubview:ball[9]];
        
    }else if (number == 9){
        //1個目の座表
        ball[0].center = CGPointMake(17,70);
        [self.view addSubview:ball[0]];
        //２個目の座票
        ball[1].center = CGPointMake(300, 70);
        [self.view addSubview:ball[1]];
        //3個目の座標
        ball[2].center = CGPointMake(161, 70);
        [self.view addSubview:ball[2]];
        //4個目の座標
        ball[3].center = CGPointMake(17,300);
        [self.view addSubview:ball[3]];
        //５個目の座標
        ball[4].center = CGPointMake(161,300);
        [self.view addSubview:ball[4]];
        //６個目の座標
        ball[5].center=CGPointMake(300,300);
        [self.view addSubview:ball[5]];
        //7個目の座標
        ball[6].center = CGPointMake(17, 200);
        [self.view addSubview:ball[6]];
        //８個目の座標
        ball[7].center = CGPointMake(17,400);
        [self.view addSubview:ball[7]];
        
        //9個目の座標
        ball[8].center = CGPointMake(300, 200);
        [self.view addSubview:ball[8]];
        
        //10個目の座標
        ball[9].center = CGPointMake(300, 400);
        [self.view addSubview:ball[9]];
        
    }else if (number ==10){
       
        
        special = arc4random_uniform(15) ;
        NSLog(@"ランダムな数字は%d",special);
        
        if (special == 0) {
            ball[1].center = CGPointMake(17, 100);
            [self.view addSubview:ball[1]];
        }
        if (special == 1) {
            ball[1].center = CGPointMake(117,100);
            [self.view addSubview:ball[1]];
            
        }
        if (special ==2) {
            ball[1].center = CGPointMake(217,100);
            [self.view addSubview:ball[1]];
            
        }
        if (special == 3) {
            ball[1].center = CGPointMake(300,100);
            [self.view addSubview:ball[1]];
            
        }
        if (special == 4) {
            ball[1].center = CGPointMake(17,200);
            [self.view addSubview:ball[1]];
            
        }
        if (special == 5) {
            ball[1].center = CGPointMake(117,200);
            [self.view addSubview:ball[1]];
            
        }
        if (special == 6) {
            ball[1].center = CGPointMake(217,200);
            [self.view addSubview:ball[1]];
            
        }
        if (special == 7) {
            ball[1].center = CGPointMake(300,200);
            [self.view addSubview:ball[1]];
            
        }
        if (special == 8) {
            ball[1].center = CGPointMake(17,300);
            [self.view addSubview:ball[1]];
            
        }
        if (special == 9) {
            ball[1].center = CGPointMake(117,300);
            [self.view addSubview:ball[1]];
            
        }
        
        if (special==10) {
            ball[1].center = CGPointMake(217,300);
            [self.view addSubview:ball[1]];
            
        }
        if (special == 11) {
            ball[1].center = CGPointMake(300,300);
            [self.view addSubview:ball[1]];
            
        }
        if (special == 12) {
            ball[1].center = CGPointMake(17,400);
            [self.view addSubview:ball[1]];
            
        }
        if (special == 13) {
            ball[1].center = CGPointMake(117,400);
            [self.view addSubview:ball[1]];
            
        }
        if (special == 14) {
            ball[1].center = CGPointMake(217,400);
            [self.view addSubview:ball[1]];
            
        }
        if (special == 15) {
            ball[1].center = CGPointMake(300,400);
            [self.view addSubview:ball[1]];
            
        }
        specilCount =0;
    }
    
    
    
    
    
    
    
    
    
    //PanGestureの導入
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]
                                          initWithTarget:self action:@selector(panAction:)];
    panGesture.maximumNumberOfTouches = 5;  //指は最大1本まで反応
    [mainBidama addGestureRecognizer:panGesture];   //ビー玉にPanGesture追加
    
    
    //ビー玉を触れるように
    mainBidama.userInteractionEnabled = YES;
    
    //効果音の設定
    NSString *soundFilePath =
    [[NSBundle mainBundle] pathForResource: @"audio"
                                    ofType: @"mp3"];
    NSURL *fileURL =
    [[NSURL alloc] initFileURLWithPath: soundFilePath];
    
    audio =
    [[AVAudioPlayer alloc] initWithContentsOfURL: fileURL
                                           error: nil];
    [audio prepareToPlay];
    [audio play];
    
    NSString *sound =
    [[NSBundle mainBundle] pathForResource:@"bidama"
                                    ofType:@"mp3"];
    NSURL *soundURL =
    [[NSURL alloc]initFileURLWithPath:sound ];
    audio2 =
    [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:nil];
    [audio2 prepareToPlay];
    
    NSString *clearsound=[[NSBundle mainBundle] pathForResource:@"クリア" ofType:@"mp3"];
    NSURL *clearURL=[[NSURL alloc ]initFileURLWithPath:clearsound];
    clearAudio =[[AVAudioPlayer alloc]initWithContentsOfURL:clearURL error:nil];
    
    NSString *gameoversound =[[NSBundle mainBundle] pathForResource:@"Game Over" ofType:@"mp3"];
    NSURL *gameoverURL=[[NSURL alloc]initFileURLWithPath:gameoversound];
    gameOverAudio =[[AVAudioPlayer alloc]initWithContentsOfURL:gameoverURL error:nil];
    
    
    home =[[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2 - 25, 186,50, 50)];
    
    mouitido =[[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-100  , 186, 50, 50)];
    
    saikai =[[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2+45  , 186, 50,50)];
    

   
    

}
//ビー玉動かす用のTimerメソッド

- (void)ballMove:(NSTimer *)_timer {
    

    
    
    CGRect main = [[UIScreen mainScreen] applicationFrame];
    
    mainBidama.center = CGPointMake(mainBidama.center.x + ballMoveX/speed, mainBidama.center.y + ballMoveY/speed);
    
    
    //ビー玉と横壁の当たり判定
    if(mainBidama.center.x - mainBidama.bounds.size.width / 2 < 0){
        ballMoveX = - ballMoveX;
        //    speed += 0.01;
    }
    if(mainBidama.center.x +mainBidama.bounds.size.width / 2 > main.size.width){
        ballMoveX = - ballMoveX;
        //    speed += 0.01;
    }
    // ビー玉と縦壁の当たり判定
    if(mainBidama.center.y - mainBidama.bounds.size.height / 2 < 0){
        ballMoveY = - ballMoveY;
        //    speed += 0.01;
    }
    if(mainBidama.center.y +mainBidama.bounds.size.height / 2 > main.size.height){
        ballMoveY = - ballMoveY;
        //    speed += 0.01;
    }
    
    
    distance[0] = (mainBidama.center.x - ball[0].center.x)*(mainBidama.center.x - ball[0].center.x)
    +(mainBidama.center.y - ball[0].center.y)*(mainBidama.center.y- ball[0].center.y);
    
    distance[1] = (mainBidama.center.x - ball[1].center.x)*(mainBidama.center.x - ball[1].center.x)
    +(mainBidama.center.y - ball[1].center.y)*(mainBidama.center.y- ball[1].center.y);
    
    distance[2] = (mainBidama.center.x - ball[2].center.x)*(mainBidama.center.x - ball[2].center.x)
    +(mainBidama.center.y - ball[2].center.y)*(mainBidama.center.y- ball[2].center.y);
    
    distance[3] = (mainBidama.center.x - ball[3].center.x)*(mainBidama.center.x - ball[3].center.x)
    +(mainBidama.center.y - ball[3].center.y)*(mainBidama.center.y- ball[3].center.y);
    
    distance[4] = (mainBidama.center.x - ball[4].center.x)*(mainBidama.center.x - ball[4].center.x)
    +(mainBidama.center.y - ball[4].center.y)*(mainBidama.center.y- ball[4].center.y);
    
    distance[5] = (mainBidama.center.x - ball[5].center.x)*(mainBidama.center.x - ball[5].center.x)
    +(mainBidama.center.y - ball[5].center.y)*(mainBidama.center.y- ball[5].center.y);
    
    distance[6] = (mainBidama.center.x - ball[6].center.x)*(mainBidama.center.x - ball[6].center.x)
    +(mainBidama.center.y - ball[6].center.y)*(mainBidama.center.y- ball[6].center.y);
    
    distance[7] = (mainBidama.center.x - ball[7].center.x)*(mainBidama.center.x - ball[7].center.x)
    +(mainBidama.center.y - ball[7].center.y)*(mainBidama.center.y- ball[7].center.y);
    
    distance[8] = (mainBidama.center.x - ball[8].center.x)*(mainBidama.center.x - ball[8].center.x)
    +(mainBidama.center.y - ball[8].center.y)*(mainBidama.center.y- ball[8].center.y);
    
    distance[9] = (mainBidama.center.x - ball[9].center.x)*(mainBidama.center.x - ball[9].center.x)
    +(mainBidama.center.y - ball[9].center.y)*(mainBidama.center.y- ball[9].center.y);
    
    if (distance[0]<40*40) {
        
        if (number == 10) {
            [ball[0] removeFromSuperview];
            speed += 10.0;
            specilCount ++;

        }
        
        if (number <=9) {
        //1個目のボールとの当たり判定
        ballMoveX=-ballMoveX;
        ballMoveY=-ballMoveY;
        // NSLog(@"ATARI:%.1f", distance);
        //ビー玉とボールが当たったあとにかわる画像
        UIImage *ballimag =[UIImage imageNamed:@"green_ball.png"];
        CGPoint point = ball[0].center;
        ball[0]=[[UIImageView alloc] initWithImage:ballimag];
        ball[0].center = point;
        [self.view addSubview:ball[0]];
        [audio2 play];
        }
        if (number ==1 ){
            count[0]=1;
        }
        if (number == 2){
            count[0] =2;
        }
        if (number ==3) {
            count[0] =3;
        }
        if (number == 4) {
            count[0]= 4;
        }
        if (number == 5) {
            count[0]=5;
        }
        if (number == 6) {
            count[0]=6;
        }
        if (number== 7) {
            count[0] = 7;
        }
        if (number == 8) {
            count[0]=8;
        }
        if (number == 9) {
            count[0]= 9;
        }
    }else {
        ballMoveX=+ballMoveX;
        ballMoveY=+ballMoveY;
        // NSLog(@"HAZURE:%.1f", distance);
        
    }
    
    
    if (distance[1]<40*40) {
        [audio2 play];

        if (number == 10) {
            NSLog(@"ATARI:%.1f", distance[1]);
            [ball[1] removeFromSuperview];
            speed += 10.0;
            specilCount ++;
            if ( specilCount %9 == 0) {
                NSLog(@"%d",specilCount);
                Playtime += 4;
                
                TimeLabel.text = [NSString stringWithFormat:@"%d",Playtime];
            }
            
            specilLabel.text =[NSString stringWithFormat:@"%d",specilCount];
        }
            if (number <= 9) {
            
            //2個目のボールとの当たり判定
            ballMoveX=-ballMoveX;
            ballMoveY=-ballMoveY;
            
            //ビー玉とボールが当たったあとにかわる画像
            UIImage *ballimag =[UIImage imageNamed:@"green_ball.png"];
            CGPoint point = ball[1].center;
            ball[1]=[[UIImageView alloc] initWithImage:ballimag];
            ball[1].center = point;
            [self.view addSubview:ball[1]];
            //        ball[1].hidden = YES;
                    }
        if (number ==1){
            count[1]=1;
            
        }
        if (number ==2) {
            count[1] =2;
        }
        if (number ==3) {
            count[1] =3;
        }
        if (number ==4) {
            count[1] =4;
        }
        if (number ==5) {
            count[1] =5;
        }
        if (number ==6) {
            count[1] =6;
        }
        if (number ==7) {
            count[1] =7;
        }
        if (number ==8) {
            count[1] =8;
        }
        if (number ==9) {
            count[1] =9;
        }
        if (number  == 10) {
            
            
            special = arc4random_uniform(15) ;
            NSLog(@"ランダムな数字は%d",special);
            
            if (special == 0) {
                ball[1].center = CGPointMake(17, 100);
                [self.view addSubview:ball[1]];
            }
            if (special == 1) {
                ball[1].center = CGPointMake(117,100);
                [self.view addSubview:ball[1]];
                
            }
            if (special ==2) {
                ball[1].center = CGPointMake(217,100);
                [self.view addSubview:ball[1]];
                
            }
            if (special == 3) {
                ball[1].center = CGPointMake(300,100);
                [self.view addSubview:ball[1]];
                
            }
            if (special == 4) {
                ball[1].center = CGPointMake(17,200);
                [self.view addSubview:ball[1]];
                
            }
            if (special == 5) {
                ball[1].center = CGPointMake(117,200);
                [self.view addSubview:ball[1]];
                
            }
            if (special == 6) {
                ball[1].center = CGPointMake(217,200);
                [self.view addSubview:ball[1]];
                
            }
            if (special == 7) {
                ball[1].center = CGPointMake(300,200);
                [self.view addSubview:ball[1]];
                
            }
            if (special == 8) {
                ball[1].center = CGPointMake(17,300);
                [self.view addSubview:ball[1]];
                
            }
            
            if (special == 9) {
                
                ball[1].center = CGPointMake(117,300);
                [self.view addSubview:ball[1]];
                
            }
            
            if (special==10) {
                ball[1].center = CGPointMake(217,300);
                [self.view addSubview:ball[1]];
                
            }
            if (special == 11) {
                ball[1].center = CGPointMake(300,300);
                [self.view addSubview:ball[1]];
                
            }
            if (special == 12) {
                ball[1].center = CGPointMake(17,400);
                [self.view addSubview:ball[1]];
                
            }
            if (special == 13) {
                ball[1].center = CGPointMake(117,400);
                [self.view addSubview:ball[1]];
                
            }
            if (special == 14) {
                ball[1].center = CGPointMake(217,400);
                [self.view addSubview:ball[1]];
                
            }
            if (special == 15) {
                ball[1].center = CGPointMake(300,400);
                [self.view addSubview:ball[1]];
                
            }
        }
    }else {
        ballMoveX=+ballMoveX;
        ballMoveY=+ballMoveY;
        // NSLog(@"HAZURE:%.1f", distance2);
        
    }
    
    if (distance[2]<40*40) {
        //３個目のボールとの当たり判定
        ballMoveX=-ballMoveX;
        ballMoveY=-ballMoveY;
        // NSLog(@"ATARI:%.1f", distance3);
        //ビー玉とボールが当たったあとにかわる画像
        UIImage *ballimag =[UIImage imageNamed:@"green_ball.png"];
        CGPoint point = ball[2].center;
        ball[2]=[[UIImageView alloc] initWithImage:ballimag];
        ball[2].center = point;
        [self.view addSubview:ball[2]];
        [audio2 play];
        if (number ==1){
            count[2]= 1;
        }
        if (number ==2) {
            count[2]=2;
        }
        if (number ==3){
            count[2]=3;
        }
        if (number ==4){
            count[2]=4;
        }
        if (number ==5){
            count[2]=5;
        }
        if (number ==6){
            count[2]=6;
        }
        if (number ==7){
            count[2]=7;
        }
        if (number ==8){
            count[2]=8;
        }
        if (number ==9){
            count[2]=9;
        }
    }else {
        ballMoveX=+ballMoveX;
        ballMoveY=+ballMoveY;
        // NSLog(@"HAZURE:%.1f", distance3);
    }
    
    if (distance[3]<40*40) {
        //4個目のボールとの当たり判定
        ballMoveX=-ballMoveX;
        ballMoveY=-ballMoveY;
        // NSLog(@"ATARI:%.1f", distance4);
        //ビー玉とボールが当たったあとにかわる画像
        UIImage *ballimag =[UIImage imageNamed:@"green_ball.png"];
        CGPoint point = ball[3].center;
        ball[3]=[[UIImageView alloc] initWithImage:ballimag];
        ball[3].center = point;
        [self.view addSubview:ball[3]];
        [audio2 play];
        
        if (number ==2) {
            count[3] =2;
        }
        if (number ==3) {
            count[3] =3;
        }
        if (number ==4) {
            count[3] =4;
        }
        if (number ==5) {
            count[3] =5;
        }
        if (number ==6) {
            count[3] =6;
        }
        if (number ==7) {
            count[3] =7;
        }
        if (number ==8) {
            count[3] =8;
        }
        if (number ==9) {
            count[3] =9;
        }
    }else {
        ballMoveX=+ballMoveX;
        ballMoveY=+ballMoveY;
        // NSLog(@"HAZURE:%.1f", distance4);
    }
    
    if (distance[4]<40*40) {
        //５個目のボールとの当たり判定
        ballMoveX=-ballMoveX;
        ballMoveY=-ballMoveY;
        // NSLog(@"ATARI:%.1f", distance5);
        //ビー玉とボールが当たったあとにかわる画像
        UIImage *ballimag =[UIImage imageNamed:@"green_ball.png"];
        CGPoint point = ball[4].center;
        ball[4]=[[UIImageView alloc] initWithImage:ballimag];
        ball[4].center = point;
        [self.view addSubview:ball[4]];
        [audio2 play];
        
        if (number== 3) {
            count[4] =3;
        }
        if (number== 4) {
            count[4] =4;
        }
        if (number== 5) {
            count[4] =5;
        }
        if (number== 6) {
            count[4] =6;
        }
        if (number== 7) {
            count[4] =7;
        }
        if (number== 8) {
            count[4] =8;
        }
        if (number== 9) {
            count[4] =9;
        }
    }else {
        ballMoveX=+ballMoveX;
        ballMoveY=+ballMoveY;
        // NSLog(@"HAZURE:%.1f", distance5);
    }
    if (distance[5] < 40*40) {
        //６個目のボールとの当たり判定
        ballMoveX=-ballMoveX;
        ballMoveY=-ballMoveY;
        //ビー玉とボールが当たったあとにかわる画像
        UIImage *ballimag = [UIImage imageNamed:@"green_ball.png"];
        CGPoint point = ball[5].center;
        ball[5]=[[UIImageView alloc] initWithImage:ballimag];
        ball[5].center =point;
        [self.view addSubview:ball[5]];
        [audio2 play];
        if (number == 4) {
            count[5]= 4;
        }
        if (number == 5) {
            count[5]= 5;
        }
        if (number == 6) {
            count[5]= 6;
        }
        if (number == 7) {
            count[5]= 7;
        }
        if (number == 8) {
            count[5]= 8;
        }
        if (number == 9) {
            count[5]= 9;
        }
    }else{
        ballMoveX=+ballMoveX;
        ballMoveY=+ballMoveY;
    }
    if (distance[6] < 40*40) {
        //７個目のボールとの当たり判定
        ballMoveX=-ballMoveX;
        ballMoveY=-ballMoveY;
        //ビー玉とボールが当たったあとにかわる画像
        UIImage *ballimag = [UIImage imageNamed:@"green_ball.png"];
        CGPoint point = ball[6].center;
        ball[6]=[[UIImageView alloc] initWithImage:ballimag];
        ball[6].center = point;
        [self.view addSubview:ball[6]];
        [audio2 play];
        if (number == 5) {
            count[6]=5;
        }
        if (number == 6) {
            count[6]=6;
        }
        if (number == 7) {
            count[6]=7;
        }
        if (number == 8) {
            count[6]=8;
        }
        if (number ==9) {
            count[6]=9;
        }
    }else{
        ballMoveX=+ballMoveX;
        ballMoveY=+ballMoveY;
    }
    if (distance[7] < 40*40) {
        //８個目のボールとの当たり判定
        ballMoveX=-ballMoveX;
        ballMoveY=-ballMoveY;
        //ビー玉とボールが当たったあとにかわる画像
        UIImage *ballimag = [UIImage imageNamed:@"green_ball.png"];
        CGPoint point = ball[7].center;
        ball[7]=[[UIImageView alloc] initWithImage:ballimag];
        ball[7].center = point;
        [self.view addSubview:ball[7]];
        [audio2 play];
        if (number == 6) {
            count[7]=6;
        }
        if (number == 7) {
            count[7]=7;
        }
        if (number == 8) {
            count[7]=8;
        }
        if (number == 9) {
            count[7]=9;
        }
    }else{
        ballMoveX=+ballMoveX;
        ballMoveY=+ballMoveY;
    }
    if (distance[8] < 40*40) {
        //9個目のボールとの当たり判定
        ballMoveX=-ballMoveX;
        ballMoveY=-ballMoveY;
        //ビー玉とボールが当たったあとにかわる画像
        UIImage *ballimag = [UIImage imageNamed:@"green_ball.png"];
        CGPoint point = ball[8].center;
        ball[8]=[[UIImageView alloc] initWithImage:ballimag];
        ball[8].center = point;
        [self.view addSubview:ball[8]];
        [audio2 play];
        if (number == 7) {
            count[8]=7;
        }
        if (number == 8) {
            count[8]=8;
        }
        if (number == 9) {
            count[8]=9;
        }
        
    }else{
        ballMoveX=+ballMoveX;
        ballMoveY=+ballMoveY;
    }if (distance[9] < 40*40) {
        //１０個目のボールと当たり判定
        ballMoveX=-ballMoveX;
        ballMoveY=-ballMoveY;
        //ビー玉とボールが当たったあとにかわる画像
        UIImage *ballimag = [UIImage imageNamed:@"green_ball.png"];
        CGPoint point = ball[9].center;
        ball[9]=[[UIImageView alloc] initWithImage:ballimag];
        ball[9].center = point;
        [self.view addSubview:ball[9]];
        [audio2 play];
        if (number==8) {
            count[9]=8;
        }
        if (number==9) {
            count[9]=9;
        }
        
    }else{
        ballMoveX=+ballMoveX;
        ballMoveY=+ballMoveY;
    }
    
    speed += 0.003;
    
    if(speed >= 0.7){
        
        [timer invalidate];
        moving = NO;
    }
}
- (void)speedCount:(NSTimer *)_timer {
    speed = speed += 0.01;
}
- (void)panAction:(UIPanGestureRecognizer *)sender {
    
    if(moving == NO){
        //座標習得
        CGPoint currentPoint = [sender translationInView:self.view];
        
        //ドラッグ始め
        if(sender.state == UIGestureRecognizerStateBegan){
            startPoint = currentPoint;
            //ドラッグ始めの座標を習得
            
            speed = 0.01;
            //ビー玉を動かすタイマー
        }
        
        
        //ドラッグ終わり
        if (sender.state == UIGestureRecognizerStateEnded){
            [speedTimer invalidate];
            
            endPoint = currentPoint;
            //ドラッグ終わりの座標を習得
            
            //始めと終わりの距離の差を習得
            moveX = endPoint.x - startPoint.x;
            moveY = endPoint.y - startPoint.y;
            
            //角度の設定
            degree = atan(moveY/moveX);
            //tan^-1で角度習得
            
            if(degree < 0){ //第一象限角度のみ習得
                //向きは動かす時に設定
                degree *= -1;
            }
            NSLog(@"%f",degree);
            
            
            if(moveX >= 0){
                ballMoveX = cos(degree) *0.3;
            }else{
                ballMoveX = -cos(degree) *0.3;
            }
            
            // y方向(縦)の向き
            if(moveY >= 0){
                ballMoveY = sin(degree) *0.3;
            }else{
                
                ballMoveY = -sin(degree) *0.3;
            }
            
            
            
            //ビー玉を動かすタイマー
            timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                                     target:self
                                                   selector:@selector(ballMove:)
                                                   userInfo:nil
                                                    repeats:YES];
            moving= YES;
        }
        
    }
    
}

-(void)playtime:(NSTimer *)time{
    Playtime -=1;
    NSLog(@"残り時間%d",Playtime);
    if (Playtime <30) {
        TimeLabel.textColor =[UIColor blackColor];
    }
    if (Playtime <20.0f) {
        TimeLabel .textColor =[UIColor yellowColor];
    }
    if (Playtime < 10.0f){
        TimeLabel .textColor =[UIColor redColor];
    }
    
    if (Playtime ==0){
        speed =10.0;
        
        [gameOverAudio play];
        
        NSLog(@"今の記録%d",specilCount);
        specilUD =[NSUserDefaults standardUserDefaults];
        [specilUD setInteger:specilCount forKey:@"specil"];

        
        UIButton *Endbtn = [[UIButton alloc]
                            initWithFrame:CGRectMake(0,0, 320, 566)] ;  // ボタンのサイズを指定する
        
        UIImage *img = [UIImage imageNamed:@"gameover.png"];  // ボタンにする画像を生成する
        [Endbtn setBackgroundImage:img forState:UIControlStateNormal];  // 画像をセットする
        // ボタンが押された時にHomeメソッドを呼び出す
        [Endbtn addTarget:self
                   action:@selector(Home:) forControlEvents:UIControlEventTouchUpInside];
        
        //[desk insertSubview:btn atIndex:0];
        [self.view addSubview:Endbtn];
        [PlayTimers invalidate];
        mainBidama.userInteractionEnabled = NO;
        
        saikai.hidden = YES;
        mouitido.hidden = YES;
        home.hidden = YES;
    }
    
    /*レベル１*/
    if (count[0] && count[1] && count[2]  == 1){
        /*クリアした時にクリアボタンの表示*/
        UIButton *clearbtn = [[UIButton alloc]
                              initWithFrame:CGRectMake(0,0, 320, 566)];
        UIImage *clearimg = [UIImage imageNamed:@"gameclear.png"];
        [clearbtn setBackgroundImage:clearimg forState:UIControlStateNormal];
        [clearbtn addTarget:self
                     action:@selector(Home:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:clearbtn];
        [PlayTimers invalidate];
        [audio stop];
        [audio2 stop];
        //ビー玉を触れなくする
        mainBidama.userInteractionEnabled = NO;
        
        countUD[0] =[NSUserDefaults standardUserDefaults];//取得
        clearcount[0] =2;//くりあ用の数
        NSLog(@"%d",clearcount[0]);
        
        [countUD[0] setInteger:clearcount[0] forKey:@"key"];//クリア用の数を保存
        NSLog(@"%@保存成功 保存用の数%d",[[[NSUserDefaults standardUserDefaults]
                                  dictionaryRepresentation]allKeys],clearcount[0]);
        [clearAudio play];
        
    }
    /*レベル２*/
    if (count[0] ==2 && count[1] ==2 && count[2] ==2 && count[3] ==2) {
        
        
        /*クリアした時にクリアボタンの表示*/
        UIButton *clearbtn = [[UIButton alloc]
                              initWithFrame:CGRectMake(0,0, 320, 566)];
        UIImage *clearimg = [UIImage imageNamed:@"gameclear.png"];

        [clearbtn setBackgroundImage:clearimg forState:UIControlStateNormal];
        [clearbtn addTarget:self
                     action:@selector(Home:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:clearbtn];
        [PlayTimers invalidate];
        
        [audio2 stop];
        //ビー玉を触れなくする
        mainBidama.userInteractionEnabled = NO;
        countUD[1] =[NSUserDefaults standardUserDefaults];//取得
        clearcount[1] =3;
        
        [countUD[1] setInteger:clearcount[1] forKey:@"key1"];//クリア用の数を保存
        NSLog(@"%@保存成功 保存用の数%d",[[[NSUserDefaults standardUserDefaults]
                                  dictionaryRepresentation]allKeys],clearcount[1]);
        [clearAudio play];
    }
    /*レベル３*/
    if (count[0] == 3 && count[1] == 3 && count[2] == 3 && count[3] == 3 && count[4] ==3) {
        
        
        /*クリアした時にクリアボタンの表示*/
        UIButton *clearbtn = [[UIButton alloc]
                              initWithFrame:CGRectMake(0,0, 320, 566)];
        UIImage *clearimg = [UIImage imageNamed:@"gameclear.png"];
        [clearbtn setBackgroundImage:clearimg forState:UIControlStateNormal];
        [clearbtn addTarget:self
                     action:@selector(Home:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:clearbtn];
        [PlayTimers invalidate];
        [audio2 stop];
        //ビー玉を触れなくする
        mainBidama.userInteractionEnabled = NO;
        
        countUD[2]=[NSUserDefaults standardUserDefaults];//クリア用の数を保存
        clearcount[2] =4;
        [countUD[2] setInteger:clearcount[2] forKey:@"key2"];//クリア用の数を保存
        NSLog(@"%@保存成功 保存世の数%d",[[[NSUserDefaults standardUserDefaults]
                                  dictionaryRepresentation]allKeys],clearcount[3]);
        [clearAudio play];
    }
    /*レベル４*/
    if (count[0] == 4 && count[1] == 4 && count[2] == 4 && count[3] == 4 && count[4] == 4 && count[5] == 4 ){
        /*クリアした時にクリアボタンの表示*/
        UIButton *clearbtn = [[UIButton alloc]
                              initWithFrame:CGRectMake(0,0, 320, 566)];
        UIImage *clearimg = [UIImage imageNamed:@"gameclear.png"];
        [clearbtn setBackgroundImage:clearimg forState:UIControlStateNormal];
        [clearbtn addTarget:self
                     action:@selector(Home:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:clearbtn];
        [PlayTimers invalidate];
        [audio2 stop];
        
        mainBidama.userInteractionEnabled = NO; //ビー玉を触れなくする
        countUD[3] = [NSUserDefaults standardUserDefaults];
        clearcount[3] = 5;
        [countUD[3] setInteger:clearcount[3] forKey:@"key3"];
        NSLog(@"%@保存成功 保存用の数%d",[[[NSUserDefaults standardUserDefaults]
                                  dictionaryRepresentation]allKeys],clearcount[3]);
   [clearAudio play];
    }
    /*レベル５*/
    if (count[0] == 5 && count[1] == 5 && count[2] == 5 && count[3] == 5 && count[4] == 5 && count[5] == 5 && count[6]== 5) {
        /*クリアした時にクリアボタンの表示*/
        UIButton *clearbtn = [[UIButton alloc]
                              initWithFrame:CGRectMake(0,0, 320, 566)];
        UIImage *clearimg = [UIImage imageNamed:@"gameclear.png"];
        [clearbtn setBackgroundImage:clearimg forState:UIControlStateNormal];
        [clearbtn addTarget:self
                     action:@selector(Home:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:clearbtn];
        [PlayTimers invalidate];
        [audio2 stop];
        //ビー玉を触れなくする
        mainBidama.userInteractionEnabled = NO;
        countUD[4] =[NSUserDefaults standardUserDefaults];
        clearcount[4] =6;
        [countUD[4] setInteger:clearcount[4] forKey:@"key4"];
        NSLog(@"%@保存成功 保存用の数%d",[[[NSUserDefaults standardUserDefaults]
                                  dictionaryRepresentation]allKeys],clearcount[4]);
    [clearAudio play];
    }
    /*レベル６*/
    if (count[0] == 6 && count[1] == 6 && count[2] == 6 && count[3] == 6 && count[4] == 6 && count[5] == 6 && count[6]== 6 && count[7]== 6) {
        /*クリアした時にクリアボタンの表示*/
        UIButton *clearbtn = [[UIButton alloc]
                              initWithFrame:CGRectMake(0,0, 320, 566)];
        UIImage *clearimg = [UIImage imageNamed:@"gameclear.png"];

        [clearbtn setBackgroundImage:clearimg forState:UIControlStateNormal];
        [clearbtn addTarget:self
                     action:@selector(Home:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:clearbtn];
        [PlayTimers invalidate];
        [audio2 stop];
        //ビー玉を触れなくする
        mainBidama.userInteractionEnabled = NO;
        
        
        countUD[5] =[NSUserDefaults standardUserDefaults];//クリア用の数を保存
        clearcount[5] =7;
        [countUD[5] setInteger:clearcount[5] forKey:@"key5"];//クリア用の数を保存
        NSLog(@"%@保存成功 保存用の数%d",[[[NSUserDefaults standardUserDefaults]
                                  dictionaryRepresentation]allKeys],clearcount[5]);
    [clearAudio play];
    }
    /*レベル７*/
    if (count[0] == 7 && count[1] == 7 && count[2] == 7 && count[3] == 7 && count[4] == 7 && count[5] == 7 && count[6]== 7 && count[7]== 7 && count[8]== 7) {
        /*クリアした時にクリアボタンの表示*/
        UIButton *clearbtn = [[UIButton alloc]
                              initWithFrame:CGRectMake(0,0, 320, 566)];
        UIImage *clearimg = [UIImage imageNamed:@"gameclear.png"];
        [clearbtn setBackgroundImage:clearimg forState:UIControlStateNormal];
        [clearbtn addTarget:self
                     action:@selector(Home:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:clearbtn];
        [PlayTimers invalidate];
        [audio2 stop];
        //ビー玉を触れなくする
        mainBidama.userInteractionEnabled = NO;
        
        countUD[6] =[NSUserDefaults standardUserDefaults];//クリア用の数を保存
        clearcount[6] = 8;
        NSLog(@"%d",clearcount[6]);
        [countUD[6] setInteger:clearcount[6] forKey:@"key6"];//クリア用の数を保存
        NSLog(@"%@保存成功 保存用の数%d",[[[NSUserDefaults standardUserDefaults]
                                  dictionaryRepresentation]allKeys],clearcount[6]);
    [clearAudio play];
    }
    /*レベル８*/
    if (count[0] == 8 && count[1] == 8 && count[2] == 8 && count[3] == 8 && count[4] == 8 && count[5] == 8 && count[6]== 8 && count[7]== 8 && count[8]== 8 && count[9]==8) {
        /*クリアした時にクリアボタンの表示*/
        UIButton *clearbtn = [[UIButton alloc]
                              initWithFrame:CGRectMake(0,0, 320, 566)];
        UIImage *clearimg = [UIImage imageNamed:@"gameclear.png"];
        [clearbtn setBackgroundImage:clearimg forState:UIControlStateNormal];
        [clearbtn addTarget:self
                     action:@selector(Home:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:clearbtn];
        [PlayTimers invalidate];
        [audio2 stop];
        //ビー玉を触れなくする
        mainBidama.userInteractionEnabled = NO;
        
        countUD[7] =[NSUserDefaults standardUserDefaults];//クリア用の数を保存
        clearcount[7] =9;
    
        [countUD[7] setInteger:clearcount[7] forKey:@"key7"];//クリア用の数を保存
        NSLog(@"%@保存成功 保存用の数%d",[[[NSUserDefaults standardUserDefaults]
                                  dictionaryRepresentation]allKeys],clearcount[7]);
   [clearAudio play];
    }
    /*レベル９*/
    if (count[0] == 9 && count[1] == 9 && count[2] == 9 && count[3] == 9 && count[4] == 9 && count[5] == 9 && count[6]== 9 && count[7]== 9 && count[8]== 9 && count[9]==9) {
        
        UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"スペシャルコース" message:@"出現" delegate:nil cancelButtonTitle:nil otherButtonTitles: @"了解", nil];
        [alert show];
        /*クリアした時にクリアボタンの表示*/
        UIButton *clearbtn = [[UIButton alloc]
                              initWithFrame:CGRectMake(0,0, 320, 566)];
        UIImage *clearimg = [UIImage imageNamed:@"gameclear.png"];
        [clearbtn setBackgroundImage:clearimg forState:UIControlStateNormal];
        [clearbtn addTarget:self
                     action:@selector(Home:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:clearbtn];
        [PlayTimers invalidate];
        [audio2 stop];
        //ビー玉を触れなくする
        mainBidama.userInteractionEnabled = NO;
        countUD[8] =[NSUserDefaults standardUserDefaults];
        clearcount[8] = 10;
        [countUD[8] setInteger:clearcount[8] forKey:@"key8"];
        NSLog(@"%@保存成功 保存用の数%d",[[[NSUserDefaults standardUserDefaults]
                                  dictionaryRepresentation]allKeys],clearcount[8]);
  [clearAudio play];
        
        
    }
    TimeLabel.text =[NSString stringWithFormat:@"%1d",Playtime];
    
}
-(void)Home:(UIButton *)button {
    specilUD =[NSUserDefaults standardUserDefaults];
    [specilUD setInteger:specilCount forKey:@"specil"];
    [audio2 stop];
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController: view animated:YES completion: nil];
    
}

-(IBAction)stop{
    [PlayTimers invalidate];
    
    mainBidama.userInteractionEnabled= NO;
    //スットプ時ホームボタンを表示する
    UIImage *homeimg =[UIImage imageNamed:@"house.png"];
    [home setBackgroundImage:homeimg forState:UIControlStateNormal];
    [home addTarget:self action:@selector(backHome:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:home];
    //ストップ時リスタートのボタンを表示する
    UIImage *againimg =[UIImage imageNamed:@"risuta-to.png"];
    [mouitido setBackgroundImage:againimg forState:UIControlStateNormal];
    [mouitido addTarget:self action:@selector(again:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:mouitido];
    //ストップ時再開のボタンをひょうじする
    UIImage *playimg =[UIImage imageNamed:@"saikaiii.png"];
    [saikai setBackgroundImage:playimg forState:UIControlStateNormal];
    [saikai addTarget:self action:@selector(resume:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:saikai];
    
}

-(void)backHome: (UIButton *)button{
    //    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"Home"];
    //    [self presentViewController: view animated:YES completion: nil];
    
    [self dismissViewControllerAnimated:YES completion:Nil];
    
    }

-(void)again:(UIButton*)button{
   
    specilCount = 0;
    specilLabel.text =[NSString stringWithFormat:@"%d",specilCount];
    if (number == 10) {
    [ball[1] removeFromSuperview];
       
    }
    
    
    
    CGRect rect= CGRectMake(self.view.frame.size.width/2 - 15,self.view.frame.size.height-100, 35,  35);
    mainBidama.frame = rect;
    [self.view addSubview:mainBidama];
    mainBidama.userInteractionEnabled = YES;
    
    
    count[0]=0;
    count[1]=0;
    count[2]=0;
    count[3]=0;
    count[4]=0;
    count[5]=0;
    count[6]=0;
    count[7]=0;
    count[8]=0;
    count[9]=0;
    
    UIImage *ballimag =[UIImage imageNamed:@"ball.png"];
    
    
    CGPoint point = ball[0].center;
    ball[0]=[[UIImageView alloc] initWithImage:ballimag];
    ball[0].center = point;
    [self.view addSubview:ball[0]];
    
    CGPoint point1 = ball[1].center;
    ball[1]=[[UIImageView alloc] initWithImage:ballimag];
    ball[1].center = point1;
    [self.view addSubview:ball[1]];
    
    CGPoint point2 = ball[2].center;
    ball[2]=[[UIImageView alloc] initWithImage:ballimag];
    ball[2].center = point2;
    [self.view addSubview:ball[2]];
    
    CGPoint point3 = ball[3].center;
    ball[3]=[[UIImageView alloc] initWithImage:ballimag];
    ball[3].center = point3;
    [self.view addSubview:ball[3]];
    
    CGPoint point4 = ball[4].center;
    ball[4]=[[UIImageView alloc] initWithImage:ballimag];
    ball[4].center = point4;
    [self.view addSubview:ball[4]];
    
    CGPoint point5 = ball[5].center;
    ball[5]=[[UIImageView alloc] initWithImage:ballimag];
    ball[5].center = point5;
    [self.view addSubview:ball[5]];
    
    CGPoint point6 = ball[6].center;
    ball[6]=[[UIImageView alloc] initWithImage:ballimag];
    ball[6].center = point6;
    [self.view addSubview:ball[6]];
    
    CGPoint point7 = ball[7].center;
    ball[7]=[[UIImageView alloc] initWithImage:ballimag];
    ball[7].center = point7;
    [self.view addSubview:ball[7]];
    
    CGPoint point8 = ball[8].center;
    ball[8]=[[UIImageView alloc] initWithImage:ballimag];
    ball[8].center = point8;
    [self.view addSubview:ball[8]];
    
    CGPoint point9 = ball[9].center;
    ball[9]=[[UIImageView alloc] initWithImage:ballimag];
    ball[9].center = point9;
    [self.view addSubview:ball[9]];
    
    Playtime = 30;
    PlayTimers = [NSTimer scheduledTimerWithTimeInterval:1
                                                  target:self
                                                selector:@selector(playtime:)
                                                userInfo:nil
                                                 repeats:YES];
    TimeLabel.text = [NSString stringWithFormat:@"%1d",Playtime];
    [saikai removeFromSuperview];
    [mouitido removeFromSuperview];
    [home removeFromSuperview];
    
    
}
-(void)resume:(UIButton *)button{
    PlayTimers = [NSTimer scheduledTimerWithTimeInterval:1
                                                  target:self
                                                selector:@selector(playtime:)
                                                userInfo:nil
                                                 repeats:YES];
    mainBidama.userInteractionEnabled = YES;
    TimeLabel.text =[ NSString stringWithFormat:@"%1d",Playtime ];
    
    [mouitido removeFromSuperview];
    [saikai removeFromSuperview];
    [home removeFromSuperview];
}

- (void)didReceiveMemoryWarning
{
    

    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//}


@end
