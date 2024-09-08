## This is a template project

### How to flash and debug via vscode cortex-debug extension

**相关文件都在 ./openocd/ 下面**
- 首先要有openocd工具，可以从官网下载安装。还要有cortex debug插件。
- 主要有三个target可以使用：`cmake ..` `make`后可以使用
1. `make download` flash to stm32
2. `make reset` reset stm32
3. `make erase` erase stm32 
- 自动生成了 launsh.json 文件，可以直接在vscode的调试中使用。