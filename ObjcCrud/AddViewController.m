//
//  AddViewController.m
//  ObjcCrud
//
//  Created by DetroitLabs on 9/1/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()
@property (weak, nonatomic) IBOutlet UITextField *itemLabel;
@property NSString *item;
@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view."
    self.title = @"Add something!";
    _itemLabel.delegate = self;
    _itemLabel.returnKeyType = UIReturnKeyDone;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == _itemLabel) {
        [textField resignFirstResponder];
//        _item = textField.text;
        self.somethingHappenedInModalVC(textField.text);
        [self dismissViewControllerAnimated:YES completion:nil];
        return NO;
    } else {
        _item = @"Poop";
    }
    return YES;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
}


@end