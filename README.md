## C板模板工程

## 重要：clone时加`--recursive`参数！

`git clone https://github.com/XDU-IRobot/stm32f4_template.git`

clone下来之后可以使用CLion和VSCode等等支持CMake的IDE进行开发。如果需要更改IO口配置，可以用CubeMX重新生成代码。

一共有四个有用的CMake target：

- `stm32f4_template`：主程序

- `download`：调用openocd把程序烧写到开发板

- `erase`：擦除开发板的flash

- `reset`：重启开发板

使用时把代码都写在`src/`文件夹里，其他文件尽量不要动。

先编译`stm32f4_template`，然后使用`download`烧录！

### 关于这个模板是怎么做出来的

首先用CubeMX生成了一个CMake工程，然后添加了openocd文件夹，里面放了openocd相关的配置文件、芯片的svd文件和cmake脚本；然后，向工程里添加了libs文件夹，里面添加了librm；最后修改了一下最顶层的CMakeLists.txt，把上面做的改动都加进去。

为了能在vscode里舒服的开发，添加了.vscode文件夹，里面的三个文件`c_cpp_properties.json`、`launch.json`和`tasks.json`分别是配置代码提示、调试和编译按钮的。（虽然可以用vscode的cortex-debug调试，但是更推荐用Ozone）

为了用github actions进行编译测试，添加了.github文件夹，里面的`workflows`文件夹里放了CI编译测试的配置文件。每次向远程仓库push，github都会测试一下代码能不能编译通过，然后显示在commit后面的小图标里，像这样：（如果这里打叉了，说明代码编译不通过，点开这个叉可以看到报错）

![CI](https://github.com/user-attachments/assets/83fd0ce4-0160-4f73-993e-5ebe8b4854a1)
