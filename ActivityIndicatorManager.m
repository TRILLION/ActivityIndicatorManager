//
//  ActivityIndicatorManager.m
//  LotteryTicket
//
//  Created by trillion on 2017/5/16.
//  Copyright © 2017年 3A. All rights reserved.
//

#import "ActivityIndicatorManager.h"

@implementation ActivityIndicatorManager {
    void(^dismissBlock)(ActivityIndicatorVC * aiVC);
}

void showActivityIndicator (void (^appearBlock)(ActivityIndicatorVC * aiVC)) {
    
    ActivityIndicatorVC * ai = [ActivityIndicatorVC new];
    
    [TOPVC presentViewController:ai animated:YES completion:^{
        if (appearBlock) {
            appearBlock(ai);
        }
    }];
}

@end
