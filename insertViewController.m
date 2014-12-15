//
//  insertViewController.m
//  云笔记
//
//  Created by neworigin on 14-10-22.
//  Copyright (c) 2014年 neworigin. All rights reserved.
//

#import "insertViewController.h"

@interface insertViewController ()

@end

@implementation insertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.atodo=[[ToDo alloc]init];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
     [textField resignFirstResponder];
     return YES;
     
}
- (IBAction)insert:(id)sender {
     self.atodo.subject=self.insertsubject.text;
     self.atodo.todoDescription=self.insertdescription.text;
     self.atodo.priority=[self.insertpro.text integerValue];
     self.atodo.date=self.insertdate.text;
     [self.atodo insertDB:_atodo];
     [self dismissViewControllerAnimated:YES completion:nil];
}
@end
