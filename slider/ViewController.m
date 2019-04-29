//
//  ViewController.m
//  slider
//
//  Created by D on 2018/7/31.
//  Copyright © 2018年 D. All rights reserved.
//

#import "ViewController.h"
#import "YJHSlider.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel* scoringCalculateLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //滑块移动
    [self setupSlider];
}

- (void) setupSlider
{
    self.scoringCalculateLabel = [[UILabel alloc] initWithFrame:CGRectMake(35, 100, self.view.frame.size.width - 70, 30)];
    self.scoringCalculateLabel.backgroundColor = [UIColor clearColor];
    self.scoringCalculateLabel.text = @"请滑动";
    [self.view addSubview:self.scoringCalculateLabel];
    YJHSlider* scoringCalculateSlider = [[YJHSlider alloc] initWithFrame:CGRectMake(35,  63+35+30+10+20+40, self.view.frame.size.width-70, 5)];
    scoringCalculateSlider.sliderStyle = YJHSliderStyle_Cross;
    scoringCalculateSlider.backgroundColor = [UIColor lightGrayColor];
    scoringCalculateSlider.thumbImage = [UIImage imageNamed:@"scoringCalculate"];
    scoringCalculateSlider.thumbShadowColor = [UIColor clearColor];
    scoringCalculateSlider.thumbShadowOpacity = 1.0f;
    scoringCalculateSlider.thumbDiameter = 23;
    scoringCalculateSlider.scaleLineXColor = [UIColor clearColor];
    scoringCalculateSlider.scaleLineColor = [UIColor redColor];
    scoringCalculateSlider.scaleLineWidth = 1.0f;
    scoringCalculateSlider.scaleLineHeight = 3;
    scoringCalculateSlider.scaleLineNumber = 4;
    [scoringCalculateSlider setSelectedIndex:2];
    [scoringCalculateSlider addTarget:self action:@selector(scoringCalculateSliderAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:scoringCalculateSlider];
}

- (void) scoringCalculateSliderAction:(YJHSlider*) sender
{
    self.scoringCalculateLabel.text = [NSString stringWithFormat:@"当前滑动 value: %ld",sender.currentIdx];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
