# swiftUILearn
swiftUI学习

* 项目目录结构
    * Assets.xcassets 资源文件夹
    * Preview Content 预览内容文件夹
* 属性包装起（Property Wrappers），用于管理和维护视图中的状态
* 几种属性包装器（Property Wrappers）
    ```
    @State // 用于声明视图中某个局部状态的属性。该属性在视图的生命周期内保持不变，但可以在视图内部进行修改，从而触发视图的更新。
    
    @Environment // 从环境中获取数据， ContentView().environment(modelData)呈现 ContentView时，将modelData放入环境
    
    @Bindable // 不是 SwiftUI 中的原生属性包装器 模型数据与视图之间进行双向数据绑定 简化和自动化数据变化通知
    
    @Binding //用于在父视图和子视图之间创建双向数据绑定。父视图将状态传递给子视图，子视图可以修改该状态。
    ```
   