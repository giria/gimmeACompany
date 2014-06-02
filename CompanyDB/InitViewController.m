//
//  InitViewController.m
//  CompanyDB
//
//  Created by Joan Barrull Ribalta on 5/25/14.
//  Copyright (c) 2014 Joan Barrull Ribalta. All rights reserved.
//

#import "InitViewController.h"

@interface InitViewController ()

@end

@implementation InitViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [super viewDidLoad];
    
   
	// Do any additional setup after loading the view, typically from a nib.
    _animatedBackground.animationImages = @[
                                          [UIImage imageNamed:@"00.png"] ,
                                          [UIImage imageNamed:@"01.png"] ,
                                          [UIImage imageNamed:@"02.png"] ,
                                          [UIImage imageNamed:@"03.png"] ,
                                          [UIImage imageNamed:@"04.png"] ,
                                          [UIImage imageNamed:@"05.png"] ,


                                           ];
    
    
    [_animatedBackground setAnimationDuration: 3];
    [_animatedBackground setAnimationRepeatCount:0];
    [_animatedBackground startAnimating];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"companyDB"]) {
        
        
        NSLog(@" afer segue");
        
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
