# NSMainProject

[![CI Status](https://img.shields.io/travis/NShunJian/NSMainProject.svg?style=flat)](https://travis-ci.org/NShunJian/NSMainProject)
[![Version](https://img.shields.io/cocoapods/v/NSMainProject.svg?style=flat)](https://cocoapods.org/pods/NSMainProject)
[![License](https://img.shields.io/cocoapods/l/NSMainProject.svg?style=flat)](https://cocoapods.org/pods/NSMainProject)
[![Platform](https://img.shields.io/cocoapods/p/NSMainProject.svg?style=flat)](https://cocoapods.org/pods/NSMainProject)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

[跑演示时先添加私有库：](https://github.com/NShunjian/PodSpecs.git)

pod repo add PrivatePods https://github.com/NShunjian/PodSpecs.git 

## Requirements

本工程部分介绍

`Category`目录在实际工程中是单独的一个repo，调用者通过依赖category这个repo来完成功能调度。一般来说是每一个业务对应一个category的repo。因此调用者需要调度哪个业务，就依赖哪个业务的category。category这个repo由对应提供服务的业务来维护。

`CTMediator`目录在实际工程中也是一个单独的repo，仅用于存放中间件。被每一个业务线各自维护的category repo所依赖。

`Target_`目录是实际提供服务的业务，这个在实际工程中也是一个单独的repo。这个repo不被任何人所依赖，这个repo通过target-action来提供被调度的功能，然后由category repo通过runtime调度。

---

`CTMediator` helps you to devide your project into multi-project, and use `Target-Action` pattern to let subprojects to communicate with each other.

[iOS应用架构谈 组件化方案](http://casatwy.com/iOS-Modulization.html)

[在现有工程中实施基于CTMediator的组件化方案](http://casatwy.com/modulization_in_action.html)

[CTMediator的Swift应用](https://casatwy.com/CTMediator_in_Swift.html)
