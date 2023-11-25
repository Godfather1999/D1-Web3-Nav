---
title: "MockingBird - AI文字转语音神器！最新安装及使用教程！"
date: 2023-05-25T14:31:55+08:00
draft: false
keywords:
    - MockingBird
    - AI
    - 文字转语音
---
## 一. 安装

1. 安装Python 选择3.8 或更高版本 <a href="https://www.python.org/" target="_blank" rel="nofollow"><font color=orange>【Python官网】</font></a>
2. 安装 PyTorch，官网下载即可 <a href="https://pytorch.org/get-started/locally/" target="_blank" rel="nofollow"><font color=orange>【PyTorch官网】</font></a>，如果GPU不支持CUDA，就默认选择，没有显卡或显卡比较差可以选择CPU。
3. 安装 ffmpeg  <a href="https://ffmpeg.org/download.html#build-windows" target="_blank" rel="nofollow"><font color=orange>【官网下载】</font></a>，直接选择把bin目录添加到系统变量path里。
4. 下载 MockingBird 【开源项目】下载解压后，直接在目录输入CMD 进入终端
5. 在终端下（cmd + R）安装所需环境

	`
	python -m pip install --upgrade pip
	`

	`
	pip install -r requirements.txt
	`

	`
	pip install webrtcvad-wheels
	`
6. 下载或使用自己训练的语言模型
| 作者         | 下载链接                                       | 效果预览   | 信息                                      |
| ------------ | -------------------------------------------- | --------- | ----------------------------------------- |
| 作者         | <a href="https://pan.baidu.com/s/1iONvRxmkI-t1nHqxKytY3g" target="_blank" rel="nofollow"><font color=orange>【百度网盘】</font></a> 提取码: 4j5d |           | 75k steps 用3个开源数据集混合训练            |
| 作者         | <a href="https://pan.baidu.com/s/1fMh9IlgKJlL2PIiRTYDUvw" target="_blank" rel="nofollow"><font color=orange>【百度网盘】</font></a> 提取码: om7f |           | 25k steps 用3个开源数据集混合训练, 切换到tag v0.0.1使用 |
| @FawenYo     | <a href="https://drive.google.com/file/d/1H-YGOUHpmqKxJ9FRc6vAjPuqQki24UbC/view?usp=sharing" target="_blank" rel="nofollow"><font color=orange>【谷歌云盘】</font></a> 提取码: 1024 |  [input](https://github.com/babysor/MockingBird/wiki/audio/self_test.mp3)   [output](https://github.com/babysor/MockingBird/wiki/audio/export.wav)  | 200k steps 台湾口音需切换到tag v0.0.1使用     |
| @miven       | <a href="https://pan.baidu.com/s/1PI-hM3sn5wbeChRryX-RCQ" target="_blank" rel="nofollow"><font color=orange>【百度网盘】</font></a> 提取码: 2021 |           | 150k steps 注意：根据issue修复 并切换到tag v0.0.1使用 |

7. 下载模型后，确保 pt 格式文件放在 synthesizer\saved_models文件夹下，saved_models 不存在的话新建文件夹即可
8. 执行命令，即可启动程序！

## 二. 启动程序或工具箱
#### · 启动Web程序（v2）
`python web.py`

运行成功后在浏览器打开地址, 默认为 http://localhost:8080

#### · 启动工具箱
`python demo_toolbox.py -d <datasets_root>`

指定一个可用的数据集文件路径，如果有支持的数据集则会自动加载供调试，也同时会作为手动录制音频的存储目录。
<center><img src="https://user-images.githubusercontent.com/7423248/134275227-c1ddf154-f118-4b77-8949-8c4c7daf25f0.png" alt="MockingBird" width="100%" /></center>

#### · 启动工具箱VC模式
`python demo_toolbox.py -vc -d <datasets_root>`
	
指定一个可用的数据集文件路径，如果有支持的数据集则会自动加载供调试，也同时会作为手动录制音频的存储目录。
<center><img src="https://user-images.githubusercontent.com/7423248/156805733-2b093dbc-d989-4e68-8609-db11f365886a.png" alt="MockingBird" width="100%" /></center>