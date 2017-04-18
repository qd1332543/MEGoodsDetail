//
//  MEGoodsDetailServiceProvide.m
//  MEGoodsDetail
//
//  Created by MoShi-MacBookPro on 2017/4/18.
//  Copyright © 2017年 祁鹏宇. All rights reserved.
//

#import "MEGoodsDetailServiceProvide.h"
#import <MEGoodsDetailServiceProtocol/MEGoodsDetailServiceProtocol.h>
#import <MEProtocolManager/MEProtocolManager.h>

#import "MEGoodsDetailViewController.h"

@interface MEGoodsDetailServiceProvide () <MEGoodsDetailServiceProtocol>

@end

@implementation MEGoodsDetailServiceProvide

+ (void)load {
    [MEProtocolManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(MEGoodsDetailServiceProtocol)];
}

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName {
    MEGoodsDetailViewController *goodsDetailVC = [[MEGoodsDetailViewController alloc] initWithGoodsId:goodsId goodsName:goodsName];
    return goodsDetailVC;
}

@end
