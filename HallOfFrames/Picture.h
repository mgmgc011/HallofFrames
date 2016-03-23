//
//  Picture.h
//  HallOfFrames
//
//  Created by Mingu Chu on 3/23/16.
//  Copyright © 2016 Mingu Chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Picture : NSObject

@property UIImage *image;
@property UIColor *frameColor;

-(instancetype) initWithImage:(UIImage *)image withFrameColor:(UIColor *)frameColor;

@end
