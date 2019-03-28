//
//  ViewController.m
//  ModularizationDemo
//
//  Created by Mr_Lucky on 2018/11/1.
//  Copyright © 2018 wenbo. All rights reserved.
//

#import "ViewController.h"

#import "MGJRouter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"ModularizationDemo";
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
        {
            
//            [MGJRouter openURL:@"MGJ://test/pushMGJDetail1"
//                  withUserInfo:@{@"navVC" : self.navigationController,
//                                 @"text" : @"test"
//                                 }
//                    completion:nil];
            
            UIViewController *vc = [MGJRouter objectForURL:@"MGJ://test/pushMGJDetail2" withUserInfo:@{@"text" : @"test"}];
            [self.navigationController pushViewController:vc animated:YES];
            
        }
            break;
            
        default:
            break;
    }
    
    
}


@end
