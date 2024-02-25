# Purpose
Small Objective C sample how to restrict a UITextView's size on iOS when the (onscreen) keyboard appears:

Basically only the UITextView's bottom layout anchor is fixed to the top keyboard's layout guide. No handlng of "flowing keyboards" as addressed in Apple's [sample code](https://developer.apple.com/documentation/uikit/keyboards_and_input/adjusting_your_layout_with_keyboard_layout_guide>):

> When you use keyboardLayoutGuide and leave followsUndockedKeyboard set to the default value of false, the guide matches the keyboard when it docks. When the keyboard isn’t onscreen, the guide is at the bottom of the window and has a height equal to the bottom of the current safeAreaInsets. By default, when the keyboard undocks, the guide behaves the same as when you dismiss the keyboard or the keyboard isn’t visible. You can use the guide like any other layout guide.

A navigation bar item is added to dismiss the keyboard by resigning first responder.
