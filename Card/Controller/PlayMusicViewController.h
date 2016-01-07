//
//  PlayMusicViewController.h
//  Card
//
//  Created by hadis on 16/1/5.
//  Copyright © 2016年 marc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScriptsContentLists.h"
#import <MediaPlayer/MediaPlayer.h>
@interface PlayMusicViewController : UIViewController {
    MPMoviePlayerController* moviePlayer;
}
//歌曲和title
@property (nonatomic,strong) ScriptsContentLists *contentList;
@end
