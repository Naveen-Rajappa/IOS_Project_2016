//
//  ViewController.h
//  MeasuringUnit
//
//  Created by epita on 11/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *text;
@property (weak, nonatomic) IBOutlet UILabel *result;
@property (weak, nonatomic) IBOutlet UIButton *convert;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerUnits;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerComponents;
@property NSArray *aryUnits,*aryArea,*aryLength,*aryTemp;


@end

