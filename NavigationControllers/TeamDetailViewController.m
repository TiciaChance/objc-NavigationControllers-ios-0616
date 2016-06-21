//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Flatiron School on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"

@interface TeamDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumber;
@property (weak, nonatomic) IBOutlet UILabel *favoriteBand;
@property (weak, nonatomic) IBOutlet UILabel *cityAndState;
@property (weak, nonatomic) IBOutlet UIImageView *memberPhoto;


@end

@implementation TeamDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //connect the info in TVController to this - HOW SWAY?

    self.name.text = self.teamMember.name;
    self.phoneNumber.text = self.teamMember.phoneNumber;
    self.favoriteBand.text = self.teamMember.favoriteBand;
    self.memberPhoto.image = self.teamMember.photo;
    self.cityAndState.text = [NSString stringWithFormat:@"%@, %@",self.teamMember.birthCity, self.teamMember.birthState ];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
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
