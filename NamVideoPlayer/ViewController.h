//
//  ViewController.h
//  NamVideoPlayer
//
//  Created by Namrata on 10/10/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface ViewController : UIViewController{
    AVPlayer *player;
    AVPlayerLayer *moivePlayerLayer;
    NSURL *fileURl;
}
- (IBAction)ActionPlayPause:(id)sender;
- (IBAction)ActionStopButton:(id)sender;


@end

