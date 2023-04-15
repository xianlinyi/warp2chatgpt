# 使用说明

## 目的
使用cloudflare家的warp进行代理，绕开openai对IP的封锁

## 适用对象
ip被openai封禁的vps(访问chatgpt时错误码是1020）

## 前置准备
 * 一台已经安装好xray的VPS （ 如果没有安装xray，请查看 https://github.com/wulabing/Xray_onekey ）

## 运行
使用root账户运行以下代码：
```shell
curl -sSL https://raw.githubusercontent.com/xianlinyi/warp2chatgpt/master/warp2chatgpt.sh | bash
```
