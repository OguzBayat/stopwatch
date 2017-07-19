//
//  ViewController.h
//  stopwatch
//
//  Created by Oğuz Bayat on 19/07/17.
//  Copyright © 2017 oguzbayat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *myTimer;
    BOOL running;
    int count;
}

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIButton *resetBtn;
@property (weak, nonatomic) IBOutlet UIButton *startBtn;

- (IBAction)startBtnPushed:(id)sender;
- (IBAction)resetBtnPushed:(id)sender;

- (void)updateTimer;


@end

