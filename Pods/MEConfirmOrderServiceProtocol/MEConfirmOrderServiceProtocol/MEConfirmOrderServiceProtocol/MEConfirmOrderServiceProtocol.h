//
//  MEConfirmOrderServiceProtocol.h
//  MEConfirmOrderServiceProtocol
//
//  Created by MoShi-MacBookPro on 2017/4/18.
//  Copyright © 2017年 祁鹏宇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol MEConfirmOrderServiceProtocol <NSObject>

@required;

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete;

@end
