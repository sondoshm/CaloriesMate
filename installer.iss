; CalorieMate Pro - Inno Setup script
[Setup]
AppId={{B7A1D2C4-5E3F-4A6B-9C1D-2F8E7A6B5C40}
AppName=CalorieMate Pro
AppVersion=2.0
AppPublisher=CalorieMate
DefaultDirName={autopf}\CalorieMate
DefaultGroupName=CalorieMate Pro
OutputDir=Output
OutputBaseFilename=CalorieMate_Setup
SetupIconFile=icon.ico
UninstallDisplayIcon={app}\CalorieMate.exe
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
; يثبّت للمستخدم الحالي بدون ما يطلب صلاحيات المدير
PrivilegesRequired=lowest
DisableProgramGroupPage=yes

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Shortcuts:"

[Files]
Source: "dist/CalorieMate\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\CalorieMate Pro"; Filename: "{app}\CalorieMate.exe"
Name: "{autodesktop}\CalorieMate Pro"; Filename: "{app}\CalorieMate.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\CalorieMate.exe"; Description: "Launch CalorieMate Pro"; Flags: nowait postinstall skipifsilent
