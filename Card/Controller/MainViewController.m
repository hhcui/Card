//
//  MainViewController.m
//  Card
//
//  Created by hadis on 16/1/5.
//  Copyright © 2016年 marc. All rights reserved.
//

#import "MainViewController.h"
#import "RequsetNetwork.h"
#import "ScriptsItem.h"
#import "PlayMusicViewController.h"
#import "CardView.h"
@interface MainViewController () {
    //所有音乐界面数据
    NSArray  *listArray;
    //当前list数据
    ScriptsContentLists *currentList;
    CardView *cardview;
    
    //计数器
    int cardIndex;
}


@end
@implementation MainViewController

#pragma mark - lifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
    [self setupGradualChangeColor];
    
    [self loadDataSource];

    self.swipeableView.swipingDeterminator = self;


}

#pragma mark - UI & Data

//设置背景
- (void)setupGradualChangeColor {

      [self.view.layer addSublayer:[UIColor colorWithBackgroup:self.view.bounds]];
    
}
//加载数据
- (void)loadDataSource {
    //初始化代码 -1 ，若是++cardIndex则正好从0开始
     cardIndex=-1;
//    
//    [RequsetNetwork requestHomeWithCompletionBlock:^(id returnValue) {
//        

// 
//    } WithFailureBlock:^(NSError *error) {
//        
//    }];
    [RequsetNetwork requestSymchHomeWithCompletionBlock:^(id returnValue) {

                ScriptsItem *info = [ScriptsItem yy_modelWithDictionary:returnValue];
                listArray =  info.tracks.list;
    }];

}

#pragma mark - Delegate ZLSwipeableViewSwipingDeterminator
- (BOOL)shouldSwipeView:(UIView *)view
               movement:(ZLSwipeableViewMovement *)movement
          swipeableView:(ZLSwipeableView *)swipeableView {

   
    if (movement.translation.x<0) {  //向左移动,删除这次数据
        
        
    }else {     //向右边移动，进入MP3播放
        
        
        PlayMusicViewController *playMusicVC =  [self.storyboard instantiateViewControllerWithIdentifier:@"PlayMusicViewController"];
        playMusicVC.contentList =currentList;
        [self.navigationController pushViewController:playMusicVC animated:YES];
        
        
    }
    return YES;
}
- (UIView *)nextViewForSwipeableView:(ZLSwipeableView *)swipeableView {
    
//    NSLog(@"第%d个",swipeableView.history.count);
    
    currentList = listArray[++cardIndex];
    
    cardview = [[CardView alloc] initWithFrame:swipeableView.bounds];
    cardview.backgroundColor = ColorWithCard;
    

    
    cardview.title=currentList.title;
    
    return cardview;

}
//- (UIView *)previousViewForSwipeableView:(ZLSwipeableView *)swipeableView;
@end
