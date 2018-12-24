# mtoq
Stata, transfer the monthly data to quarterly data


#### 新命令 mtoq

有些时候我们下载的收益率本身就是月度收益率，那如何转换为季度收益率呢？新的命令`mtoq`可实现这一功能。

##### Step1 安装`mtoq`：

```
/*1.没有安装github接口的请先通过下述命令进行安装*/
net install github, from("https://haghish.github.io/github/")  replace

/*2.安装过github接口的同学可忽略上述命令，直接进行下述安装*/
github install zhbsis/mtoq
```
##### Step2 调用`mtoq`：
`mtoq`命令非常简洁，如下：
```
mtoq varlist, by(string) [Statistics(string)]
```

其中,
* varlist 中填写对数收益率序列，可同时填写多个序列。
* by 选项中填写个体和时间截面的id，例如股票类数据可填写 stkcd（股票代码） ym（年月时间标记）
* Statistics 选项中可填写 Stata官方命令 `egen` 中的常见 option ，例如 mean、sum等，默认为 mean 处理，在月度收益率转换为季度收益率的时候通常填写 sum 选项。

> **Tips**：当然，`mtoq`命令默认了由月度频率向季度频率转换，因此不局限于收益率序列的转换，可转换其他变量。例如当你有月度的换手率（TurnOver）数据时，你想要通过加总月度换收益率得到季度的换手率，可输入：`mtoq TurnOver, by(stkcd ym) s(sum)`
