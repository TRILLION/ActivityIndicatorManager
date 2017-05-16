//
//  ActivityIndicatorVC.m
//  LotteryTicket
//
//  Created by trillion on 2017/5/16.
//  Copyright © 2017年 3A. All rights reserved.
//

#import "ActivityIndicatorVC.h"

@interface ActivityIndicatorVC ()

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation ActivityIndicatorVC

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        self.modalPresentationStyle = UIModalPresentationOverFullScreen;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self.activityIndicator startAnimating];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

/**
 撤回方法

 今后可以封装一个alert 就在这里展示 这样就可以省去先dismiss 再present提示页面的麻烦 哈哈 想想而已 别往脸上打
 
 @param hiddenBlock 撤回block
 */
- (void) hiddenActivityIndicatorVC:(void(^)())hiddenBlock {
    [self dismissViewControllerAnimated:YES completion:hiddenBlock];
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

@end
