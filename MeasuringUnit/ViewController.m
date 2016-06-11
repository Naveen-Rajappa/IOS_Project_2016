//
//  ViewController.m
//  MeasuringUnit
//
//  Created by epita on 11/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "ViewController.h"
#import "calConvertor.h"

@interface ViewController ()
@property (nonatomic) calConvertor* cal;
@end

@implementation ViewController

double idx,from,to,txt;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.text.delegate=self;
    self.pickerUnits.delegate=self;
    self.pickerUnits.dataSource=self;
    self.pickerComponents.delegate=self;
    self.pickerComponents.dataSource=self;
    // Do any additional setup after loading the view, typically from a nib.
    self.aryUnits = @[@"Area",@"Length",@"Temperature"];
    self.aryArea = @[@"Square KM",@"Square Meter",@"Square Foot"];
    self.aryLength=@[@"Meter",@"Kilometer",@"Mile",@"Foot"];
    self.aryTemp=@[@"Celsius",@"Farenheit",@"Kelvin"];
    self.cal =[[calConvertor alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)convert:(UIButton*)sender
{
if(idx== 0)
{
    self.result.text = [NSString stringWithFormat:@"%f",[self.cal conArea:from :to :txt]];
}
    else if (idx ==1)
    {
        self.result.text = [NSString stringWithFormat:@"%f",[self.cal conLen:from :to :txt]];
    }
    else if (idx ==2)
    {
        self.result.text = [NSString stringWithFormat:@"%f",[self.cal conTemp:from :to :txt]];
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.text becomeFirstResponder];
    txt = [textField.text doubleValue];
    if(txt == 0.000)
    {
        self.result.textColor = [UIColor redColor];
        self.result.text = @"Enter the digits!!";
    }
    [self.text resignFirstResponder];
    return false;
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    if(pickerView == self.pickerUnits)
    {
        return 1;
    }
    else{
        return 2;
    }
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSArray *data = [self dataByPicker:pickerView];
    return [data count];
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (pickerView == self.pickerUnits)
    {
        [self.pickerComponents reloadAllComponents];
    }
    
    idx = [self.pickerUnits selectedRowInComponent:0];
    from = [self.pickerComponents selectedRowInComponent:0];
    to = [self.pickerComponents selectedRowInComponent:1];
    
}
-(NSArray*) dataByPicker:(UIPickerView *)pickerView
{
    NSArray *content;
    if(pickerView == self.pickerUnits)
    {
        content = self.aryUnits;
    }
    else
    {
     if([self.pickerUnits selectedRowInComponent:0] == 0)
     {
         content = self.aryArea;
     }
     else if([self.pickerUnits selectedRowInComponent:0] == 1)
     {
         content = self.aryLength;
     }
     else if([self.pickerUnits selectedRowInComponent:0] == 2)
     {
         content = self.aryTemp;
     }
        
    }
    return content;
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSArray* data=[self dataByPicker:pickerView];
    return [data objectAtIndex:row];
}


@end
