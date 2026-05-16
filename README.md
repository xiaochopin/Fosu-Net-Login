## Fosu-Net-Login🐱

一个简单、轻量的佛山大学校园网登录脚本集合。该仓库包含 Windows 和类 Unix 的示例脚本。

### 特色😘

通过Ping检测网络状态判断是否登录，避免重复登录操作。

### 目录结构🧱

- `login.bat` - Windows 批处理启动脚本。
- `login.sh` - Unix shell 启动脚本（可在 Linux / macOS / WSL 中使用）。

### 快速开始👽

1. 打开校园网验证页面，填写你的信息。

2. 使用浏览器开发者工具（F12），清空`网络`内的内容，使用`控制台`，运行  `window.onbeforeunload = function(){ return "不跳转" }` 和 `doauthen();` 。

3. 在`网络`内找到`InterFace.do?method=login`的 POST 请求，根据请求标头 cookie 项中的 `EPORTAL_COOKIE_USERNAME` ， `EPORTAL_COOKIE_PASSWORD` 和 `EPORTAL_COOKIE_SERVER` 的值，分别替换脚本中的 `USER_ID` ， `PASSWORD` 和 `SERVICE` 变量。

4. 尝试运行。

### 贡献👍

- 欢迎提交 Issue 或 Pull Request。请在 PR 中描述你的变更目的与测试步骤。

![](https://xiaochopin.dpdns.org/27BEF85870EE31F8312E33F2B9FF1F30.webp)

### 免责声明🙀

- 本项目仅为个人学习与便捷登录用途提供示例脚本。使用者须对其账号安全与合规性负责。

- 切勿将真实凭据以明文形式提交至仓库或在不可信环境中运行脚本。

- 请在遵守学校/服务提供方使用条款与相关法律法规的前提下使用本项目。作者不对因使用本项目产生的任何直接或间接损失承担责任。

### 许可证😋

- 本仓库采用 MIT 许可证，详见仓库根目录的 `LICENSE` 文件。

感谢使用！
