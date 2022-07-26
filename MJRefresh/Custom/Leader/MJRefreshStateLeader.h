//
//  MJRefreshStateLeader.h
//  Mangadex
//
//  Created by John Rion on 2021/7/21.
//

#if __has_include(<MJRefresh/MJRefreshTrailer.h>)
#import <MJRefresh/MJRefreshLeader.h>
#else
#import "MJRefreshLeader.h"
#endif

NS_ASSUME_NONNULL_BEGIN

@interface MJRefreshStateLeader : MJRefreshLeader

@property (nonatomic, readonly, weak) UILabel *stateLabel;

- (instancetype)setTitle:(NSString *)title forState:(MJRefreshState)state;

@end

NS_ASSUME_NONNULL_END
