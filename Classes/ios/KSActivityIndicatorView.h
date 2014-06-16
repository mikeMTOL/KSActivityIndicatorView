//
//  KSActivityIndicatorView.h
//  KSActivityIndicatorViewDemo
//
//  Created by Mike on 2014-06-16.
//  Copyright (c) 2014 Mike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KSActivityIndicatorView : UIActivityIndicatorView
@property (nonatomic, strong) NSArray* loadingImagesArray;
@property (nonatomic, assign) CGFloat duration;

-(instancetype) initWithImageArray:(NSArray*) imagesArray andDuration:(CGFloat)duration;
- (void)setIndicatorProgressPosition:(CGFloat) progress;
@end
