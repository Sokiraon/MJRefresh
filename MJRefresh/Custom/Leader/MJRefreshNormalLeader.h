//
//  MJRefreshNormalLeader.h
//  Mangadex
//
//  Created by John Rion on 2021/7/21.
//

#if __has_include(<MJRefresh/MJRefreshStateTrailer.h>)
#import <MJRefresh/MJRefreshStateLeader.h>
#else
#import "MJRefreshStateLeader.h"
#endif

NS_ASSUME_NONNULL_BEGIN

@interface MJRefreshNormalLeader : MJRefreshStateLeader

@property (weak, nonatomic, readonly) UIImageView *arrowView;

- (void)setArrowImage:(UIImage *)image;

@end

NS_ASSUME_NONNULL_END
