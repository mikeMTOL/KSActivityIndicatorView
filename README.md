# KSActivityIndicatorView

[![Version](https://img.shields.io/cocoapods/v/KSActivityIndicatorView.svg?style=flat)](http://cocoadocs.org/docsets/KSActivityIndicatorView)
[![License](https://img.shields.io/cocoapods/l/KSActivityIndicatorView.svg?style=flat)](http://cocoadocs.org/docsets/KSActivityIndicatorView)
[![Platform](https://img.shields.io/cocoapods/p/KSActivityIndicatorView.svg?style=flat)](http://cocoadocs.org/docsets/KSActivityIndicatorView)

<img alt="ScreenShot Landscape" src="https://github.com/mikeMTOL/KSActivityIndicatorView/blob/master/screencap.gif?raw=true" width="320px"/>
## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

KSActivityIndicatorView provides an alternative to UIActivityIndicatorView that lets you specify the animation with image sequences.

Initialize with
```
self.activityIndicator = [[KSActivityIndicatorView alloc] initWithImageArray:images andDuration:1.0f];
// images is an NSArray of UIImages
```

The animation can be colorized with tintColor property.
```
self.activityIndicator.tintColor = [UIColor redColor];
```

## Requirements

## Installation

KSActivityIndicatorView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "KSActivityIndicatorView"

## Author

mike, 

## License

KSActivityIndicatorView is available under the MIT license. See the LICENSE file for more info.

