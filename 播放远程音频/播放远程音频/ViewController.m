//
//  ViewController.m
//  播放远程音频
//
//  Created by zhangzhifu on 2017/3/6.
//  Copyright © 2017年 seemygo. All rights reserved.
//
 
#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
/** 播放器 */
@property (nonatomic, strong) AVPlayer *player;
@end

@implementation ViewController

#pragma mark - 懒加载
- (AVPlayer *)player {
    if (_player == nil) {
        NSURL *url = [NSURL URLWithString:@"http://cc.stream.qqmusic.qq.com/C100003j8IiV1X8Oaw.m4a?fromtag=52"];
//        _player = [AVPlayer playerWithURL:url];
        
        AVPlayerItem *item = [AVPlayerItem playerItemWithURL:url];
        
        _player = [AVPlayer playerWithPlayerItem:item];
    }
    return _player;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.player play];
}

@end
