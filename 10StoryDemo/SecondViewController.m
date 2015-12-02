//
//  SecondViewController.m
//  10StoryDemo
//
//  Created by John on 11/15/15.
//  Copyright © 2015 Jona. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     self.finish.hidden = YES;
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



- (IBAction)button2:(id)sender {
    
    UIAlertController *incorrect = [UIAlertController alertControllerWithTitle:@"Incorrect"
        message: @"Please try again" preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertController *correct = [UIAlertController alertControllerWithTitle:@"Correct"
        message: @"Good Job!" preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertAction *good = [UIAlertAction actionWithTitle:@"Thanks "
    style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
        
    }];
    
    [correct addAction:good];
    
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"You're ___ suprises." message: @"Kristen" preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertAction *choice1 = [UIAlertAction actionWithTitle:@"full of " style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                [self presentViewController:correct animated:YES completion:nil];
                                  } ];
    UIAlertAction *choice2 = [UIAlertAction
    actionWithTitle:@"full with " style:UIAlertActionStyleDestructive
    handler:^(UIAlertAction *action){
                        [self presentViewController:incorrect animated:YES completion:nil]; } ];
    [alert addAction:choice1];
    [alert addAction:choice2];
    
    UIAlertAction *okbutton = [UIAlertAction actionWithTitle:@"ok "
    style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
    [self presentViewController:alert animated:YES completion:nil];
    } ];
    [incorrect addAction:okbutton];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    
}



- (IBAction)button1:(id)sender {
    
    UIAlertController *incorrect = [UIAlertController alertControllerWithTitle:@"Incorrect"
        message: @"Please try again" preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertController *correct = [UIAlertController alertControllerWithTitle:@"Correct"
        message: @"Good Job!" preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertAction *good = [UIAlertAction actionWithTitle:@"Thanks "
        style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                                                           
    
                                                           
        }];
    
    [correct addAction:good];
    
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"I'm not sure I'll ___ at this job." message: @"Beth"
        preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertAction *choice1 = [UIAlertAction
        actionWithTitle:@"Succeed at " style:UIAlertActionStyleDestructive
            handler:^(UIAlertAction *action){
                            
[self presentViewController:correct animated:YES completion:nil];
                            
                        } ];
    UIAlertAction *choice2 = [UIAlertAction
      actionWithTitle:@"Succeed of " style:UIAlertActionStyleDestructive
          handler:^(UIAlertAction *action){
                                  
[self presentViewController:incorrect animated:YES completion:nil];
                                  
                              } ];
    [alert addAction:choice1];
    [alert addAction:choice2];
    
    UIAlertAction *okbutton = [UIAlertAction actionWithTitle:@"ok "
        style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
            
            [self presentViewController:alert animated:YES completion:nil];
                                                           
        } ];
    [incorrect addAction:okbutton];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    
}
@end
