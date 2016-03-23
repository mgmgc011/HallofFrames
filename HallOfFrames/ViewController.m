//
//  ViewController.m
//  HallOfFrames
//
//  Created by Mingu Chu on 3/23/16.
//  Copyright © 2016 Mingu Chu. All rights reserved.
//

#import "ViewController.h"
#import "Picture.h"
#import "PictureCollectionViewCell.h"


@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, PictureCollectionViewCellDelegate>


@property NSArray *pictureS;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Picture *p1 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"Apple"] withFrameColor:[UIColor clearColor]];
    Picture *p2 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"facebook"] withFrameColor:[UIColor clearColor]];
    Picture *p3 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"Google"] withFrameColor:[UIColor clearColor]];
    Picture *p4 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"Samsung"] withFrameColor:[UIColor clearColor]];
    Picture *p5 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"Twitter"] withFrameColor:[UIColor clearColor]];

    
    
    self.pictureS = @[p1, p2, p3, p4, p5];
}



-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.pictureS.count;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PictureCollectionViewCell *pictureCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CellID" forIndexPath:indexPath];
    pictureCell.delegate =self;
    
    Picture *picture = self.pictureS[indexPath.row];
    pictureCell.imageView.image =picture.image;
    pictureCell.backgroundColor = picture.frameColor;
    

    
    return pictureCell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"tapped");
        [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];

}

-(void)pictureCollectionViewCell:(PictureCollectionViewCell *)cell didTapButton:(UITapGestureRecognizer *)sender {
//    [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
}


@end
