#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	self.textView.backgroundColor = [UIColor lightGrayColor];
	self.textView.translatesAutoresizingMaskIntoConstraints = NO;
		
	CGFloat border = 5.0f;
		
	[[self.textView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:border] setActive:YES];
	[[self.textView.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor constant:border] setActive:YES];
	[[self.textView.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor constant:-border] setActive:YES];
	[[self.textView.bottomAnchor constraintEqualToAnchor:self.view.keyboardLayoutGuide.topAnchor constant:-border] setActive:YES];
}

- (IBAction)hideKeyboard:(UIBarButtonItem *)sender
{
	[self.textView resignFirstResponder];
}

@end
