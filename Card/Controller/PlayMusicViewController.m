//
//  PlayMusicViewController.m
//  Card
//
//  Created by hadis on 16/1/5.
//  Copyright © 2016年 marc. All rights reserved.
//

#import "PlayMusicViewController.h"
#import <AVFoundation/AVFoundation.h>

@implementation PlayMusicViewController

- (void)viewDidLoad {

    [super viewDidLoad];

    
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL URLWithString:self.contentList.playUrlMP3]];
    moviePlayer.scalingMode = MPMovieScalingModeAspectFill;
    [moviePlayer.view setFrame:CGRectMake(30, 210, 250, 350)];
    [moviePlayer.view setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:moviePlayer.view];
   
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
 
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{   [moviePlayer play];
  
    
}
- (void)playMusic {
    //在线
//    
//    NSString* path =[ NSString stringWithFormat:
//                     @"%@/Documents/Track08.mp3",NSHomeDirectory()];//本地路径
//    MPMoviePlayerController *moviePlayer = [ [ MPMoviePlayerController alloc]
//                                            initWithContentURL:[NSURL fileURLWithPath:path]];//本地的
}


@end
