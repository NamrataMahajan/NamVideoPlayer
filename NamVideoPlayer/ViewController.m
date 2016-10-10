//
//  ViewController.m
//  NamVideoPlayer
//
//  Created by Namrata on 10/10/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *fileURl=[[NSBundle mainBundle]URLForResource:@"namVideo" withExtension:@"mp4"];
    NSLog(@"%@",fileURl);
    player=[[AVPlayer alloc]initWithURL:fileURl];
    AVPlayerLayer *moivePlayerLayer =[AVPlayerLayer playerLayerWithPlayer:player];
    [moivePlayerLayer setFrame:CGRectMake(100, 100, 300, 170)];
    [self.view.layer addSublayer:moivePlayerLayer];
    [player play];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
