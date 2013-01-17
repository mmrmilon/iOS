//
//  net_addimage_dropdownmenuViewController.m
//  DropDown Menu Storyboard
//
//  Created by and on 14/07/2012.

#import "net_addimage_dropdownmenuViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface net_addimage_dropdownmenuViewController ()

@end

@implementation net_addimage_dropdownmenuViewController
@synthesize textfield1, textfield2, textfield3, selectedLabel, textmenu1, textmenu2, textmenu3, buttonmenu1, button1;


- (void)viewDidLoad
{
    [super viewDidLoad];
    textfield1.text = @"Click to select";
    textfield2.enabled = false;
    textfield3.enabled = false;
    
    
    // allocate the dropdown menus with an identifier string
    buttonmenu1 = [[UIDropDownMenu alloc] initWithIdentifier:@"buttonmenu1"];
    textmenu1 = [[UIDropDownMenu alloc] initWithIdentifier:@"textmenu1"]; 
    textmenu2 = [[UIDropDownMenu alloc] initWithIdentifier:@"textmenu2"];
    textmenu3 = [[UIDropDownMenu alloc] initWithIdentifier:@"textmenu3"];
    
    // create an NSMutableArray to use on the drop down menu
    NSMutableArray *arrayNames = [[NSMutableArray alloc] initWithObjects:
                           @"Erik Vanderwal",
                           @"Max Town",
                           @"Darryl Totman",
                           @"Avis Villalon",
                           @"Hugh Salvia",
                           @"Allie Maland",                         
                           nil];
    
    // example 1: a basic drop down menu with a fixed width attached to a button    
       
    buttonmenu1.ScaleToFitParent = FALSE;                   // ScaleToFitParent will scale the menu to be the same width as the parent button or text box
    buttonmenu1.menuWidth = 200;                            // menuWidth will set the width of the menu only if ScaleToFitParent is FALSE
                                                            // NOTE: ScaleToFitParent and menuWidth only apply to iPads.  On the iPhones and iPod touch the menu will display full screen.
    buttonmenu1.titleArray = arrayNames;                    // titleArray contains the text which is shown on the drop down menu
    buttonmenu1.valueArray = arrayNames;                    // valueArray contains the text which is returned when a menu item is selected
    [buttonmenu1 makeMenu:button1 targetView:self.view];    // create the menu and attach it to button1 within the current view
    buttonmenu1.delegate = self;                            // delegate the menu to the current view
    
    
    // example 2: a basic drop down menu attached to a text field with the width scaled to match the text field      
    
    textmenu1.ScaleToFitParent = TRUE;
    textmenu1.titleArray = arrayNames;
    textmenu1.valueArray = arrayNames;
    [textmenu1 makeMenu:textfield1 targetView:self.view];
    textmenu1.delegate = self;
    

}



- (void) DropDownMenuDidChange:(NSString *)identifier :(NSString *)ReturnValue{
    /*
    --- DropDownMenuDidChange will be triggered by the Drop Down Menu when an item has been selected. Ensure that <UIDropDownMenuDelegate> is included in the header file.
    --- (NSString *)identifier returns the value specified with initWithIdentifier.
    --- (NSString *)ReturnValue returns the selected item from the valueArray.
    */
    
    // check to see if the selected menu was textmenu1
    if (identifier == @"textmenu1"){
        textfield1.text = ReturnValue;
        
        textfield2.enabled = true;
        textfield2.text = @"Click to select";
        
        // example 3: add a new menu to textfield2 and change the styling colors for the drop down menu
        
        NSMutableArray *arrayNames = [[NSMutableArray alloc] initWithObjects:
                                      @"option 2 a",
                                      @"option 2 b",
                                      @"option 2 c",
                                      @"option 2 d",
                                      @"option 2 e",
                                      nil];
                
        textmenu2.ScaleToFitParent = TRUE;
        textmenu2.titleArray = arrayNames;
        textmenu2.valueArray = arrayNames;
        
        textmenu2.backgroundColor = [UIColor blueColor];
        textmenu2.borderColor = [UIColor whiteColor];
        textmenu2.textColor = [UIColor whiteColor];
        
        textmenu2.rowHeight = 50;
        
        [textmenu2 makeMenu:textfield2 targetView:self.view];
        textmenu2.delegate = self;      
        
    }
    
    // check to see if the selected menu was textmenu1
    if (identifier == @"textmenu2"){
        textfield2.text = ReturnValue;
        
        textfield3.enabled = true;
        textfield3.text = @"Click to select";
        
        // example 3: add a new menu to textfield2 and change the styling colors for the drop down menu
        
        NSMutableArray *arrayNames = [[NSMutableArray alloc] initWithObjects:
                                      @"option 3 a",
                                      @"option 3 b",
                                      @"option 3 c",
                                      @"option 3 d",
                                      @"option 3 e",
                                      nil];
        
        textmenu3.ScaleToFitParent = TRUE;
        textmenu3.titleArray = arrayNames;
        textmenu3.valueArray = arrayNames;
        [textmenu3 makeMenu:textfield3 targetView:self.view];
        textmenu3.delegate = self;
        
    }
    
    if (identifier == @"textmenu3"){
        textfield3.text = ReturnValue;
    }

    
    selectedLabel.text = ReturnValue;
}


- (void)viewDidUnload
{
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
