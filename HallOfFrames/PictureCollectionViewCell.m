//
//  PictureCollectionViewCell.m
//  HallOfFrames
//
//  Created by Mingu Chu on 3/23/16.
//  Copyright © 2016 Mingu Chu. All rights reserved.
//

#import "PictureCollectionViewCell.h"

@implementation PictureCollectionViewCell


-(IBAction)onTapGesture:(UITapGestureRecognizer *)sender {
    [self.delegate pictureCollectionViewCell:self didTapButton:sender];
    
}
@end
