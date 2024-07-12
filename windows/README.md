要将 Caps Lock 键映射为 Ctrl 键，可以通过修改注册表来实现。以下是具体步骤：<br> 
<br> 
打开注册表编辑器：<br> 
<br> 
按 Win + R 打开运行窗口，输入 regedit 并按下 Enter 键。<br> 
导航到键盘映射键：<br> 
<br> 
在注册表编辑器中，导航到以下路径：<br> 
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout<br> 
创建或修改 Scancode Map 值：<br> 
<br> 
在 Keyboard Layout 键下，如果没有 Scancode Map 值，需要创建一个。<br> 
右键点击右侧窗口，选择 New（新建） > Binary Value（二进制值），命名为 Scancode Map。<br> 
设置 Scancode Map 的值：<br> 
<br> 
双击 Scancode Map 值，并输入以下数据：<br> 
00 00 00 00 00 00 00 00<br> 
02 00 00 00<br> 
1D 00 3A 00<br> 
00 00 00 00<br> 
<br> 
其中每一行的含义如下：<br> 
第一行：头部数据，总是 00 00 00 00 00 00 00 00<br> 
第二行：条目数+1，这里是2个条目，所以是 02 00 00 00<br> 
第三行：具体的键映射，这里是将 Caps Lock (3A 00) 映射为左 Ctrl (1D 00)<br> 
第四行：结束标志，总是 00 00 00 00<br> 
<br> 
重启电脑：<br> 
<br> 
完成上述操作后，关闭注册表编辑器并重启电脑，修改将会生效。<br> 
完成上述步骤后，Caps Lock 键将会变成 Ctrl 键的功能。如果要恢复原状，只需删除 Scancode Map 值，并重启电脑即可。<br> 
