打开注册表编辑器：

按 Win + R 打开运行窗口，输入 regedit 并按下 Enter 键。
导航到键盘映射键：

在注册表编辑器中，导航到以下路径：
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout
创建或修改 Scancode Map 值：

在 Keyboard Layout 键下，如果没有 Scancode Map 值，需要创建一个。
右键点击右侧窗口，选择 New（新建） > Binary Value（二进制值），命名为 Scancode Map。
设置 Scancode Map 的值：

双击 Scancode Map 值，并输入以下数据：
00 00 00 00 00 00 00 00
02 00 00 00
1D 00 3A 00
00 00 00 00

其中每一行的含义如下：
第一行：头部数据，总是 00 00 00 00 00 00 00 00
第二行：条目数+1，这里是2个条目，所以是 02 00 00 00
第三行：具体的键映射，这里是将 Caps Lock (3A 00) 映射为左 Ctrl (1D 00)
第四行：结束标志，总是 00 00 00 00

重启电脑：

完成上述操作后，关闭注册表编辑器并重启电脑，修改将会生效。
完成上述步骤后，Caps Lock 键将会变成 Ctrl 键的功能。如果要恢复原状，只需删除 Scancode Map 值，并重启电脑即可。
