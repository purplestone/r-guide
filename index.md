# R 语言指南

## 目录
* [安装、配置与加载](#安装、配置与加载)
* [程序控制](#程序控制)
* [数据导入导出](#数据导入导出)
* [基础知识](#基础知识)
* [基本操作](#基本操作)
* [数据框操作](#数据框操作)
* [向量操作](#向量操作)
* [统计](#统计)
* [ggplot](#ggplot)
	* [图例](#图例)
	* [散点图](#散点图)
	* [线图](#线图)
	* [柱状图](#柱状图)
	* [饼图](#饼图)
	* [箱形图](#箱形图)
	* [条状图](#条状图)
	* [密度图](#密度图)
	* [山峦图](#山峦图)
	* [直方图](#直方图)
	* [拟合曲线图](#拟合曲线图)
* [案例](#案例)
* [索引](#索引)
* [附录](#附录)
	* [内置数据集指南](./datasets.md)



### 安装、配置与加载

https://www.r-project.org/

```r
install.packages("ggplot2") # 安装包
library('ggplot2') # 加载包

theme_set(theme_get() + theme(text=element_text(family='STXihei')))
theme_set(theme_get() + theme(text=element_text(family='Simsun'))) # 绘图字体

```

### 程序控制

```r
dev.new() # 新建一个绘图窗口
dev.cur() # 返回当前活动的绘图窗口ID
dev.list() # 返回所有已经打开的绘图窗口ID
dev.off(which = dev.cur()) # 关闭指定绘图窗口，默认关闭当前活动窗口
dev.next(which = dev.cur()) # 返回指定绘图窗口的下一个窗口的ID，默认值为当前活动窗口
dev.prev(which = dev.cur()) # 返回指定绘图窗口的上一个窗口的ID，默认值为当前活动窗口
dev.set(which = dev.next()) # 指定特定绘图窗口为当前活动窗口，默认指定当前活动窗口的下一个窗口
dev.set(1) # 指定特定绘图窗口为当前活动窗口，默认指定当前活动窗口的下一个窗口
```



### 数据导入导出

```r
x <- read.csv(file="/Sys/path/dir/file.csv", header=F)
write.csv(dd,file = "/Sys/path/dir/file.csv", row.names=F)
```


### 基础知识

#### 数据类型

* vector 向量
* matrix 矩阵
* array 数组
* data.frame 数据框
* factor 因子
* list 列表

逻辑值TRUE和FALSE 可缩写为T和F


### 基本操作


#### 查看数据
```r
class(d) # 变量类型
str(d) # 变量概要

typeof(d) # 数据类型
summary(d) # 数据概要
head(d) # 前几行
head(mydata, n=10)
tail(mydata, n=5)
ls()
levels()
dim()
nrow(d) # 行数
ncol(d) # 列数
names()
rownames()
colnames()
```

#### 运算
* x + y 加法
* x - y 减法
* x * y 乘法
* x / y 除法
* x ^ y 乘幂
* x %% y 模运算
* x %/% y 整数除法
```r
paste('a','b',  sep = ':') # 连接字符串
paste(c('a','b'),  collapse=":") # 连接字符串
```

### 向量操作
```r
x = c(3,5,6,7,8,9)
mean(x) # 取平均值
sum(x) # 求和
length(x) # 求数量
```


### 数据框操作

#### 创建
```r
d = data.frame(
	Name = c("苹果","谷歌","脸书","亚马逊","腾讯","百度","阿里巴巴"),
	Company = c("Apple","Google","Facebook","Amozon","Tencent","Baidu","Alibaba"),
	Type = c("Device","Web","Web","Web","Web","Web","Web"),
	Location = c("us","us","us","us","zh","zh","zh"),
	Sale2015 = c(5000,3500,2300,2100,3100,1345,2233),
	Sale2016 = c(5050,3800,2900,2500,3300,1442,2673)
)
# 空数据框
data.frame('date'=0,'v'=0,'z'=0,'t'=0, 'c'=0)[-1,0]
```
#### List 转为 数据框
```r
d = (aggregate(list, by=list(date=names(list)), FUN=function(x){return(unlist(x))}))
```

#### 转类型
```r
d = as.character(d) # 转为字符串
d = as.numeric(d) # 转为数字
d = as.factor(d)# 转为因子
```

#### 取数据
```r
d$V1
d[,1:2]
d[,3]
```

#### 筛选某列数据
```r
subset(d, Name=='苹果')
subset(d, Sale2015<3000)
subset(t, V29<5000&V29>1)
```


#### 更改行列名
colnames(dat)=cnames
library(reshape) # 加载所需的包
dat <- rename(dat,c(国家 = "country")) 
rownames(dat)=rnames

#### 插入行
```r
d = rbind(d, data.frame(
	Name = c("华为"),
	Company = c("Huawei"),
	Type = c("Device"),
	Location = c("zh"),
	Sale2015 = c(4240),
	Sale2016 = c(5340)
))
```

#### 插入列
```r
d = cbind(d, Sum=c(d[,3] + d[,4]))
```

#### 旋转
```r
t(d)
```

#### 去重
```r
unique()
```

### 统计

#### 出现种数
```r
length(unique(d$V1))
aggregate(data=d, cbind(Num=rownames(d)) ~ Type, FUN=length)
aggregate(data=d, cbind(Num=rownames(d)) ~ Type + Location, FUN=length)
```

### ggplot


#### 图例
```r
 + ggtitle('图表名称')
```

#### 散点图
```r
ggplot(t, aes(rownames(t),y=Web)) + geom_point(size=0.1, alpha=0.2, show.legend=FALSE)
```


#### 柱状图
```r
ggplot(t, aes(rownames(t),y=Web)) + geom_bar(stat="identity")
 + geom_text(aes(label=Number))
ggplot(t, aes(Web)) + geom_bar()
```

#### 条状图
```r
ggplot(t, aes(rownames(t),y=Web)) + geom_bar(position=position_stack(reverse = TRUE)) + coord_flip() + theme(legend.position = "top")
```


#### 饼图
```r
ggplot(t, aes(rownames(t),y=Web)) + geom_bar(stat="identity") + coord_polar(theta = "y")
```


#### 密度图
```r
ggplot(t, aes(x=V29, fill=V4)) + geom_density(alpha = 0.6) + xlim(1,20000)
```

#### 直方图
```r
ggplot(t, aes(x=V29, fill=V4)) + geom_histogram(alpha = 0.6) + xlim(1,20000)
```

#### 线图
```r
ggplot(t, aes(rownames(t),Sale2015, group=1)) + geom_line()
```

#### 山峦图
```r
library('ggridges')
ggplot(d, aes(x=V29, fill=V4)) + geom_density() + xlim(1,17000) + geom_density_ridges(alpha = 0.6,aes(y=V31))
```

### 案例

```r
# 将数据按V31的值分类聚合V2的值，进行 mean 运算
tapply(tt$V2, tt$V31, mean)
(aggregate(data=k, index ~ V2, mean)
(aggregate(data=tt, cbind(v=as.numeric(rownames(tt))) ~ V31, FUN=function(x){mean(as.numeric(x))}))
```

### 索引

行名称 rownames

列名称 colnames

透明度 alpha

x轴区间 xlim

y轴区间 ylim

散点图 

线图 geom_line()

柱状图 geom_bar()

箱形图 

条状图 

密度图 geom_density()

直方图 geom_histogram()

拟合曲线图 

安装包 install.packages()

加载包 library()

数据导入 read.csv(file="", header=F)

数据导出 write.csv(dd, file="", row.names=F)

创建数据框 data.frame()

转字符串 as.character()

查看数据 head()

筛选数据 subset(d, ColName=='xxx')

插入行 rbind(d, d1)

插入列 cbind(d, d1)

旋转 tapply(x$Num,list(x$Location, x$Type), FUN=sum)

去重 unique()

统计 aggregate(data=d, cbind(Num=rownames(d)) ~ Type + Location, FUN=length)




---------------