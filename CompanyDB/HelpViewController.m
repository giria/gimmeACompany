//
//  HelpViewController.m
//  CompanyDB
//
//  Created by Joan Barrull Ribalta on 5/24/14.
//  Copyright (c) 2014 Joan Barrull Ribalta. All rights reserved.
//

#import "HelpViewController.h"

@interface HelpViewController ()

@end

@implementation HelpViewController

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
    self.textView.font= [UIFont fontWithName:@"HelveticaNeue" size:20.0];
    self.textView.text =  @"\n\n\n Quickly obtain the list of nearby companies with Gimme Company app. The app sends the list of companies by email.\n\n Features:\n\n - Easy operation. Just click two buttons. \n\n - Save the list of close places to a Sqlite3 database. \n\n - Send the database file by email \n\n";
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
