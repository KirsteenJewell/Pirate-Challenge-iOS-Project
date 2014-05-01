//
//  KJViewController.h
//  Pirate Challenge
//
//  Created by Kirsteen Jewell on 10/04/2014.
//  Copyright (c) 2014 limitless. All rights reserved.
//


//Part 1: Setting up the storyboard, a basic Tile object and a Factory.
//
//Part 2: Navigating between tiles, adding a background image and upgrading the story.
//0,0 -> 4,3
//
//Part 3: Adding additional objects: Weapon and Armor and Character: adding their effects to our project.
//
//Part 4: Adding a actions to our story
//
//Part 5: Final boss and Reset

#import <UIKit/UIKit.h>
#import "KJCharacter.h"
#import "KJBoss.h"

@interface KJViewController : UIViewController

//iVars
@property (nonatomic) CGPoint currentTilePoint;
@property (strong, nonatomic) NSArray *myTiles;
@property (strong, nonatomic) KJCharacter *myCharacter;
@property (strong, nonatomic) KJBoss *myBoss;

//IBOutlets
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armourLabel;
@property (strong, nonatomic) IBOutlet UILabel *StoryLabel;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;

//IBActions
- (IBAction)actionButtonPressed:(id)sender;
- (IBAction)northButtonPressed:(id)sender;
- (IBAction)westButtonPressed:(id)sender;
- (IBAction)southButtonPressed:(id)sender;
- (IBAction)eastButtonPressed:(id)sender;
- (IBAction)resetButtonPressed:(id)sender;


@end
