//
//  Picture.m
//  HallOfFrames
//
//  Created by Mingu Chu on 3/23/16.
//  Copyright © 2016 Mingu Chu. All rights reserved.
//

#import "Picture.h"

@implementation Picture


-(instancetype) initWithImage:(UIImage *)image withFrameColor:(UIColor *)frameColor {
    self = [super init];
    if (self) {
        self.image = image;
        self.frameColor = frameColor;
    }
    return self;
}

@end
