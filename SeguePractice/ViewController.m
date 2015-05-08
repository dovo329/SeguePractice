//
//  ViewController.m
//  SeguePractice
//
//  Created by Douglas Voss on 5/4/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.textField.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSLog(@"c self.textField.text=%@", self.textField.text);
    DetailViewController *detailVC = segue.destinationViewController;
    NSLog(@"detailVC = %@", detailVC);
    detailVC.string = self.textField.text;
    NSLog(@"d detailVC.string=%@", detailVC.string);


    /*NSLog(@"c self.textField.text=%@", self.textField.text);
    UINavigationController *navigationController = (UINavigationController *)segue.destinationViewController;
    DetailViewController *detailViewController = [[navigationController viewControllers] lastObject];
    detailViewController.string = self.textField.text;
    NSLog(@"d detailVC.string=%@", detailViewController.string);*/
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"a self.textField.text=%@", self.textField.text);
    [textField resignFirstResponder];
    NSLog(@"b self.textField.text=%@", self.textField.text);
    return YES;
}

@end
