//
//  net_addimage_dropdownmenuViewController.h
//  DropDown Menu Storyboard
//
//  Created by and on 14/07/2012.
//

#import <UIKit/UIKit.h>
#import "UIDropDownMenu.h"

@interface net_addimage_dropdownmenuViewController : UIViewController<UIDropDownMenuDelegate>{
    IBOutlet UITextField *textfield1;
    IBOutlet UITextField *textfield2;
    IBOutlet UITextField *textfield3;
    
    IBOutlet UIButton *button1;
    
    IBOutlet UILabel *selectedLabel;
    
    UIDropDownMenu *textmenu1;
    UIDropDownMenu *textmenu2;
    UIDropDownMenu *textmenu3;
    UIDropDownMenu *buttonmenu1;
}

@property (strong, nonatomic) IBOutlet UITextField *textfield1;
@property (strong, nonatomic) IBOutlet UITextField *textfield2;
@property (strong, nonatomic) IBOutlet UITextField *textfield3;

@property (strong, nonatomic) IBOutlet UIButton *button1;

@property (strong, nonatomic) UIDropDownMenu *textmenu1;
@property (strong, nonatomic) UIDropDownMenu *textmenu2;
@property (strong, nonatomic) UIDropDownMenu *textmenu3;
@property (strong, nonatomic) UIDropDownMenu *buttonmenu1;

@property (strong, nonatomic) UILabel *selectedLabel;

@end
