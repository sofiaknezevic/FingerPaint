//
//  ViewController.m
//  FingerPaint
//
//  Created by Sofia Knezevic on 2017-02-17.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"

@interface ViewController () <UIPickerViewDataSource,UIPickerViewDelegate>

@property (nonatomic, strong) IBOutlet DrawView *drawView;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapTap;

@property (weak, nonatomic) IBOutlet UIPickerView *colorPicker;

@property (nonatomic, strong) NSArray *colorArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.colorPicker.delegate = self;
    
    [self.view addSubview:self.colorPicker];
    
    [self.colorPicker setHidden:YES];

    self.colorArray = [[NSArray alloc] initWithObjects:@"black",@"blue",@"brown",@"cyan",@"magenta",@"green", nil];
    

}
- (IBAction)tappedForColor:(id)sender {

    [self.colorPicker setHidden:NO];
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 12;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    return [self.colorArray objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    switch (row) {
        case 0:
            self.drawView.lineColor = [UIColor blackColor];
            break;
            
        case 1:
            self.drawView.lineColor = [UIColor blueColor];
            break;
            
        case 2:
            self.drawView.lineColor = [UIColor brownColor];
            break;
            
        case 3:
            self.drawView.lineColor = [UIColor cyanColor];
            break;
            
        case 4:
            self.drawView.lineColor = [UIColor magentaColor];
            break;
            
        case 5:
            self.drawView.lineColor = [UIColor greenColor];
            break;
            
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
