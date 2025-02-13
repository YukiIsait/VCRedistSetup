#define AppId "{7E2EDE57-7806-4829-AC20-3A571AD4E623}"
#define AppName "Microsoft Visual C++ Redistributable"
#define AppExeName "VCRedistSetup"
#define AppVersion "14.42.34433.0"
#define AppPublisher "Microsoft Corporation"
#define AppCopyright "Copyright (c) Microsoft Corporation. All rights reserved."

[Setup]
AppId={{#AppId}
AppName={#AppName}
AppVersion={#AppVersion}
AppVerName={#AppName}
AppPublisher={#AppPublisher}
AppCopyright={#AppCopyright}
VersionInfoVersion={#AppVersion}
OutputBaseFilename={#AppExeName}
CreateAppDir=no
ArchitecturesInstallIn64BitMode=x64compatible
PrivilegesRequired=admin
Compression=lzma2/max
SolidCompression=yes
WizardStyle=classic
AlwaysRestart=yes
Uninstallable=no
SetupIconFile=Icon.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Types]
Name: "Full"; Description: "Full"
Name: "Custom"; Description: "Custom"; Flags: iscustom
Name: "AMD64"; Description: "AMD64"; Check: Is64BitInstallMode
Name: "I386"; Description: "I386"

[Components]
Name: "x64_140"; Description: "Microsoft Visual C++ 2015-2022 Redistributable (x64)"; Types: Full AMD64; Check: Is64BitInstallMode
Name: "x86_140"; Description: "Microsoft Visual C++ 2015-2022 Redistributable (x86)"; Types: Full I386
Name: "x64_120"; Description: "Microsoft Visual C++ 2013 Redistributable (x64)"; Types: Full AMD64; Check: Is64BitInstallMode
Name: "x86_120"; Description: "Microsoft Visual C++ 2013 Redistributable (x86)"; Types: Full I386
Name: "x64_110"; Description: "Microsoft Visual C++ 2012 Redistributable (x64)"; Types: Full AMD64; Check: Is64BitInstallMode
Name: "x86_110"; Description: "Microsoft Visual C++ 2012 Redistributable (x86)"; Types: Full I386
Name: "x64_100"; Description: "Microsoft Visual C++ 2010 Redistributable (x64)"; Types: Full AMD64; Check: Is64BitInstallMode
Name: "x86_100"; Description: "Microsoft Visual C++ 2010 Redistributable (x86)"; Types: Full I386
Name: "x64_90"; Description: "Microsoft Visual C++ 2008 Redistributable (x64)"; Types: Full AMD64; Check: Is64BitInstallMode
Name: "x86_90"; Description: "Microsoft Visual C++ 2008 Redistributable (x86)"; Types: Full I386
Name: "x64_80"; Description: "Microsoft Visual C++ 2005 Redistributable (x64)"; Types: Full AMD64; Check: Is64BitInstallMode
Name: "x86_80"; Description: "Microsoft Visual C++ 2005 Redistributable (x86)"; Types: Full I386

[Files]
Source: "VCRedist\vcredist_80_2005_x64.exe"; DestDir: "{tmp}"; Flags: ignoreversion; Components: x64_80
Source: "VCRedist\vcredist_90_2008_x64.exe"; DestDir: "{tmp}"; Flags: ignoreversion; Components: x64_90
Source: "VCRedist\vcredist_100_2010_x64.exe"; DestDir: "{tmp}"; Flags: ignoreversion; Components: x64_100
Source: "VCRedist\vcredist_110_2012_x64.exe"; DestDir: "{tmp}"; Flags: ignoreversion; Components: x64_110
Source: "VCRedist\vcredist_120_2013_x64.exe"; DestDir: "{tmp}"; Flags: ignoreversion; Components: x64_120
Source: "VCRedist\vcredist_140_2015-2022_x64.exe"; DestDir: "{tmp}"; Flags: ignoreversion; Components: x64_140

Source: "VCRedist\vcredist_80_2005_x86.exe"; DestDir: "{tmp}"; Flags: ignoreversion; Components: x86_80
Source: "VCRedist\vcredist_90_2008_x86.exe"; DestDir: "{tmp}"; Flags: ignoreversion; Components: x86_90
Source: "VCRedist\vcredist_100_2010_x86.exe"; DestDir: "{tmp}"; Flags: ignoreversion; Components: x86_100
Source: "VCRedist\vcredist_110_2012_x86.exe"; DestDir: "{tmp}"; Flags: ignoreversion; Components: x86_110
Source: "VCRedist\vcredist_120_2013_x86.exe"; DestDir: "{tmp}"; Flags: ignoreversion; Components: x86_120
Source: "VCRedist\vcredist_140_2015-2022_x86.exe"; DestDir: "{tmp}"; Flags: ignoreversion; Components: x86_140

[Run]
Filename: "{tmp}\vcredist_80_2005_x64.exe"; Parameters: "/q"; Flags: runhidden; Components: x64_80; BeforeInstall: SetMarqueeProgress(True); AfterInstall: SetMarqueeProgress(False)
Filename: "{tmp}\vcredist_90_2008_x64.exe"; Parameters: "/qb"; Flags: runhidden; Components: x64_90; BeforeInstall: SetMarqueeProgress(True); AfterInstall: SetMarqueeProgress(False)
Filename: "{tmp}\vcredist_100_2010_x64.exe"; Parameters: "/passive /norestart"; Flags: runhidden; Components: x64_100; BeforeInstall: SetMarqueeProgress(True); AfterInstall: SetMarqueeProgress(False)
Filename: "{tmp}\vcredist_110_2012_x64.exe"; Parameters: "/passive /norestart"; Flags: runhidden; Components: x64_110; BeforeInstall: SetMarqueeProgress(True); AfterInstall: SetMarqueeProgress(False)
Filename: "{tmp}\vcredist_120_2013_x64.exe"; Parameters: "/passive /norestart"; Flags: runhidden; Components: x64_120; BeforeInstall: SetMarqueeProgress(True); AfterInstall: SetMarqueeProgress(False)
Filename: "{tmp}\vcredist_140_2015-2022_x64.exe"; Parameters: "/passive /norestart"; Flags: runhidden; Components: x64_140; BeforeInstall: SetMarqueeProgress(True); AfterInstall: SetMarqueeProgress(False)

Filename: "{tmp}\vcredist_80_2005_x86.exe"; Parameters: "/q"; Flags: runhidden; Components: x86_80; BeforeInstall: SetMarqueeProgress(True); AfterInstall: SetMarqueeProgress(False)
Filename: "{tmp}\vcredist_90_2008_x86.exe"; Parameters: "/qb"; Flags: runhidden; Components: x86_90; BeforeInstall: SetMarqueeProgress(True); AfterInstall: SetMarqueeProgress(False)
Filename: "{tmp}\vcredist_100_2010_x86.exe"; Parameters: "/passive /norestart"; Flags: runhidden; Components: x86_100; BeforeInstall: SetMarqueeProgress(True); AfterInstall: SetMarqueeProgress(False)
Filename: "{tmp}\vcredist_110_2012_x86.exe"; Parameters: "/passive /norestart"; Flags: runhidden; Components: x86_110; BeforeInstall: SetMarqueeProgress(True); AfterInstall: SetMarqueeProgress(False)
Filename: "{tmp}\vcredist_120_2013_x86.exe"; Parameters: "/passive /norestart"; Flags: runhidden; Components: x86_120; BeforeInstall: SetMarqueeProgress(True); AfterInstall: SetMarqueeProgress(False)
Filename: "{tmp}\vcredist_140_2015-2022_x86.exe"; Parameters: "/passive /norestart"; Flags: runhidden; Components: x86_140; BeforeInstall: SetMarqueeProgress(True); AfterInstall: SetMarqueeProgress(False)

[Code]
procedure SetMarqueeProgress(Marquee: Boolean);
begin
    if Marquee then
        WizardForm.ProgressGauge.Style := npbstMarquee
    else
        WizardForm.ProgressGauge.Style := npbstNormal
end;
