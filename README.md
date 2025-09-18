### 准备Installer的环境
1. 安装Visual Studio 2022
2. 安装Microsoft Visual Studio Installer Projects 2022, 下载地址: https://marketplace.visualstudio.com/items?itemName=VisualStudioClient.MicrosoftVisualStudio2022InstallerProjects

### 更新包
1. 修改Version
2. 修改ProductCode

### 参考资料
##Visual Studio Setup Project conditional if File Exists
https://stackoverflow.com/questions/4102503/visual-studio-setup-project-conditional-if-file-exists
To only install a file, if it doesn't already exist, follow these steps:
1. Add a "Search Target Machine" entry under the "Launch Conditions" view in your setup project.
2. fill in the FileName property and the Folder property.
3. the Property property should be a constant you can remember, like "B_FILE_EXISTS"
4. in the "File System" view of your project, locate the component to install and add this to the Condition property "not B_FILE_EXISTS"

##Enable Windows Installer logging
https://learn.microsoft.com/en-us/troubleshoot/windows-client/application-management/enable-windows-installer-logging