//
//  ViewController.m
//  TipCalculator
//
//  Created by Larry Luk on 2017-11-10.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (assign, nonatomic) NSInteger tipPercentageSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tipPercentageTextField.text = [NSString stringWithFormat:@"15"];

}

- (IBAction)calculateTip:(id)sender {
    
    NSInteger tipAmount = [self.billAmountTextField.text integerValue] * self.tipPercentageSlider / 100;
    self.tipAmountLabel.text = [NSString stringWithFormat:@"Tip amount: $%li", tipAmount];
}


- (IBAction)adjustTipPercentage:(UISlider *)sender {
    
    self.tipPercentageSlider = sender.value;
    self.tipPercentageTextField.text = [NSString stringWithFormat:@"%li", self.tipPercentageSlider];
    
}


@end
