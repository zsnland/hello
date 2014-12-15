//
//  insertViewController.h
//  云笔记
//
//  Created by neworigin on 14-10-22.
//  Copyright (c) 2014年 neworigin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"
@interface insertViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *insertsubject;
@property (weak, nonatomic) IBOutlet UITextField *insertdescription;
@property (weak, nonatomic) IBOutlet UITextField *insertpro;
@property (weak, nonatomic) IBOutlet UITextField *insertdate;
- (IBAction)insert:(id)sender;
@property(strong,nonatomic)ToDo * atodo;

@end
