//
//  ViewController.m
//  Card
//
//  Created by hadis on 15/12/30.
//  Copyright © 2015年 marc. All rights reserved.
//

#import "ViewController.h"
#import "RequsetNetwork.h"
#import "ScriptsItem.h"
#import "YYModel.h"
#import "ZLSwipeableView.h"
@interface ViewController ()<ZLSwipeableViewDataSource,ZLSwipeableViewDelegate> {
//    MPMoviePlayerController * moviePlayer;

   
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    ZLSwipeableView *swipeableView = [[ZLSwipeableView alloc] initWithFrame:self.view.frame];
    swipeableView.backgroundColor  = [UIColor redColor];
    swipeableView.delegate =self;
    swipeableView.dataSource = self;
    [self.view addSubview:swipeableView];
//    [swipeableView swipeTopViewToLeft];
//    [swipeableView swipeTopViewToRight];
//    [swipeableView discardAllSwipeableViews];
//    [swipeableView loadNextSwipeableViewsIfNeeded];
//    
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - ZLSwipeableViewDataSource
- (UIView *)nextViewForSwipeableView:(ZLSwipeableView *)swipeableView {
    return [[UIView alloc] init];
}

#pragma mark - ZLSwipeableViewDelegate
- (void)swipeableView:(ZLSwipeableView *)swipeableView
         didSwipeView:(UIView *)view
          inDirection:(ZLSwipeableViewDirection)direction {
//    NSLog(@"did swipe in direction: %zd", direction);
}
- (void)swipeableView:(ZLSwipeableView *)swipeableView didCancelSwipe:(UIView *)view {
//    NSLog(@"did cancel swipe");
}
- (void)swipeableView:(ZLSwipeableView *)swipeableView didStartSwipingView:(UIView *)view atLocation:(CGPoint)location {
//    NSLog(@"did start swiping at location: x %f, y%f", location.x, location.y);
}
- (void)swipeableView:(ZLSwipeableView *)swipeableView swipingView:(UIView *)view atLocation:(CGPoint)location  translation:(CGPoint)translation {
//    NSLog(@"swiping at location: x %f, y %f, translation: x %f, y %f", location.x, location.y, translation.x, translation.y);
}
- (void)swipeableView:(ZLSwipeableView *)swipeableView didEndSwipingView:(UIView *)view atLocation:(CGPoint)location {
//    NSLog(@"did start swiping at location: x %f, y%f", location.x, location.y);
}

@end
