//
//  MJRefreshNormalLeader.m
//  Mangadex
//
//  Created by John Rion on 2021/7/21.
//

#import "MJRefreshNormalLeader.h"
#import "NSBundle+MJRefresh.h"
#import "UIView+MJExtension.h"

@interface MJRefreshNormalLeader () {
    __unsafe_unretained UIImageView *_arrowView;
}

@end

@implementation MJRefreshNormalLeader

- (UIImageView *)arrowView {
    if (!_arrowView) {
        UIImageView *arrowView = [[UIImageView alloc] initWithImage:[NSBundle mj_trailArrowImage]];
        [self addSubview:_arrowView = arrowView];
    }
    return _arrowView;
}

- (void)setArrowImage:(UIImage *)image {
    self.arrowView.image = image;
}

- (void)placeSubviews {
    [super placeSubviews];

    CGSize arrowSize = self.arrowView.image.size;
    // 箭头的中心点
    CGPoint selfCenter = CGPointMake(self.mj_w * 0.5, self.mj_h * 0.5);
    CGPoint arrowCenter = CGPointMake(self.mj_w - arrowSize.width * 0.5 - 5, self.mj_h * 0.5);
    BOOL stateHidden = self.stateLabel.isHidden;
    
    if (self.arrowView.constraints.count == 0) {
        self.arrowView.mj_size = self.arrowView.image.size;
        self.arrowView.center = stateHidden ?  selfCenter : arrowCenter ;
        
    }
    self.arrowView.tintColor = self.stateLabel.textColor;
    
    if (stateHidden) return;
    
    BOOL noConstrainsOnStatusLabel = self.stateLabel.constraints.count == 0;
    CGFloat stateLabelW = ceil(self.stateLabel.font.pointSize);
    // 状态
    if (noConstrainsOnStatusLabel) {
        BOOL arrowHidden = self.arrowView.isHidden;
        CGFloat stateCenterX = (self.mj_w - arrowSize.width) * 0.5;
        self.stateLabel.center = arrowHidden ? selfCenter : CGPointMake(stateCenterX, self.mj_h * 0.5);
        self.stateLabel.mj_size = CGSizeMake(stateLabelW, self.mj_h) ;
    }
}

- (void)setState:(MJRefreshState)state {
    MJRefreshCheckState
    // 根据状态做事情
    if (state == MJRefreshStateIdle) {
        if (oldState == MJRefreshStateRefreshing) {
            [UIView animateWithDuration:self.fastAnimationDuration animations:^{
                self.arrowView.transform = CGAffineTransformMakeRotation(M_PI);
            } completion:^(BOOL finished) {
                self.arrowView.transform = CGAffineTransformIdentity;
            }];
        } else {
            [UIView animateWithDuration:self.fastAnimationDuration animations:^{
                self.arrowView.transform = CGAffineTransformIdentity;
            }];
        }
    } else if (state == MJRefreshStatePulling) {
        [UIView animateWithDuration:self.fastAnimationDuration animations:^{
            self.arrowView.transform = CGAffineTransformMakeRotation(M_PI);
        }];
    }
}

@end
