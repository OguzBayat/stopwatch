//
//  ViewController.m
//  stopwatch
//
//  Created by Oğuz Bayat on 19/07/17.
//  Copyright © 2017 oguzbayat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize timerLabel,startBtn,resetBtn;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    running = NO;
    count = 0;
    timerLabel.text = @"00:00.00";
    
    startBtn.layer.cornerRadius = 50;
    resetBtn.layer.cornerRadius = 50;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startBtnPushed:(id)sender {
    if (running == NO) {
        running = YES;
        [startBtn setTitle:@"STOP" forState:UIControlStateNormal];
        
        if (myTimer == nil) {
            
            myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
            
        }
        
    } else {
        [self stopTimer];        
    }
}

- (IBAction)resetBtnPushed:(id)sender {
    [self stopTimer];
    
    count = 0;
    timerLabel.text = @"00:00.00";
}

- (void)stopTimer {
    
    running = NO;
    [myTimer invalidate];
    myTimer = nil;
    [startBtn setTitle:@"START" forState:UIControlStateNormal];
    
}

- (void)updateTimer {
    
    count++;
    
    int min = floor(count/100/60);
    int sec = floor(count/100);
    int mSec = count % 100;
    
    if (sec >= 60) {
        sec = sec % 60;
    }
    
    timerLabel.text = [NSString stringWithFormat:@"%02d:%02d.%02d",min,sec,mSec];
}

@end
