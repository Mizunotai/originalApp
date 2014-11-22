//
//  ViewController.m
//  Marbletime
//
//  Created by 大氣 on 2014/10/07.
//  Copyright (c) 2014年 大氣. All rights reserved.
//

#import "ViewController.h"
#import "PlayGameViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    number = 0;
//    countUD[1] =[NSUserDefaults standardUserDefaults];
//    [countUD[1] removeObjectForKey:@"key1"];
	// Do any additional setup after loading the view, typically from a nib.
    if( [ UIApplication sharedApplication ].isStatusBarHidden == NO ) {
        [ UIApplication sharedApplication ].statusBarHidden = YES;
    }
    
    LevelBtn[1] =[[UIButton alloc]initWithFrame:CGRectMake(20, 141, 44, 44)];
    UIImage *lavelImg =[UIImage imageNamed:@"Level1.png"];
    [LevelBtn[1]setBackgroundImage:lavelImg forState:UIControlStateNormal];
    [LevelBtn[1] addTarget:self action:@selector(LavelOne:) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:LevelBtn[1]];
    
    LevelBtn[2] =[[UIButton alloc]initWithFrame:CGRectMake(138, 141, 44, 44)];
    UIImage *lavel2Img =[UIImage imageNamed:@"Level2.png"];
    [LevelBtn[2]setBackgroundImage:lavel2Img forState:UIControlStateNormal];
    [LevelBtn[2] addTarget:self action:@selector(LavelTwo:) forControlEvents: UIControlEventTouchUpInside];
    
    
    LevelBtn[3] =[[UIButton alloc]initWithFrame:CGRectMake(256, 141, 44, 44)];
    UIImage *lavel3Img =[UIImage imageNamed:@"Level3.png"];
    [LevelBtn[3]setBackgroundImage:lavel3Img forState:UIControlStateNormal];
    [LevelBtn[3] addTarget:self action:@selector(LavelSree:) forControlEvents: UIControlEventTouchUpInside];
    
    LevelBtn[4] =[[UIButton alloc]initWithFrame:CGRectMake(20, 285, 44, 44)];
    UIImage *lavel4Img =[UIImage imageNamed:@"Level4.png"];
    [LevelBtn[4]setBackgroundImage:lavel4Img forState:UIControlStateNormal];
    [LevelBtn[4] addTarget:self action:@selector(Lavelfour:) forControlEvents: UIControlEventTouchUpInside];
    
    LevelBtn[5] =[[UIButton alloc]initWithFrame:CGRectMake(138, 285, 44, 44)];
    UIImage *lavel5Img =[UIImage imageNamed:@"Level5.png"];
    [LevelBtn[5]setBackgroundImage:lavel5Img forState:UIControlStateNormal];
    [LevelBtn[5] addTarget:self action:@selector(Lavelfive:) forControlEvents: UIControlEventTouchUpInside];
    
    LevelBtn[6] =[[UIButton alloc]initWithFrame:CGRectMake(256, 285, 44, 44)];
    UIImage *lavel6Img =[UIImage imageNamed:@"Level6.png"];
    [LevelBtn[6]setBackgroundImage:lavel6Img forState:UIControlStateNormal];
    [LevelBtn[6] addTarget:self action:@selector(Lavelsix:) forControlEvents: UIControlEventTouchUpInside];
    
    LevelBtn[7] =[[UIButton alloc]initWithFrame:CGRectMake(20, 429, 44, 44)];
    UIImage *lavel7Img =[UIImage imageNamed:@"Level7.png"];
    [LevelBtn[7]setBackgroundImage:lavel7Img forState:UIControlStateNormal];
    [LevelBtn[7] addTarget:self action:@selector(lavelseven:) forControlEvents: UIControlEventTouchUpInside];
    
    LevelBtn[8] =[[UIButton alloc]initWithFrame:CGRectMake(138, 429, 44, 44)];
    UIImage *lavel8Img =[UIImage imageNamed:@"Level8.png"];
    [LevelBtn[8]setBackgroundImage:lavel8Img forState:UIControlStateNormal];
    [LevelBtn[8] addTarget:self action:@selector(lavelaight:) forControlEvents: UIControlEventTouchUpInside];
    
    LevelBtn[9] =[[UIButton alloc]initWithFrame:CGRectMake(256, 429, 44, 44)];
    UIImage *lavel9Img =[UIImage imageNamed:@"Level9.png"];
    [LevelBtn[9]setBackgroundImage:lavel9Img forState:UIControlStateNormal];
    [LevelBtn[9] addTarget:self action:@selector(lavelnain:) forControlEvents: UIControlEventTouchUpInside];
    
    UIScrollView *scroll = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    UIView *uv = [[UIView alloc] initWithFrame:CGRectMake(0, 0,self.view.frame.size.width*2 ,self.view.frame.size.height)];
    [scroll addSubview:uv];
    scroll.contentSize = uv.bounds.size;
   
    specilUD =[NSUserDefaults standardUserDefaults];
    specilCount =[specilUD integerForKey:@"specil"];
    NSLog(@"今の記録%d",specilCount);
    
    specilLabel =[[UILabel alloc]init];
    specilLabel.text =[NSString stringWithFormat:@"記録%d",specilCount];
    specilLabel.frame =CGRectMake(355,150 ,150 , 53);
    specilLabel.font =[UIFont boldSystemFontOfSize:30];
//    specilLabel.backgroundColor =[UIColor redColor];
   
    countUD[0] =[NSUserDefaults standardUserDefaults];
    clearcount[0] =[countUD[0] integerForKey:@"key"];
    countUD[1] =[NSUserDefaults standardUserDefaults];
    clearcount[1] =[countUD[1] integerForKey:@"key1"];
    countUD[2] =[NSUserDefaults standardUserDefaults];
    clearcount[2] =[countUD[2] integerForKey:@"key2"];
    countUD[3] =[NSUserDefaults standardUserDefaults];
    clearcount[5] =[countUD[3] integerForKey:@"key3"];
    countUD[4] =[NSUserDefaults standardUserDefaults];
    clearcount[4] =[countUD[4] integerForKey:@"key4"];
    countUD[5] =[NSUserDefaults standardUserDefaults];
    clearcount[5] =[countUD[5] integerForKey:@"key5"];
    countUD[6] =[NSUserDefaults standardUserDefaults];
    clearcount[6] =[countUD[6] integerForKey:@"key6"];
    countUD[7] =[NSUserDefaults standardUserDefaults];
    clearcount[7] =[countUD[7] integerForKey:@"key7"];
    countUD[8] =[NSUserDefaults standardUserDefaults];
    clearcount[8] =[countUD[8] integerForKey:@"key8"];
    
   NSLog(@"%@保存成功 ",[[[NSUserDefaults standardUserDefaults]dictionaryRepresentation]allKeys]);

    
    
    if (clearcount[0] == 2  ){
        
        
        [self. view addSubview:LevelBtn[2]];

        
        
    }
    if(clearcount[1]==3){
        [self. view addSubview:LevelBtn[3]];
       
        
    }
    if (clearcount[2]==4) {
        
        [self. view addSubview:LevelBtn[4]];
      
        
    }
    if (clearcount[3]== 5)
    {
        [self. view addSubview:LevelBtn[5]];
           }
    if(clearcount[4]==6){
        [self. view addSubview:LevelBtn[6]];
        
        
    }
    if (clearcount[5]==7) {
        [self. view addSubview:LevelBtn[7]];
            }
    if (clearcount[6]==8) {
        
        [self. view addSubview:LevelBtn[8]];
        
    }
    if (clearcount[7]==9) {
        [self.view addSubview:LevelBtn[9]];
            }
    if (clearcount[8] ==10 ) {
        
       
        
        [self.view addSubview:scroll];
        [scroll addSubview:LevelBtn[1]];
        [scroll  addSubview:LevelBtn[2]];
        [scroll  addSubview:LevelBtn[3]];
        [scroll addSubview:LevelBtn[4]];
        [scroll addSubview:LevelBtn[5]];
        [scroll addSubview:LevelBtn[6]];
        [scroll addSubview:LevelBtn[7]];
        [scroll addSubview:LevelBtn[8]];
        [scroll addSubview:LevelBtn[9]];
        superbtn =[[UIButton alloc]initWithFrame:CGRectMake(330, 237, 306, 153)];
        UIImage *superimag =[UIImage imageNamed:@"specials.jpg"];
        [superbtn setBackgroundImage:superimag forState:UIControlStateNormal];
        [superbtn addTarget:self action:@selector(superLevel:) forControlEvents: UIControlEventTouchUpInside];
        [scroll addSubview:superbtn];
        [scroll addSubview:specilLabel];
        
    }


}
-(void)LavelOne:(UIButton *)button{
    number =1;
    if (number == 1){
        UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"Play"];
        [self presentViewController: view animated:YES completion: nil];
    }
    
}
-(void)LavelTwo: (UIButton *)button{
    number =2;
    if (number == 2){
        UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"Play"];
        [self presentViewController: view animated:YES completion: nil];
    }
    
}
-(void)LavelSree:(UIButton *)button{
    number =3;
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"Play"];
    [self presentViewController: view animated:YES completion: nil];
    
    
}
-(void)Lavelfour:(UIButton * )button{
    number =4;
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"Play"];
    [self presentViewController: view animated:YES completion: nil];
    
}
-(void)Lavelfive:(UIButton *)button{
    number = 5;
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"Play"];
    [self presentViewController: view animated:YES completion: nil];
    
}
-(void)Lavelsix:(UIButton*)button{
    number = 6;
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"Play"];
    [self presentViewController: view animated:YES completion: nil];
    
}
-(void)lavelseven:(UIButton*)button{
    number = 7;
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"Play"];
    [self presentViewController: view animated:YES completion: nil];
    
}
-(void)lavelaight:(UIButton*)button{
    number = 8;
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"Play"];
    [self presentViewController: view animated:YES completion: nil];
    
}
-(void)lavelnain:(UIButton*)button{
    number = 9;
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"Play"];
    [self presentViewController: view animated:YES completion: nil];
    
}

-(void)superLevel:(UIButton *)button{
    number =10;
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"Play"];
    [self presentViewController: view animated:YES completion: nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
