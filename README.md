# R 语言指南

## 目录
* [安装、配置与加载](#安装、配置与加载)
* [程序控制](#程序控制)
* [数据导入导出](#数据导入导出)
* [基础知识](#基础知识)
* [基本操作](#基本操作)
* [高级操作](#高级操作)
* [数据框操作](#数据框操作)
* [向量操作](#向量操作)
* [运算](#运算)
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
* [绘图库](#绘图库)
	* [相关性矩阵图-corrplot](#相关性矩阵图-corrplot)
	* [平行坐标图-corrplot](#平行坐标图-corrplot)
* [案例](#案例)
	* [相关矩阵](#相关矩阵)
* [索引](#索引)
* [附录](#附录)
	* [内置数据集指南](./datasets.md)



### 安装、配置与加载

https://www.r-project.org/

```r
install.packages("ggplot2") # 安装包
library('ggplot2') # 加载包

theme_set(theme_get() + theme(text=element_text(family='STXihei'))) # Mac
theme_set(theme_get() + theme(text=element_text(family='Simsun'))) # Win绘图字体

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

#### 语言
```r
if(){}
if(){}else{}
if(){}else if(){}else{}
tryCatch({},error=function(e){},finally=function(e){})
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
* logical 布尔值

逻辑值TRUE和FALSE 可缩写为T和F

##### 转类型
```r
as.character(d) # 转为字符串
as.numeric(d) # 转为数字
as.factor(d)# 转为因子
as.vector(mymatrix)

```

结构转化 | vector | matrix | array | data.frame | factor | list 
-- | -- | -- | -- | -- | -- | -- 
vector | \ | m=matrix(c(1:20), nrow=3, ncol=5); | a=array(c(1:33), dim=c(2,3)); |  d=data.frame(V1=c(2:6), V2=c(5:9));t(data.frame(n=c(2,3,5))); | f=as.factor(c(4,5,6)); | l = list(V1=c(2,3,4)); | --
matrix | c(m) | \ | \ | data.frame(m); | factor(apply(m, 1, function(l){paste(l, collapse='_')})); | (function(m, t='c'){l = list();i = 0;rc = 1;tag = 'C';if(t == 'c') {rc = 1;tag = 'R';}apply(m, rc, function(e) {i <<- i+1;l[[paste(tag, i, sep=(''))]] <<- e;});l;})(m); | --
array |  c(a) | \ | \ | data.frame(a); | factor(a) | (function(a) {l = sapply(apply(a, 1, list), c);names(l) = c(1:length(l));l;})(a); 
data.frame |  unlist(c(d), use.names=F); | sapply(d,function(e){e}) | array(d) | \ | factor(d) | (function(a) {l = sapply(apply(a, 1, list), c);names(l) = a[,1];l;})(d);
factor | (function(f){r = sapply(f,as.numeric);names(r) = levels(f);r;})(f);sapply(f,as.numeric);levels(f) | \ | \ | data.frame(n=sapply(f,as.numeric),s=levels(f)); | \ | lapply(tt, as.numeric)
list |  unlist(l, use.names=F); | sapply(l, function(e){e}) | array(l) | data.frame(l) | \ | \ 



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

#### 字符串操作
```r
paste('a','b',  sep = ':') # 连接字符串
paste(c('a','b'),  collapse=":") # 连接字符串
strsplit('b3c3d', '3')
```

### 高级操作

#### 遍历操作

apply(X, MARGIN, FUN, ...)
```
```r
apply(m, 1, function(l){l})
# 按行(为2时按列)遍历m，将每行执行函数结果，按列拼成矩阵
```
lapply # 按属性遍历

sapply # 按元素遍历

vapply

mapply

tapply(X, INDEX, FUN = NULL, ..., simplify = TRUE)# 将x分组，遍历每行的INDEX

rapply

eapply

### 数据操作

#### 赋值
```r
x <<- 9 # 赋值全局变量
matrix(c(1:20), nrow=3, ncol=5) # 数列填充矩阵
list(x=c(1,2,3), y=c(6,7,8))
array(1:33, dim=c(2,3,4))
g[is.na(g)] = 0
g[g =='NaN'] = 0
unlist(l, use.names=F)


### 向量操作
```r
x = c(3,5,6,7,8,9)
mean(x) # 取平均值
sum(x) # 求和
length(x) # 求数量
identical(a, b) # 判断全等
all(a == b) # 判断全等
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
matrix(1:9, nrow=3)
```


#### 取数据
```r
d$V1
d['k']
d[,'c']
d[,1:2]
d[,3]
x[-1, ] #去掉第一行
x[, -1] #去掉第一列
```

#### 筛选某列数据
```r
subset(d, Name=='苹果')
subset(d, Sale2015<3000)
subset(t, V29<5000 && V29>1)
subset(t, select='colname')
```


#### 更改行列名
```r
colnames(dat)=cnames
library(reshape) # 加载所需的包
dat <- rename(dat,c(国家 = "country")) 
rownames(dat)=rnames
```

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



### 运算
* x + y #加法
* x - y #减法
* x * y #乘法
* x / y #除法
* x ^ y #乘幂
* x %% y #模运算
* x %/% y #整数除法

* round() #四舍五入
* round(x, 2) #保留两位小数
* signif() #取有效数字
* trunc() #取整
* floor() #向下取整
* ceiling() #向上取整
* logb(a, b) #以b为底的对数，省略b表示自然对数
* log() #自然对数
* log10() #以10为底的常用对数
* sqrt() #平方根
* exp() #指数
* sin() #正弦
* cos() #余弦
* tan() #正切
* asin() #反正弦
* acos() #反余弦
* atan() #反正切
* sinh() #双曲正弦
* tanh() #双曲正切
* nchar() #字符长度
* substring() #取子字符串
* strsplit() #切分字符串
* paste() #连接字符



#### 去重
```r
unique()
```

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

### 绘图库

#### 相关性矩阵图-corrplot
```r
install.packages('corrplot')
library(corrplot)
corrplot((r),"pie",addCoef.col = "grey",cl.pos='n');
corrplot(r, "color",addCoef.col = "grey")
corrplot(r, "pie",add=T,addCoef.col = "grey", type="upper",diag=F)

```

	corrplot(corr, #需要可视化的相关系数矩阵 
		method = c(“circle”, “square”, “ellipse”, “number”, “shade”, “color”, “pie”), #指定可视化的方法，可以是圆形、方形、椭圆形、数值、阴影、颜色或饼图形
		type = c(“full”, “lower”, “upper”), #指定展示的方式，可以是完全的、下三角或上三角
		add = FALSE, 
		col = NULL, #指定图形展示的颜色，默认以均匀的颜色展示
		bg = “white”, #指定图的背景色 title：为图形添加标题
		title = “”, 
		is.corr = TRUE, #是否为相关系数绘图，默认为TRUE，同样也可以实现非相关系数的可视化，只需使该参数设为FALSE即可
		diag = TRUE, #是否展示对角线上的结果，默认为TRUE
		outline = FALSE, #是否绘制圆形、方形或椭圆形的轮廓，默认为FALSE
		mar = c(0,0,0,0), #具体设置图形的四边间距
		addgrid.col = NULL, #当选择的方法为颜色或阴影时，默认的网格线颜色为白色，否则为灰色
		addCoef.col = NULL, #为相关系数添加颜色，默认不添加相关系数，只有方法为number时，该参数才起作用
		addCoefasPercent = FALSE, #为节省绘图空间，是否将相关系数转换为百分比格式，默认为FALSE
		order = c(“original”, “AOE”, “FPC”, “hclust”, “alphabet”), #指定相关系数排序的方法，可以是原始顺序(original)、特征向量角序(AOE)、第一主成分顺序(FPC)、层次聚类顺序(hclust)和字母顺序，一般”AOE”排序结果都比”FPC”要好
		hclust.method = c(“complete”, “ward”, “single”, “average”, “mcquitty”, “median”, “centroid”), #当order为hclust时，该参数可以是层次聚类中ward法、最大距离法等7种之一
		addrect = NULL, #当order为hclust时，可以为添加相关系数图添加矩形框，默认不添加框，如果想添加框时，只需为该参数指定一个整数即可
		rect.col = “black”, #指定矩形框的颜色
		rect.lwd = 2, #指定矩形框的线宽
		tl.pos = NULL, #指定文本标签(变量名称)的位置，当type=full时，默认标签位置在左边和顶部(lt)，当type=lower时，默认标签在左边和对角线(ld)，当type=upper时，默认标签在顶部和对角线，d表示对角线，n表示不添加文本标签
		tl.cex = 1, #指定文本标签的大小
		tl.col = “red”, #指定文本标签的颜色
		tl.offset = 0.4, 
		tl.srt = 90, 
		cl.pos = NULL, #图例（颜色）位置，当type=upper或full时，图例在右表(r)，当type=lower时，图例在底部，不需要图例时，只需指定该参数为n
		cl.lim = NULL, 
		cl.length = NULL, 
		cl.cex = 0.8, 
		cl.ratio = 0.15, cl.
		align.text = “c”,
		cl.offset = 0.5, 
		addshade = c(“negative”, “positive”, “all”), #只有当method=shade时，该参数才有用，参数值可以是negtive/positive和all，分表表示对负相关系数、正相关系数和所有相关系数添加阴影。注意：正相关系数的阴影是45度，负相关系数的阴影是135度
		shade.lwd = 1, #指定阴影的线宽
		shade.col = “white”, #指定阴影线的颜色
		p.mat = NULL, 
		sig.level = 0.05, 
		insig = c(“pch”,“p-value”,“blank”, “n”), 
		pch = 4, 
		pch.col = “black”, 
		pch.cex = 3, 
		plotCI = c(“n”,“square”, “circle”, “rect”), 
		lowCI.mat = NULL, 
		uppCI.mat = NULL
	)

corrplot(mtcars, method = 'shade',shade.col = NA, tl.col ='black', tl.srt = 45, order = 'AOE')


#### 平行坐标图-lattice

install.packages('lattice')
library(lattice)
```r

(function(fs) {
	nr = length(fs);
	n = length(levels(fs));
	g = 10 / nr;

	mo = (data.frame(
		i = c(1:length(fs)),
		v = fs,
		o = order(fs),
		n = as.numeric(fs)
	));
	mo = mo[order(fs),];

	mo = t(apply(mo, 1, function(l){
		print(as.numeric(o)[1]*g)
		r = (as.numeric(l['n'])[1]*20 + as.numeric(l['o'])[1]*g);
		c(l, r=r)
	}));
	mo = mo[order(as.numeric(mo[,1])),];
	as.numeric(mo[,'r']);
})(CO2$Type)



mgPoint(CO2, group=c('Plant','Type'), x=conc, y=uptake);

parallelplot(tt, group=tt$Plant) 

```

### 案例

```r
# 将数据按V31的值分类聚合V2的值，进行 mean 运算
tapply(tt$V2, tt$V31, mean)
(aggregate(data=k, index ~ V2, mean)
(aggregate(data=tt, cbind(v=as.numeric(rownames(tt))) ~ V31, FUN=function(x){mean(as.numeric(x))}))
(aggregate(data=td, Freq ~ Class + Sex + Survived, sum))

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

加载包 library)

数据导入 read.csv(file="", header=F)

数据导出 write.csv(dd, file="", row.names=F)

创建数据框 data.frame()

转字符串 as.character()

查看数据 head()

筛选数据 subset(d, ColName=='xxx')

插入行 rbind(d, d1)

插入列 cbind(d, d1)

旋转 tapply(x$Num,list(x$Location, x$Type), FUN=sum)

去重 unique()

统计 aggregate(data=d, cbind(Num=rownames(d)) ~ Type + Location, FUN=length)




---------------