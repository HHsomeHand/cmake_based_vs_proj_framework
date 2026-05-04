### CMake 的编辑器选择问题

notepad++ Clion 对 CMake 语法支持做太差

```cmake
set_target_properties(calc_lib PROPERTIES
        ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${PROJECT_SOURCE_DIR}/build
        ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${PROJECT_SOURCE_DIR}/build
)
```

写 prop key 都没有提示

vs 牛逼, vs 直接就有提示了

vscode 这个情景下也有提示

---

Clion 对 makefile 支持也非常差

我用 Clion 打开 nginx 项目

直接提示找不到构建命令

cpp 提示不在项目中

---

```cmake
add_library(common_hdr INTERFACE include/calc.hpp)
target_include_directories(common_hdr INTERFACE include)
```

vscode 这个情景下, INTERFACE 一点提示都没有

(vscode 安装了三个 CMake 插件就正常了 CMake Tools, CMake, CMake Language Support)

notpad++ 也是

vscode 编写 cpp 代码
```
检测到 #include 错误。请更新 includePath。已为此翻译单元
```

非常智障

---

```cmake
message(STATUS "hello world")
```

前面的消息等级

vscode 这个情景下一点代码提示都没有, 非常智障

vs 在这个情景下也一点提示都没有, 非常智障

(vscode 安装了三个 CMake 插件就正常了 CMake Tools, CMake, CMake Language Support)

---

vs 打开 cmake 项目, 自动生成 out 文件夹, 非常神经

---

sublime 不如 notpad++, 打开 CMakeLists.txt 甚至没有高亮, 插件 package 也很少, 很差

## CMake 生成的工程架构问题

`cmake ..` 生成 vs 工程, 默认只会生成 x64 架构

且生成了 x64 就没办法继续生成 x86了 

```
learn\project02\vsproj>cmake -A Win32 .. 

CMake Error: Error: generator platform: 
Win32 Does not match the platform used previously: Either remove the CMakeCache.txt file and CMakeFiles directory or choose a different binary directory.
```

我们这里用 `vsporj_x64` 和`vsproj_x86`来保存不同架构的 vs 工程

`cmake -A X64 ..` `cmake -A Win32 ..`