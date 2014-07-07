//
//  BanterProfileViewController.m
//  Banter
//
//  Created by Jonathan Aguele on 07/07/2014.
//  Copyright (c) 2014 Sui Generis Innovations. All rights reserved.
//

#import "BanterProfileViewController.h"
#import "SWRevealViewController.h"


@interface BanterProfileViewController ()

@end

@implementation BanterProfileViewController

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
    
    //Create Side bar button
    _leftSideBarItem.target = self.revealViewController;
    _leftSideBarItem.action = @selector(revealToggle:);
    
    _rightSideBarItem.target = self.revealViewController;
    _rightSideBarItem.action = @selector(rightRevealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    [self.view addGestureRecognizer:self.revealViewController.tapGestureRecognizer];
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
