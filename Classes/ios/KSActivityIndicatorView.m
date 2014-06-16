//
//  KSActivityIndicatorView.m
//  KSActivityIndicatorViewDemo
//
//  Created by Mike on 2014-06-16.
//  Copyright (c) 2014 Mike. All rights reserved.
//

#import "KSActivityIndicatorView.h"

@interface KSActivityIndicatorView()
@property (strong, nonatomic) UIImageView* imageView;
@property (strong, nonatomic) NSTimer* animationTimer;
@property (assign, nonatomic) int currentImageIndex;
@end

@implementation KSActivityIndicatorView
@synthesize duration, loadingImagesArray;

-(instancetype) initWithImageArray:(NSArray*) imagesArray andDuration:(CGFloat)d
{
    NSParameterAssert(imagesArray.count>0);
    NSParameterAssert([imagesArray.firstObject isKindOfClass:[UIImage class]]);
    
    UIImage *firstImage = imagesArray.firstObject;
    
    self = [super initWithFrame:CGRectMake(0, 0, firstImage.size.width, firstImage.size.height)];
    
    if(self) {
        NSMutableArray* array = [[NSMutableArray alloc]init];
        for(UIImage* img in imagesArray) {
            [array addObject:[img imageWithRenderingMode:UIImageRenderingModeAutomatic]];
        }
        self.loadingImagesArray = array;
        self.duration = d;
        self.imageView = self.subviews.firstObject;
        self.imageView = [self.imageView initWithImage:firstImage];
        self.imageView.contentMode = UIViewContentModeCenter;
        self.imageView.frame = CGRectMake(0, 0, firstImage.size.width, firstImage.size.height);
        self.currentImageIndex = 0;
    }
    
    return self;
}

-(void) setTintColor:(UIColor *)tintColor
{
    [super setTintColor:tintColor];
    
    void (^setRenderMode)(UIImageRenderingMode mode)  = ^(UIImageRenderingMode mode){
        NSMutableArray* array = [[NSMutableArray alloc]init];
        for(UIImage* img in self.loadingImagesArray) {
            [array addObject:[img imageWithRenderingMode:mode]];
        }
        self.loadingImagesArray = array;
    };
    
    if([tintColor isEqual:[UIColor clearColor]]) {
        setRenderMode(UIImageRenderingModeAlwaysOriginal);
    } else {
        setRenderMode(UIImageRenderingModeAlwaysTemplate);
    }
}
-(void) setCurrentImageIndex:(int)currentImageIndex
{
    if(currentImageIndex < 0) currentImageIndex = 0;
    if(currentImageIndex >= self.loadingImagesArray.count) currentImageIndex = 0;
    
    _currentImageIndex = currentImageIndex;
    self.imageView.image = self.loadingImagesArray[self.currentImageIndex];
}

-(void) animateImages:(NSTimer*)theTimer
{
    self.currentImageIndex++;
}

- (void)startAnimating {
    self.hidden = NO;
    if(self.animationTimer) {
        [self.animationTimer invalidate];
    }
    
    // only launch timer when there's a need for it
    if(self.loadingImagesArray.count > 0 && self.duration > 0) {
        self.animationTimer = [NSTimer scheduledTimerWithTimeInterval:self.framerate
                                                               target:self
                                                             selector:@selector(animateImages:)
                                                             userInfo:self.imageView
                                                              repeats:YES];
        
    }
}

-(CGFloat) framerate
{
    CGFloat fr = self.duration / self.loadingImagesArray.count;
    return fr;
}

- (void)stopAnimating {
    if(self.hidesWhenStopped) {
        self.hidden = YES;
    }
    self.currentImageIndex = 0;
    [self.animationTimer invalidate];
}

- (BOOL)isAnimating {
    return self.animationTimer.isValid;
}

- (void)setIndicatorProgressPosition:(CGFloat) progress
{
    NSInteger index = (NSInteger)(progress*(self.loadingImagesArray.count-1));
    if(self.isAnimating) {
        [self.imageView stopAnimating];
    }
    
    if(self.isHidden) {
        self.hidden = NO;
    }
    
    self.imageView.image = self.loadingImagesArray[index];
    
    
}

@end
