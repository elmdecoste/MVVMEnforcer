# MVVMEnforcer

A lightweight framework that type enforces the MVVM architecture. When you conform a view to the `EnforcedView` type, you will be required to implement a ViewModel and DataModel for your type

## Installing
### Cocoapods

Will deploy to Cocoapods once initial development has been done

### Carthage
Include this line in your Cartfile:

```
github "elmdecoste/MVVMEnforcer" ~> 1.0.0
```

## Usage
### EnforcedView
By implementing the `EnforcedView` protocol, your view will be required to implement a typealias for the ViewModel and a configure function. Once this has been done, Xcode will not be able to compile your code until you've implemented the ViewModel

### ViewModel
A view model should be where all of your logic happens for a view. It coordinates between the view itself and the data model and because of this, it needs to know about both objects. This is done via the double associated type within the `ViewModel` protocol. 

The `configure:view` function should be where all of the setup of your custom view is done.

### DataModel
This is an empty protocol, but it allows for the enforcability of a proper data model being provided to the view model. Implement `DataModel` on whatever struct/class your view model will be pulling the data to create the view from.

### Examples
There is an attached sample project that you can run which will attach a blue view to the controller. It's a fairly simple project but should be enough to get you going.

### Testability
In order to make a strictly enforced MVVM project testable, you may need to start to introduce generics on the view and a protocol contract for the ViewModel. A very simple implementation of this is done in `TestableViewModel`
