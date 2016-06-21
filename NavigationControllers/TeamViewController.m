//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Flatiron School on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamMember.h"
#import "TeamDetailViewController.h"

@interface TeamViewController ()

@end

@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //if segue identifier is equal to the info i give it then i would make it go to the destination location (teamdetailviewcontroller)
    
    if([segue.identifier isEqualToString: @"jonSnowSegue"]) {
        TeamDetailViewController *VC = segue.destinationViewController;
        VC.teamMember.name = @"Jon Snow";
        VC.teamMember.phoneNumber = @"1-800-theWall";
        VC.teamMember.birthCity = @"Winterfell";
        VC.teamMember.birthState = @"Westoros";
        VC.teamMember.favoriteBand = @"Arctic Monkeys";
        VC.teamMember.photo = [UIImage imageNamed:@"chris"];
    }
    else if ([segue.identifier isEqualToString:@"sansaStarkSegue"]) {
        TeamDetailViewController *sansaVC = segue.destinationViewController;
        sansaVC.teamMember.name = @"Sansa Stark";
        sansaVC.teamMember.phoneNumber = @"1-800-Winterfell";
        sansaVC.teamMember.birthCity = @"Winterfell";
        sansaVC.teamMember.birthState = @"Westoros";
        sansaVC.teamMember.favoriteBand = @"Hole";
        sansaVC.teamMember.photo = [UIImage imageNamed:@"avi"];
    }
    else if ([segue.identifier isEqualToString:@"aryaStarkSegue"]) {
        TeamDetailViewController *aryaVC = segue.destinationViewController;
        aryaVC.teamMember.name = @"Arya Stark";
        aryaVC.teamMember.phoneNumber = @"1-800-Winterfell";
        aryaVC.teamMember.birthCity = @"Winterfell";
        aryaVC.teamMember.birthState = @"Westoros";
        aryaVC.teamMember.favoriteBand = @"The Yeah Yeah Yeahs";
        aryaVC.teamMember.photo = [UIImage imageNamed:@"joe"];
    }
    else if ([segue.identifier isEqualToString:@"Al"]) {
        TeamDetailViewController *alVC = (TeamDetailViewController *)segue.destinationViewController;
        
        TeamMember *al = [[TeamMember alloc]init];
        
        al.name = @"Al";
        al.phoneNumber = @"5551212";
        al.birthCity = @"Detroit";
        al.birthState = @"Michigan";
        al.favoriteBand = @"The Beatles";
        al.photo = [UIImage imageNamed:@"Al"];
        
        alVC.teamMember = al;
        
//        alVC.teamMember.name = @"Al";
//        alVC.teamMember.phoneNumber = @"5551212";
//        alVC.teamMember.birthCity = @"Detroit";
//        alVC.teamMember.birthState = @"Michigan";
//        alVC.teamMember.favoriteBand = @"The Beatles";
//        alVC.teamMember.photo = [UIImage imageNamed:@"Al"];
        //the team member is nil, until i init it

    }
}

- (IBAction)topLeftButtonTapped:(id)sender {
}


- (IBAction)bottomLeftButtonTapped:(id)sender {
}

- (IBAction)topRightButtonTapped:(id)sender {
}

- (IBAction)bottomRightButtonTapped:(id)sender {
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/




@end
