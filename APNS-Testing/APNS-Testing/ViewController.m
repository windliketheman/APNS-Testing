//
//  ViewController.m
//  APNS-Testing
//
//  Created by jia on 16/4/19.
//  Copyright © 2016年 jia. All rights reserved.
//

#import "ViewController.h"
#import "PureLayout.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Lazyload Methods
- (UITextView *)textView
{
    if (!_textView)
    {
        _textView = [UITextView new];
        _textView.backgroundColor =[UIColor lightGrayColor];
        _textView.textAlignment = NSTextAlignmentCenter;
        _textView.editable = NO;
        _textView.layer.borderColor = [UIColor darkGrayColor].CGColor;
        _textView.layer.borderWidth = 1.0;
    }
    return _textView;
}

#pragma mark - Life Cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupSubviews];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Inner Methods
- (void)setupSubviews
{
    [self.view addSubview:self.textView];
    
    [self.textView autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:5];
    [self.textView autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:5];
    [self.textView autoMatchDimension:ALDimensionHeight toDimension:ALDimensionWidth ofView:self.textView];
    [self.textView autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
    [self.textView autoAlignAxisToSuperviewAxis:ALAxisVertical];
}

@end
