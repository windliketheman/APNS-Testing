//
//  ViewController.m
//  APNS-Testing
//
//  Created by jia on 16/4/19.
//  Copyright © 2016年 jia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Lazyload Methods
- (UITextView *)textView
{
    if (!_textView)
    {
        _textView = [UITextView new];
    }
    return _textView;
}

#pragma mark - Life Cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
