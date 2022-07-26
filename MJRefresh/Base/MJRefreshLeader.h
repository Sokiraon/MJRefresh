//
//  MJRefreshLeader.h
//  Mangadex
//
//  Created by John Rion on 2021/7/21.
//

#if __has_include(<MJRefresh/MJRefreshComponent.h>)
#import <MJRefresh/MJRefreshComponent.h>
#else
#import "MJRefreshComponent.h"
#endif

NS_ASSUME_NONNULL_BEGIN

@interface MJRefreshLeader : MJRefreshComponent

/** 创建leader*/
+ (instancetype)leaderWithRefreshingBlock:(MJRefreshComponentAction)refreshingBlock;
/** 创建leader */
+ (instancetype)leaderWithRefreshingTarget:(id)target refreshingAction:(SEL)action;

/** 忽略多少scrollView的contentInset的left */
@property (assign, nonatomic) CGFloat ignoredScrollViewContentInsetLeft;


@end

NS_ASSUME_NONNULL_END
