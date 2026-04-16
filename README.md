# 🏠 Homebrew Tap

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Homebrew Tap](https://img.shields.io/badge/Homebrew-Tap-blue.svg)](https://github.com/tinypkg/homebrew-tap)

> 🍺 虫子樱桃的 Homebrew Tap 仓库 - 提供常用工具的便捷安装方式

这是一个个人维护的 Homebrew Tap 仓库，包含 GUI 应用 (Casks) 和命令行工具 (Formulas)，支持 **Intel** 和 **Apple Silicon** 架构。

## 📦 快速开始

### 🚀 一键安装（推荐）

无需添加 tap，直接安装：

```bash
## AI 与编程工具
brew install --cask tinypkg/tap/codepilot          # CodePilot - Claude Code 桌面客户端
brew install --cask tinypkg/tap/claudebot           # ClaudeBot - Use claude code anywhere
brew install --cask tinypkg/tap/confirmo            # Confirmo - AI 编程助手（桌面版）
brew install --cask tinypkg/tap/cc-switch           # CC Switch - Claude Code 配置管理工具
brew install --cask tinypkg/tap/antigravity-tools   # Antigravity Tools - AI 服务账号管理工具
brew install --cask tinypkg/tap/noi                 # Noi - AI 工具集合

## 输入法
brew install --cask tinypkg/tap/fcitx5-pinyin       # Fcitx5 输入法 - 拼音版
brew install --cask tinypkg/tap/fcitx5-rime         # Fcitx5 输入法 - 中州韵版
brew install --cask tinypkg/tap/fcitx5              # Fcitx5 输入法 - 原装版

## 其他工具
brew install --cask tinypkg/tap/go-pkg              # Go - Go 编程语言（官方 pkg 安装器）
brew install --cask tinypkg/tap/blink1control2      # Blink1Control2 - USB RGB LED 控制工具
brew install --cask tinypkg/tap/lzc-client-desktop  # 懒猫微服桌面客户端
brew install --cask tinypkg/tap/macoptimizer        # MacOptimizer - macOS 系统清理优化工具
brew install --cask tinypkg/tap/recordly            # Recordly - 免费屏幕录制工具
brew install --cask tinypkg/tap/capso               # Capso - 开源截图和屏幕录制工具
brew install --cask tinypkg/tap/winmux              # WinMux - macOS 窗口管理器
brew install --cask tinypkg/tap/shichizip           # ShichiZip - 7-Zip derivative for macOS
brew install --cask tinypkg/tap/shichizip-zs        # ShichiZip ZS - 7-Zip with Zstandard compression

## 命令行工具
brew install tinypkg/tap/rime-wanxiang-updater      # 万象拼音输入法更新工具
brew install tinypkg/tap/snout                       # Rime 输入法初始化与更新工具
brew install tinypkg/tap/mise-bin                   # Mise - 多语言版本管理工具
brew install tinypkg/tap/cc-switch-cli              # CC Switch CLI - Claude Code/Codex/Gemini CLI 助手工具
```

### 📋 传统方式

#### 1️⃣ 添加 Tap

```bash
brew tap tinypkg/tap
```

#### 2️⃣ 安装软件

**GUI 应用 (Casks)**

```bash
# AI 与编程工具
brew install --cask codepilot          # Claude Code 桌面客户端
brew install --cask claudebot          # Use claude code anywhere
brew install --cask confirmo           # AI 编程助手（桌面版）
brew install --cask cc-switch          # Claude Code 配置管理工具
brew install --cask antigravity-tools  # AI 服务账号管理工具
brew install --cask noi                # AI 工具集合

# 输入法
brew install --cask fcitx5-pinyin      # Fcitx5 输入法 - 拼音版
brew install --cask fcitx5-rime        # Fcitx5 输入法 - 中州韵版
brew install --cask fcitx5             # Fcitx5 输入法 - 原装版

# 其他工具
brew install --cask go-pkg             # Go 编程语言（官方 pkg 安装器）
brew install --cask blink1control2     # USB RGB LED 控制工具
brew install --cask lzc-client-desktop # 懒猫微服桌面客户端
brew install --cask macoptimizer       # macOS 系统清理优化工具
brew install --cask recordly           # 免费屏幕录制工具
brew install --cask capso              # 开源截图和屏幕录制工具
brew install --cask winmux             # macOS 窗口管理器
  brew install --cask shichizip          # 7-Zip derivative for macOS
  brew install --cask shichizip-zs       # 7-Zip with Zstandard compression
```


**命令行工具 (Formulas)**

```bash
brew install rime-wanxiang-updater

# Rime 输入法初始化与更新工具 (万象/雾凇/白霜/薄荷)
brew install snout

# Mise - 多语言版本管理工具
brew install mise-bin

# CC Switch CLI - Claude Code/Codex/Gemini CLI 助手工具
brew install cc-switch-cli
```

### 3️⃣ 卸载软件

```bash
# 卸载 GUI 应用
brew uninstall --cask lzc-client-desktop

# 卸载命令行工具
brew uninstall rime-wanxiang-updater
```

## 📋 可用软件

### 🤖 AI 与编程工具

| 软件名称 | 说明 | 一键安装命令 | 版本 | 架构支持 |
|---------|------|-------------|------|----------|
| [codepilot](Casks/codepilot.rb) | Claude Code 桌面客户端 | `brew install --cask tinypkg/tap/codepilot` | `0.7.0` | 🍎 Intel & ARM |
| [claudebot](Casks/claudebot.rb) | Use claude code anywhere | `brew install --cask tinypkg/tap/claudebot` | `1.1.2` | 🍎 Intel & ARM |
| [confirmo](Casks/confirmo.rb) | AI 编程助手（桌面版） | `brew install --cask tinypkg/tap/confirmo` | `1.0.14` | 🍎 Intel & ARM |
| [cc-switch](Casks/cc-switch.rb) | Claude Code/Codex 配置管理器 | `brew install --cask tinypkg/tap/cc-switch` | `3.9.1` | 🍎 Intel & ARM |
| [antigravity-tools](Casks/antigravity-tools.rb) | AI 服务账号管理工具 | `brew install --cask tinypkg/tap/antigravity-tools` | `3.3.49` | 🍎 Intel & ARM 🐧 Intel & ARM |
| [noi](Casks/noi.rb) | AI 工具集合 | `brew install --cask tinypkg/tap/noi` | `1.1.0` | 🍎 Intel & ARM |

### 🔤 输入法

| 软件名称 | 说明 | 一键安装命令 | 版本 | 架构支持 |
|---------|------|-------------|------|----------|
| [fcitx5-pinyin](Casks/fcitx5-pinyin.rb) | Fcitx5 输入法框架 - 拼音版 | `brew install --cask tinypkg/tap/fcitx5-pinyin` | `0.2.11` | 🍎 Intel & ARM |
| [fcitx5-rime](Casks/fcitx5-rime.rb) | Fcitx5 输入法框架 - 中州韵版 | `brew install --cask tinypkg/tap/fcitx5-rime` | `0.2.11` | 🍎 Intel & ARM |
| [fcitx5](Casks/fcitx5.rb) | Fcitx5 输入法框架 - 原装版 | `brew install --cask tinypkg/tap/fcitx5` | `0.2.11` | 🍎 Intel & ARM |

### 🛠️ 其他工具

| 软件名称 | 说明 | 一键安装命令 | 版本 | 架构支持 |
|---------|------|-------------|------|----------|
| [go-pkg](Casks/go-pkg.rb) | Go 编程语言（官方 pkg 安装器） | `brew install --cask tinypkg/tap/go-pkg` | `1.24.3` | 🍎 Intel & ARM |
| [blink1control2](Casks/blink1control2.rb) | USB RGB LED 控制工具 | `brew install --cask tinypkg/tap/blink1control2` | `2.2.9` | 🍎 Intel & ARM |
| [lzc-client-desktop](Casks/lzc-client-desktop.rb) | 懒猫微服桌面客户端 | `brew install --cask tinypkg/tap/lzc-client-desktop` | `1.6.7` | 🍎 Intel & ARM |
| [macoptimizer](Casks/macoptimizer.rb) | macOS 系统清理优化工具 | `brew install --cask tinypkg/tap/macoptimizer` | `4.0.6` | 🍎 Intel & ARM |
| [recordly](Casks/recordly.rb) | 免费屏幕录制工具 | `brew install --cask tinypkg/tap/recordly` | `1.1.19` | 🍎 Intel & ARM |
| [capso](Casks/capso.rb) | 开源截图和屏幕录制工具 | `brew install --cask tinypkg/tap/capso` | `0.1.9` | 🍎 macOS Sequoia+ |
| [winmux](Casks/winmux.rb) | macOS 窗口管理器（基于 Aerospace） | `brew install --cask tinypkg/tap/winmux` | `0.1.2` | 🍎 Intel & ARM |
| [shichizip](Casks/shichizip.rb) | 7-Zip derivative for macOS | `brew install --cask tinypkg/tap/shichizip` | `0.0.3` | 🍎 Intel & ARM |
| [shichizip-zs](Casks/shichizip-zs.rb) | 7-Zip with Zstandard compression | `brew install --cask tinypkg/tap/shichizip-zs` | `0.0.3` | 🍎 Intel & ARM |

### ⚙️ 命令行工具 (Formulas)

| 软件名称 | 说明 | 一键安装命令 | 版本 | 架构支持 |
|---------|------|-------------|------|----------|
| [rime-wanxiang-updater](Formula/rime-wanxiang-updater.rb) | 万象拼音输入法词库更新工具 | `brew install tinypkg/tap/rime-wanxiang-updater` | `0.6.10` | 🍎 Intel & ARM |
| [snout](Formula/snout.rb) | Rime 输入法初始化与更新工具 (万象/雾凇/白霜/薄荷) | `brew install tinypkg/tap/snout` | `0.1.1` | 🍎 Intel & ARM |
| [mise-bin](Formula/mise-bin.rb) | 多语言版本管理工具 (polyglot version manager) | `brew install tinypkg/tap/mise-bin` | `2024.1.0` | 🍎 Intel & ARM |
| [cc-switch-cli](Formula/cc-switch-cli.rb) | Claude Code/Codex/Gemini CLI 助手工具 | `brew install tinypkg/tap/cc-switch-cli` | `5.2.0` | 🍎 Intel & ARM |

## ✨ 特性

- 🍎 **双架构支持** - 自动适配 Intel (x64) 和 Apple Silicon (arm64)
- 🔒 **安全验证** - 所有软件包都经过 SHA256 校验和验证
- ⚡ **自动更新** - 集成 GitHub Actions 自动检测和更新版本
- 📦 **标准规范** - 遵循 Homebrew Cask 和 Formula 最佳实践
- 🌐 **中文友好** - 针对中文用户优化的软件选择

## 🔄 自动更新

本仓库集成了 GitHub Actions 自动更新工作流：

### CC Switch 自动更新
- **触发方式**: 每12小时定时检查 + 手动触发
- **工作流**: `.github/workflows/update-cc-switch-version.yml`
- **使用方法**: 在 GitHub Actions 页面手动触发，输入版本号

### Fcitx5 自动更新
- **触发方式**: 每周五12:00定时检查 + 手动触发
- **工作流**: `.github/workflows/update-fcitx5-versions.yml`
- **更新范围**: 同时更新所有三个版本（拼音版、中州韵版、原装版）
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-fcitx5-versions.yml -f version=0.2.11

  # 自动检测最新版本
  gh workflow run update-fcitx5-versions.yml
  ```

### Rime Wanxiang Updater 自动更新
- **触发方式**: 每12小时定时检查 + 手动触发（可自动检测最新版本）
- **工作流**: `.github/workflows/update-rime-wanxiang-updater-version.yml`
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-rime-wanxiang-updater-version.yml -f version=0.6.0

  # 自动检测最新版本
  gh workflow run update-rime-wanxiang-updater-version.yml
  ```

### Noi 自动更新
- **触发方式**: 手动触发
- **工作流**: `.github/workflows/update-noi-version.yml`
- **使用方法**:
  ```bash
  gh workflow run update-noi-version.yml -f version=1.1.0
  ```

### Blink1Control2 自动更新
- **触发方式**: 手动触发
- **工作流**: `.github/workflows/update-blink1control2-version.yml`
- **使用方法**:
  ```bash
  gh workflow run update-blink1control2-version.yml -f version=2.2.9
  ```

### Antigravity Tools 自动更新
- **触发方式**: 每12小时定时检查 + 手动触发（可自动检测最新版本）
- **工作流**: `.github/workflows/update-antigravity-tools-version.yml`
- **功能**: 自动下载 macOS 版本，计算 SHA256 校验和，更新版本和校验值
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-antigravity-tools-version.yml -f version=3.3.49

  # 自动检测最新版本
  gh workflow run update-antigravity-tools-version.yml
  ```

### Confirmo 自动更新
- **触发方式**: 手动触发
- **工作流**: `.github/workflows/update-confirmo-version.yml`
- **功能**: 自动下载 macOS 版本，计算 SHA256 校验和，更新版本和校验值
- **使用方法**:
  ```bash
  gh workflow run update-confirmo-version.yml -f version=1.0.14
  ```

### CodePilot 自动更新
- **触发方式**: 每12小时定时检查 + 手动触发（可自动检测最新版本）
- **工作流**: `.github/workflows/update-codepilot-version.yml`
- **功能**: 自动从 GitHub Releases 检测最新版本，下载 macOS arm64/x64 版本，计算 SHA256 校验和
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-codepilot-version.yml -f version=0.7.0

  # 自动检测最新版本
  gh workflow run update-codepilot-version.yml
  ```

### ClaudeBot 自动更新
- **触发方式**: 每12小时定时检查 + 手动触发（可自动检测最新版本）
- **工作流**: `.github/workflows/update-claudebot-version.yml`
- **功能**: 自动从 GitHub Releases 检测最新版本，下载 macOS arm64/x64 版本，计算 SHA256 校验和
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-claudebot-version.yml -f version=1.1.3

  # 自动检测最新版本
  gh workflow run update-claudebot-version.yml
  ```

### Go PKG 自动更新
- **触发方式**: 每周二 10:00 UTC 定时检查 + 手动触发（可自动检测最新版本）
- **工作流**: `.github/workflows/update-go-pkg-version.yml`
- **功能**: 自动从 go.dev 检测最新稳定版本，下载 macOS pkg 安装包，计算 SHA256 校验和
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-go-pkg-version.yml -f version=1.24.3

  # 自动检测最新版本
  gh workflow run update-go-pkg-version.yml
  ```

### Mise Bin 自动更新
- **触发方式**: 每12小时定时检查 + 手动触发（可自动检测最新版本）
- **工作流**: `.github/workflows/update-mise-bin-version.yml`
- **功能**: 自动从 GitHub Releases 检测最新版本，下载 macOS 二进制文件，计算 SHA256 校验和
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-mise-bin-version.yml -f version=2026.1.12

  # 自动检测最新版本
  gh workflow run update-mise-bin-version.yml
  ```

### CC Switch CLI 自动更新
- **触发方式**: 每12小时定时检查 + 手动触发（可自动检测最新版本）
- **工作流**: `.github/workflows/update-cc-switch-cli-version.yml`
- **功能**: 自动从 GitHub Releases 检测最新版本，下载 macOS arm64/x64 tar.gz 包，计算 SHA256 校验和
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-cc-switch-cli-version.yml -f version=5.2.0

  # 自动检测最新版本
  gh workflow run update-cc-switch-cli-version.yml
  ```

### MacOptimizer 自动更新
- **触发方式**: 每周一 10:00 UTC 定时检查 + 手动触发（可自动检测最新版本）
- **工作流**: `.github/workflows/update-macoptimizer-version.yml`
- **功能**: 自动从 GitHub Releases 检测最新版本，下载 macOS Apple Silicon/Intel DMG，计算 SHA256 校验和
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-macoptimizer-version.yml -f version=3.0.1

  # 自动检测最新版本
  gh workflow run update-macoptimizer-version.yml
  ```

### Recordly 自动更新
- **触发方式**: 每12小时定时检查 + 手动触发（可自动检测最新版本）
- **工作流**: `.github/workflows/update-recordly-version.yml`
- **功能**: 自动从 GitHub Releases 检测最新版本，下载 macOS arm64/x64 DMG，计算 SHA256 校验和
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-recordly-version.yml -f version=1.1.20

  # 自动检测最新版本
  gh workflow run update-recordly-version.yml
  ```

### Capso 自动更新
- **触发方式**: 每12小时定时检查 + 手动触发（可自动检测最新版本）
- **工作流**: `.github/workflows/update-capso-version.yml`
- **功能**: 自动从 GitHub Releases 检测最新版本，下载 macOS DMG，计算 SHA256 校验和
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-capso-version.yml -f version=0.1.9

  # 自动检测最新版本
  gh workflow run update-capso-version.yml
  ```

### WinMux 自动更新
- **触发方式**: 每12小时定时检查 + 手动触发（可自动检测最新版本）
- **工作流**: `.github/workflows/update-winmux-version.yml`
- **功能**: 自动从 GitHub Releases 检测最新版本，下载 macOS ZIP，计算 SHA256 校验和
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-winmux-version.yml -f version=0.1.2

  # 自动检测最新版本
  gh workflow run update-winmux-version.yml
  ```

### ShichiZip 自动更新
- **触发方式**: 每12小时定时检查 + 手动触发（可自动检测最新版本）
- **工作流**: `.github/workflows/update-shichizip-version.yml`
- **功能**: 自动从 GitHub Releases 检测最新版本，下载 macOS arm64/x64 ZIP，计算 SHA256 校验和，同时更新 ShichiZip 和 ShichiZipZS
- **使用方法**:
  ```bash
  # 手动指定版本
  gh workflow run update-shichizip-version.yml -f version=0.0.3

  # 自动检测最新版本
  gh workflow run update-shichizip-version.yml
  ```

## 🛠️ 开发指南

### 添加新软件

#### 添加 Cask (GUI 应用)

1. 在 `Casks/` 目录创建新文件：`<应用名>.rb`
2. 使用以下模板：

```ruby
cask "your-app-name" do
  version "1.0.0"

  on_intel do
    sha256 "..."  # Intel 版本的 SHA256
    url "https://example.com/download/app_v#{version}_x64.dmg"
  end

  on_arm do
    sha256 "..."  # Apple Silicon 版本的 SHA256
    url "https://example.com/download/app_v#{version}_arm64.dmg"
  end

  name "Your App Name"
  desc "简短的应用描述"
  homepage "https://example.com/"

  app "YourApp.app"

  zap trash: [
    "~/Library/Application Support/YourApp",
    "~/Library/Preferences/com.example.app.plist",
  ]
end
```

3. 本地测试：
   ```bash
   brew install --cask ./Casks/your-app-name.rb
   brew audit --cask your-app-name
   brew uninstall --cask your-app-name
   ```

#### 添加 Formula (命令行工具)

1. 在 `Formula/` 目录创建新文件：`<工具名>.rb`
2. 使用以下模板：

```ruby
class YourToolName < Formula
  desc "工具描述"
  homepage "https://github.com/owner/repo"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owner/repo/releases/download/v#{version}/tool-darwin-arm64"
      sha256 "..."
      def install
        bin.install "tool-darwin-arm64" => "your-tool-name"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/owner/repo/releases/download/v#{version}/tool-darwin-amd64"
      sha256 "..."
      def install
        bin.install "tool-darwin-amd64" => "your-tool-name"
      end
    end
  end

  def caveats
    <<~EOS
      Your tool has been installed!
      Run 'your-tool-name --help' to get started.
    EOS
  end

  test do
    system "#{bin}/your-tool-name", "--version"
  end
end
```

3. 本地测试：
   ```bash
   brew install --formula ./Formula/your-tool-name.rb
   brew audit --formula your-tool-name
   brew uninstall your-tool-name
   ```

### 更新现有软件版本

#### 手动更新 Cask

```bash
# 1. 下载新版本安装包
curl -L -o /tmp/app_x64.dmg "https://example.com/app_v2.0.0_x64.dmg"
curl -L -o /tmp/app_arm64.dmg "https://example.com/app_v2.0.0_arm64.dmg"

# 2. 计算 SHA256
shasum -a 256 /tmp/app_x64.dmg
shasum -a 256 /tmp/app_arm64.dmg

# 3. 更新 Cask 文件
# - 修改 version 字段
# - 更新 sha256 值

# 4. 测试
brew install --cask ./Casks/app.rb
brew uninstall --cask app
```

#### 手动更新 Formula

```bash
# 1. 下载新版本二进制
curl -L -o /tmp/tool-amd64 "https://github.com/owner/repo/releases/download/v2.0.0/tool-darwin-amd64"
curl -L -o /tmp/tool-arm64 "https://github.com/owner/repo/releases/download/v2.0.0/tool-darwin-arm64"

# 2. 计算 SHA256
shasum -a 256 /tmp/tool-amd64
shasum -a 256 /tmp/tool-arm64

# 3. 更新 Formula 文件
# - 修改 version 字段
# - 更新 URL 中的版本号
# - 更新 sha256 值

# 4. 测试
brew install --formula ./Formula/tool.rb
brew uninstall tool
```

### 本地测试命令汇总

```bash
# 安装测试
brew install --cask ./Casks/<name>.rb
brew install --formula ./Formula/<name>.rb

# 语法检查
brew audit --cask <name>
brew audit --formula <name>

# 样式检查
brew style --cask <name>
brew style --formula <name>

# 卸载测试
brew uninstall --cask <name>
brew uninstall <name>

# 查看信息
brew info --cask <name>
brew info <name>
```

## 🤝 贡献指南

欢迎贡献！请遵循以下步骤：

1. **Fork 仓库** - 点击右上角的 Fork 按钮
2. **创建分支** - `git checkout -b feature/your-feature`
3. **提交更改** - `git commit -m "feat: add your feature"`
4. **推送分支** - `git push origin feature/your-feature`
5. **创建 PR** - 在 GitHub 上创建 Pull Request

### 贡献要求

- ✅ 代码经过本地测试
- ✅ 通过 `brew audit` 检查
- ✅ 更新相关文档
- ✅ 提供清晰的 PR 描述

## 🔧 故障排除

### 常见问题

**Q: 安装时提示 SHA256 不匹配**
```bash
# 清除缓存后重试
brew cleanup
brew install --cask <cask-name>
```

**Q: 找不到软件包**
```bash
# 确保已添加 tap
brew tap tinypkg/tap
brew search tinypkg/
```

**Q: 需要更新 Homebrew**
```bash
brew update
brew upgrade
```

## 📄 许可证

本仓库中的配置文件遵循各软件自身的许可证。

- **Cask 配置文件**: MIT License
- **Formula 配置文件**: MIT License

## 🙏 致谢

- [Homebrew](https://brew.sh/) - macOS 包管理器
- [Homebrew Cask](https://github.com/Homebrew/homebrew-cask) - GUI 应用管理
- 所有软件的原作者

---

<div align="center">

**[⬆ 回到顶部](#homebrew-tap)**

Made with ❤️ by 虫子樱桃

</div>
