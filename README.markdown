## This is a template project

`git clone https://github.com/IRobot-EC-2024/stm32f4_template.git`

**相关文件都在 ./openocd/ 下面**

- 首先要有 openocd 工具，可以从官网下载安装。还要有 cortex debug 插件。
- 主要有三个 target 可以使用：`cmake ..` `make`后可以使用

1. `make download` flash to stm32
2. `make reset` reset stm32
3. `make erase` erase stm32

- 自动生成了 launsh.json 文件，可以直接在 vscode 的调试中使用。
