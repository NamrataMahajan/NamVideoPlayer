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
    fileURl=[[NSBundle mainBundle]URLForResource:@"namVideo" withExtension:@"mp4"];
    NSLog(@"%@",fileURl);
    player=[[AVPlayer alloc]initWithURL:fileURl];
    moivePlayerLayer =[AVPlayerLayer playerLayerWithPlayer:player];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ActionPlayPause:(id)sender {
    
    UIButton *button=sender;
    if (button.tag==100) {
        button.tag=101;
        [player play];
        
        [moivePlayerLayer setFrame:CGRectMake(100, 100, 300, 170)];
        [self.view.layer addSublayer:moivePlayerLayer];
        //[player play];

        
       // [self.view addSubview:button];
    }
    else if(button.tag==101){
        
        button.tag=100;
        [player pause];
    }
    
}

- (IBAction)ActionStopButton:(id)sender {
    [player pause];
    
  

    
    player=[[AVPlayer alloc]initWithURL:fileURl];
    moivePlayerLayer =[AVPlayerLayer playerLayerWithPlayer:player];
    

    
    
}
@end
