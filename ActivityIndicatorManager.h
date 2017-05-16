//
//  ActivityIndicatorManager.h
//  LotteryTicket
//
//  Created by trillion on 2017/5/16.
//  Copyright © 2017年 3A. All rights reserved.
//

#import "AlertManager.h"

#import "ActivityIndicatorVC.h"

@interface ActivityIndicatorManager : AlertManager

void showActivityIndicator (void (^appearBlock)(ActivityIndicatorVC * aiVC));

@end
