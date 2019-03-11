# R 语言内置数据集指南

[首页](./README.md)

```r
data()
```


变量名 | 说明 | 数据结构
------------ | ------------- | -------------
```AirPassengers``` | Monthly Airline Passenger Numbers 1949-1960 <br /> 1949-1960年每月航空旅客人数 |  Time-Series [1:144] from 1949 to 1961: <br />double 104  ~  622  !  280.3 
```BJsales``` | Sales Data with Leading Indicator<br />销售数据及领先指标 | Time-Series [1:150] from 1 to 150: <br />double 198.6 ~ 263.3 ! 229.978
```BJsales.lead (BJsales)``` | Sales Data with Leading Indicator<br />销售数据及领先指标 | Time-Series [1:150] from 1 to 150: <br />double 9.75 ~ 13.87 ! 11.85
```BOD``` | Biochemical Oxygen Demand<br />生物化学的需氧量 | 'data.frame':   6 obs. of  2 variables:<br /> $ Time  : num  1 ~ 7 ! 3.67 <br /> $ demand: num  8.30 ~ 19.8 ! 14.83
```CO2``` | Carbon Dioxide Uptake in Grass Plants<br />草类植物对二氧化碳的吸收 |  'data.frame': 84 obs. of 5 variables<br />  $ Plant    : Ord.factor 12<br />$ Type     : Factor 2<br />$ Treatment: Factor 2<br />$ conc     : num  95  ~  1000  !  435<br />$ uptake   : num  7.7  ~  45.5  !  27.21
```ChickWeight``` | Weight versus age of chicks on different diets<br />雏鸡体重与不同饮食雏鸡年龄的关系 | 'data.frame':      578 obs. of  4 variables:<br />$ weight : num 35~373!121.82"<br />$ Time : num 0 ~ 21 ! 10.72<br />$ Chick : Ord.factor 50<br />$ Diet : Factor 4
```DNase``` | Elisa assay of DNase<br />酶联免疫吸附试验 | 'data.frame':      176 obs. of  3 variables:<br />$ Run : Ord.factor 11<br />$ conc : num 0.049 ~ 12.5 ! 3.11<br />$ density : num 0.011 ~ 2.003 ! 0.72
```EuStockMarkets``` | Daily Closing Prices of Major European Stock Indices, 1991-1998<br />欧洲股票市场1991-1998年主要欧洲股票指数的“每日收盘价” |  Time-Series [1:1860, 1:4] from 1991 to 1999:<br />$ DAX : num 1402.34 ~ 6186.09 ! 2530.66<br />$ SMI : num 1587.4 ~ 8412 ! 3376.22<br />$ CAC : num 1611 ~ 4388.5 ! 2227.83<br />$ FTSE : num 2281 ~ 6179 ! 3565.64
```Formaldehyde``` | Determination of Formaldehyde<br />甲醛的测定 | 'data.frame':   6 obs. of  2 variables:<br />$ carb : num 0.1 ~ 0.9 ! 0.52<br />$ optden : num 0.086 ~ 0.782 ! 0.46
```HairEyeColor``` | Hair and Eye Color of Statistics Students<br />统计学生发眼发眼颜色 |  'table' num [1:4, 1:4, 1:2]
```Harman23.cor``` | Harman Example 2.3<br /> | List of 3<br />$ cov   : num [1:8, 1:8]<br />$ center: num [1:8]<br />$ n.obs : num 
```Harman74.cor``` | Harman Example 7.4<br /> | List of 3<br />$ cov   : num [1:24, 1:24]<br />$ center: num [1:24]<br />$ n.obs : num 
```Indometh``` | Pharmacokinetics of Indomethacin<br />吲哚美辛的“药代动力学” | 'data.frame':      66 obs. of  3 variables:<br />$ Subject : Ord.factor 6<br />$ time : num 0.25 ~ 8 ! 2.89<br />$ conc : num 0.05 ~ 2.72 ! 0.59
```InsectSprays``` | Effectiveness of Insect Sprays<br />昆虫喷雾剂的效果 | 'data.frame':   72 obs. of  2 variables:<br />$ count : num 0 ~ 26 ! 9.5$ spray : Factor 6
```JohnsonJohnson``` | Quarterly Earnings per Johnson & Johnson Share<br />强生股票季度收益 | Time-Series [1:84] from 1960 to 1981: <br />double 0.44  ~  16.2  !  4.8
```LakeHuron``` | Level of Lake Huron 1875-1972<br />休伦湖水位1875-1972 |  Time-Series [1:98] from 1875 to 1972:<br />double 575.96  ~  581.86  !  579
```LifeCycleSavings``` | Intercountry Life-Cycle Savings Data<br /> | 'data.frame':   50 obs. of  5 variables:<br />$ sr : num 0.6 ~ 21.1 ! 9.671<br />$ pop15 : num 21.44 ~ 47.64 ! 35.0896<br />$ pop75 : num 0.56 ~ 4.7 ! 2.293<br />$ dpi : num 88.94 ~ 4001.89 ! 1106.7584<br />$ ddpi : num 0.22 ~ 16.71 ! 3.7576
```Loblolly``` | Growth of Loblolly pine trees<br />火炬松生长 | 'data.frame':84 obs. of  3 variables:<br />$ height : num 3.46 ~ 64.1 ! 32.36<br />$ age : num 3 ~ 25 ! 13<br />$ Seed : Ord.factor 14
```Nile``` | Flow of the River Nile<br />尼罗河的流动 | Time-Series [1:100] from 1871 to 1970: <br />double 456  ~  1370  !  919.35"
```Orange``` | Growth of Orange Trees<br />橙树的生长 | 'data.frame':      35 obs. of  3 variables:<br />$ Tree : Ord.factor 5<br />$ age : num 118 ~ 1582 ! 922.17<br />$ circumference : num 30 ~ 214 ! 115.86
```OrchardSprays``` | Potency of Orchard Sprays<br />果园喷雾剂的效力 | 'data.frame':64 obs. of  4 variables:<br />$ decrease : num 2 ~ 130 ! 45.421875<br />$ rowpos : num 1 ~ 8 ! 4.5<br />$ colpos : num 1 ~ 8 ! 4.5<br />$ treatment : Factor 8
```PlantGrowth``` | Results from an Experiment on Plant Growth<br />植物生长试验结果 | 'data.frame':30 obs. of  2 variables:<br />$ weight : num<br />$ group : Factor 3
```Puromycin``` | Reaction Velocity of an Enzymatic Reaction<br />酶促反应的反应速度 | 'data.frame':   23 obs. of  3 variables:<br />$ conc : num 0.02 ~ 1.1 ! 0.31<br />$ rate : num 47 ~ 207 ! 126.8<br />$ state : Factor 2
```Seatbelts``` | Road Casualties in Great Britain 1969-84<br />英国的公路伤亡1969-84<br />英国的公路伤亡1969-84 | Time-Series [1:192, 1:8] from 1969 to 1985:<br />$ DriversKilled : num 60.0 ~ 198.0 ! 122.8<br />$ drivers : num 1057 ~ 2654 ! 1670<br />$ front : num 426.0 ~ 1299.0 ! 837.2<br />$ rear : num 224.0 ~ 646.0 ! 401.2<br />$ kms : num 7685 ~ 21626 ! 14994<br />$ PetrolPrice : num 0.08118 ~ 0.13303 ! 0.10362<br />$ VanKilled : num 2.000 ~ 17.000 ! 9.057<br />$ law : num 0.0000 ~ 1.0000 ! 0.1198
```Theoph``` | Pharmacokinetics of Theophylline<br />茶碱的药代动力学 | 'data.frame':      132 obs. of  5 variables:<br />$ Subject : Ord.factor 12<br />$ Wt : num 54.6 ~ 86.4 ! 69.58<br />$ Dose : num 3.1 ~ 5.86 ! 4.63<br />$ Time : num 0 ~ 24.65 ! 5.89<br />$ conc : num 0 ~ 11.4 ! 4.96
```Titanic``` | Survival of passengers on the Titanic<br />泰坦尼克号乘客的生存 | 'table' num [1:4, 1:2, 1:2, 1:2]
```ToothGrowth``` | The Effect of Vitamin C on Tooth Growth in Guinea Pigs<br />维生素C对豚鼠牙齿生长的影响 | a.frame':   60 obs. of  3 variables:<br />$ len : num 4.2 ~ 33.9 ! 18.81<br />$ supp : Factor 2<br />$ dose : num 0.5 ~ 2 ! 1.17
```UCBAdmissions``` | Student Admissions at UC Berkeley<br />加州大学伯克利分校的学生入学 | 'table' num [1:2, 1:2, 1:6]
```UKDriverDeaths``` | Road Casualties in Great Britain 1969-84<br /> | Time-Series [1:192] from 1969 to 1985:<br /> num 1057  ~  2654  !  1670.31
```UKgas``` | UK Quarterly Gas Consumption<br />英国季度天然气消费 | Time-Series [1:108] from 1960 to 1987: <br />num 84.8  ~  1163.9  !  337.63
```USAccDeaths``` | Accidental Deaths in the US 1973-1978<br />美国的意外死亡1973-1978 | Time-Series [1:72] from 1973 to 1979: <br />num 6892  ~  11317  !  8788.79
```USArrests``` | Violent Crime Rates by US State<br />美国国家的暴力犯罪率 | 'data.frame':   50 obs. of  4 variables:<br />$ Murder : num 0.8 ~ 17.4 ! 7.79<br />$ Rape : num 7.3 ~ 46 ! 21.23
```USJudgeRatings``` | Lawyers' Ratings of State Judges in the US Superior Court<br />律师对美国高等法院州法官的评级 | 'data.frame':   43 obs. of  12 variables:<br />$ CONT : num 5.7 ~ 10.6 ! 7.44<br />$ INTG : num 5.9 ~ 9.2 ! 8.02<br />$ DMNR : num 4.3 ~ 9 ! 7.52<br />$ DILG : num 5.1 ~ 9 ! 7.69<br />$ CFMG : num 5.4 ~ 8.7 ! 7.48<br />$ DECI : num 5.7 ~ 8.8 ! 7.57<br />$ PREP : num 4.8 ~ 9.1 ! 7.47<br />$ FAMI : num 5.1 ~ 9.1 ! 7.49<br />$ ORAL : num 4.7 ~ 8.9 ! 7.29<br />$ WRIT : num 4.9 ~ 9 ! 7.38<br />$ PHYS : num 4.7 ~ 9.1 ! 7.93<br />$ RTEN : num 4.8 ~ 9.2 ! 7.6
```USPersonalExpenditure``` | Personal Expenditure Data<br />个人支出数据 |  num [1:5, 1:5]
```UScitiesD``` | Distances Between European Cities and Between US Cities<br />欧洲城市之间和美国城市之间的距离 | 'dist' int [1:45] integer 205  ~  2734  !  1417.13
```VADeaths``` | Death Rates in Virginia (1940)<br />弗吉尼亚州的死亡率（1940年） | num [1:5, 1:4]
```WWWusage``` | Internet Usage per Minute<br />每分钟互联网使用量 | Time-Series [1:100] from 1 to 100: num 83  ~  228  !  137.08
```WorldPhones``` | The World's Telephones<br />世界电话 | num [1:7, 1:7] 
```ability.cov``` | Ability and Intelligence Tests<br />能力和智力测试 | List of 3<br />$ cov   : num [1:6, 1:6] <br />$ center: num [1:6] <br />$ n.obs : num 112
```airmiles``` | Passenger Miles on Commercial US Airlines, 1937-1960<br />美国商业航空公司的乘客里程，1937-1960 | Time-Series [1:24] from 1937 to 1960: num 412  ~  30514  !  10527.83
```airquality``` | New York Air Quality Measurements<br />纽约空气质量测量 | 'data.frame':   153 obs. of  6 variables:<br />$ Ozone : int 1 ~ 168 ! 42.13<br />$ Solar.R : int 7 ~ 334 ! 185.93<br />$ Wind : num 1.7 ~ 20.7 ! 9.96 1.7 ~ 20.7 ! 9.96<br />$ Temp : int 56 ~ 97 ! 77.88<br />$ Month : int 5 ~ 9 ! 6.99<br />$ Day : int 1 ~ 31 ! 15.8
```anscombe``` | Anscombe's Quartet of 'Identical' Simple Linear Regressions<br />安斯科姆的“相同”简单线性回归四重奏 | 'data.frame':   11 obs. of  8 variables:<br />$ x1 : num 4 ~ 14 ! 9<br />$ x2 : num 4 ~ 14 ! 9<br />$ x3 : num 4 ~ 14 ! 9<br />$ x4 : num 8 ~ 19 ! 9<br />$ y1 : num 4.26 ~ 10.84 ! 7.5<br />$ y2 : num 3.1 ~ 9.26 ! 7.5<br />$ y3 : num 5.39 ~ 12.74 ! 7.5<br />$ y4 : num 5.25 ~ 12.5 ! 7.5
```attenu``` | The Joyner-Boore Attenuation Data<br />Joyner-Boore衰减数据 | 'data.frame':   182 obs. of  5 variables:<br />$ event : num 1 ~ 23 ! 14.74<br />$ mag : num 5 ~ 7.7 ! 6.08<br />$ station : Factor 117<br />$ dist : num 0.5 ~ 370 ! 45.6<br />$ accel : num 0.003 ~ 0.81 ! 0.15
```attitude``` | The Chatterjee-Price Attitude Data<br />Chatterjee-价格态度数据 | 'data.frame':   30 obs. of  7 variables:<br />$ rating : num 40 ~ 85 ! 64.63<br />$ complaints : num 37 ~ 90 ! 66.6<br />$ privileges : num 30 ~ 83 ! 53.13<br />$ learning : num 34 ~ 75 ! 56.37<br />$ raises : num 43 ~ 88 ! 64.63<br />$ critical : num 49 ~ 92 ! 74.77<br />$ advance : num 25 ~ 72 ! 42.93
```austres``` | Quarterly Time Series of the Number of Australian Residents<br />澳大利亚居民数量的季度时间序列 | Time-Series [1:89] from 1971 to 1993: <br />num 13067.3  ~  17661.5  !  15273.45
```beaver1 (beavers)``` | Body Temperature Series of Two Beavers<br />两个海狸的体温系列 | 'data.frame':   114 obs. of  4 variables:<br />$ day : num 346 ~ 347 ! 346.2<br />$ time : num 0 ~ 2350 ! 1312.02<br />$ temp : num 36.33 ~ 37.53 ! 36.86<br />$ activ : num 0 ~ 1 ! 0.05
```beaver2 (beavers)``` | Body Temperature Series of Two Beavers<br />两个海狸的体温系列 | 'data.frame':   100 obs. of  4 variables:<br />$ day : num 307 ~ 308 ! 307.13<br />$ time : num 0 ~ 2350 ! 1446.2<br />$ temp : num 36.58 ~ 38.35 ! 37.6<br />$ activ : num 0 ~ 1 ! 0.62
```cars``` | Speed and Stopping Distances of Cars<br />汽车的速度和停止距离 | 'data.frame':   50 obs. of  2 variables:<br />$ speed : num 4 ~ 25 ! 15.4<br />$ dist : num 2 ~ 120 ! 42.98
```chickwts``` | Chicken Weights by Feed Type<br />饲料类型的鸡肉重量 | 'data.frame':   71 obs. of  2 variables:<br />$ weight : num 108 ~ 423 ! 261.31<br />$ feed : Factor 6
```co2``` | Mauna Loa Atmospheric CO2 Concentration<br />Mauna Loa大气CO2浓度 | <br />Time-Series [1:468] from 1959 to 1998: <br />num 313.18  ~  366.84  !  337.05
```crimtab``` | Student's 3000 Criminals Data<br />学生的3000名罪犯数据 | 'table' int [1:42, 1:22] 
```discoveries``` | Yearly Numbers of Important Discoveries<br />每年重要发现的数量 | Time-Series [1:100] from 1860 to 1959: <br />num 0  ~  12  !  3.1"
```esoph``` | Smoking, Alcohol and (O)esophageal Cancer<br />吸烟，酒精和（O）食道癌 | 'data.frame':   88 obs. of  5 variables:<br />$ agegp : Ord.factor 6<br />$ alcgp : Ord.factor 4<br />$ tobgp : Ord.factor 4<br />$ ncases : num 0 ~ 17 ! 2.27<br />$ ncontrols : num 1 ~ 60 ! 11.08
```euro``` | Conversion Rates of Euro Currencies<br />欧元货币转换率 | num [1:11]
```euro.cross (euro)``` | Conversion Rates of Euro Currencies<br />欧元货币转换率 | num [1:11, 1:11] 
```eurodist``` | Distances Between European Cities and Between US Cities<br /> | 'dist' num [1:210] 158  ~  4532  !  1505.15
```faithful``` | Old Faithful Geyser Data<br />老忠实的间歇泉数据 | 'data.frame':   272 obs. of  2 variables:<br />$ eruptions : num 1.6 ~ 5.1 ! 3.49<br />$ waiting : num 43 ~ 96 ! 70.9
```fdeaths (UKLungDeaths)``` | Monthly Deaths from Lung Diseases in the UK<br />英国肺病每月死亡 | Time-Series [1:72] from 1974 to 1980: <br />num 330  ~  1141  !  560.68
```freeny``` | Freeny's Revenue Data<br />Freeny的收入数据 | 'data.frame':   39 obs. of  5 variables:<br />$ lag.quarterly.revenue : num 8.79137 ~ 9.77536 ! 9.28<br />$ price.index : num 4.27789 ~ 4.70997 ! 4.5<br />$ income.level : num 5.8211 ~ 6.2003 ! 6.04<br />$ market.potential : num 12.9699 ~ 13.1664 ! 13.07
```freeny.x (freeny)``` | Freeny's Revenue Data<br />Freeny的收入数据 | num [1:39, 1:4] Time-Series [1:39] from 1962 to 1972:
```freeny.y (freeny)``` | Freeny's Revenue Data<br />Freeny的收入数据 | Time-Series [1:39] from 1962 to 1972: 
```infert``` | Infertility after Spontaneous and Induced Abortion<br />自然流产和人工流产后的不孕症 | 'data.frame':   248 obs. of  8 variables:<br />$ education : Factor 3<br />$ age : num 21 ~ 44 ! 31.5<br />$ parity : num 1 ~ 6 ! 2.09<br />$ induced : num 0 ~ 2 ! 0.57<br />$ case : num 0 ~ 1 ! 0.33<br />$ spontaneous : num 0 ~ 2 ! 0.58<br />$ stratum : int 1 ~ 83 ! 41.87<br />$ pooled.stratum : num 1 ~ 63 ! 33.58
```iris``` | Edgar Anderson's Iris Data<br />埃德加安德森的虹膜数据 | 'data.frame':   150 obs. of  5 variables:<br />$ Sepal.Length : num 4.3 ~ 7.9 ! 5.84<br />$ Sepal.Width : num 2 ~ 4.4 ! 3.06<br />$ Petal.Length : num 1 ~ 6.9 ! 3.76<br />$ Petal.Width : num 0.1 ~ 2.5 ! 1.2<br />$ Species : Factor 3
```iris3``` | Edgar Anderson's Iris Data<br />埃德加安德森的虹膜数据 | num [1:50, 1:4, 1:3]
```islands``` | Areas of the World's Major Landmasses<br />世界主要陆地区域 | num [1:48]
```ldeaths (UKLungDeaths)``` | Monthly Deaths from Lung Diseases in the UK<br />英国肺部疾病每月死亡人数 | Time-Series [1:72] from 1974 to 1980:
```lh``` | Luteinizing Hormone in Blood Samples<br />血液中的促黄体激素 | Time-Series [1:48] from 1 to 48:
```longley``` | Longley's Economic Regression Data<br />朗利的经济回归数据 | 'data.frame':   16 obs. of  7 variables:<br />$ GNP.deflator : num 83 ~ 116.9 ! 101.68<br />$ GNP : num 234.289 ~ 554.894 ! 387.7<br />$ Unemployed : num 187 ~ 480.6 ! 319.33<br />$ Armed.Forces : num 145.6 ~ 359.4 ! 260.67<br />$ Population : num 107.608 ~ 130.081 ! 117.42<br />$ Year : int 1947 ~ 1962 ! 1954.5<br />$ Employed : num 60.171 ~ 70.551 ! 65.32
```lynx``` | Annual Canadian Lynx trappings 1821-1934<br />年度加拿大山猫队服饰1821-1934 | Time-Series [1:114] from 1821 to 1934:
```mdeaths (UKLungDeaths)``` | Monthly Deaths from Lung Diseases in the UK<br />英国肺部疾病每月死亡人数 |  Time-Series [1:72] from 1974 to 1980: 
```morley``` | Michelson Speed of Light Data<br />迈克尔逊光速数据 | 'data.frame':   100 obs. of  3 variables:<br />$ Expt : int 1 ~ 5 ! 3<br />$ Run : int 1 ~ 20 ! 10.5<br />$ Speed : int 620 ~ 1070 ! 852.4
```mtcars``` | Motor Trend Car Road Tests<br />汽车趋势汽车道路测试 | 'data.frame':   32 obs. of  11 variables:<br />$ mpg : num 10.4 ~ 33.9 ! 20.09<br />$ cyl : num 4 ~ 8 ! 6.19<br />$ disp : num 71.1 ~ 472 ! 230.72<br />$ hp : num 52 ~ 335 ! 146.69<br />$ drat : num 2.76 ~ 4.93 ! 3.6<br />$ wt : num 1.513 ~ 5.424 ! 3.22<br />$ qsec : num 14.5 ~ 22.9 ! 17.85<br />$ vs : num 0 ~ 1 ! 0.44<br />$ am : num 0 ~ 1 ! 0.41<br />$ gear : num 3 ~ 5 ! 3.69<br />$ carb : num 1 ~ 8 ! 2.81
```nhtemp``` | Average Yearly Temperatures in New Haven<br />纽黑文的年平均气温 | Time-Series [1:60] from 1912 to 1971:
```nottem``` | Average Monthly Temperatures at Nottingham, 1920-1939<br />诺丁汉平均每月气温，1920-1939 | Time-Series [1:240] from 1920 to 1940:
```npk``` | Classical N, P, K Factorial Experiment<br />经典N，P，K因子实验 | 'data.frame':   24 obs. of  5 variables:<br />$ block : Factor 6<br />$ N : Factor 2<br />$ P : Factor 2<br />$ K : Factor 2<br />$ yield : num 44.2 ~ 69.5 ! 54.88
```occupationalStatus``` | Occupational Status of Fathers and their Sons<br />父亲及其子女的职业地位 |  'table' int [1:8, 1:8]
```precip``` | Annual Precipitation in US Cities<br />美国城市的年降水量 | num [1:70]
```presidents``` | Quarterly Approval Ratings of US Presidents<br />美国总统的季度批准评级 | Time-Series [1:120] from 1945 to 1975:
```pressure``` | Vapor Pressure of Mercury as a Function of Temperature<br />汞的蒸气压与温度的关系 | 'data.frame':   19 obs. of  2 variables:<br />$ temperature : num 0 ~ 360 ! 180<br />$ pressure : num 2e-04 ~ 806 ! 124.34
```quakes``` | Locations of Earthquakes off Fiji<br />斐济地震的地点 | 'data.frame':   1000 obs. of  5 variables:<br />$ lat : num -38.59 ~ -10.72 ! -20.64<br />$ long : num 165.67 ~ 188.13 ! 179.46<br />$ depth : int 40 ~ 680 ! 311.37<br />$ mag : num 4 ~ 6.4 ! 4.62<br />$ stations : int 10 ~ 132 ! 33.42
```randu``` | Random Numbers from Congruential Generator RANDU<br />来自同余发电机RANDU的随机数 | 'data.frame':   400 obs. of  3 variables:<br />$ x : num 3.1e-05 ~ 0.99985 ! 0.53<br />$ y : num 0.000183 ~ 0.999939 ! 0.49<br />$ z : num 2.9e-05 ~ 0.998243 ! 0.48
```rivers``` | Lengths of Major North American Rivers<br />北美主要河流的长度 | num [1:141]
```rock``` | Measurements on Petroleum Rock Samples<br />对石油岩石样品的测量 | 'data.frame':   48 obs. of  4 variables:<br />$ area : int 1016 ~ 12212 ! 7187.73<br />$ peri : num 308.642 ~ 4864.22 ! 2682.21<br />$ shape : num 0.0903296 ~ 0.464125 ! 0.22<br />$ perm : num 6.3 ~ 1300 ! 415.45
```sleep``` | Student's Sleep Data<br />学生的睡眠数据 | 'data.frame':   20 obs. of  3 variables:<br />$ extra : num -1.6 ~ 5.5 ! 1.54<br />$ group : Factor 2<br />$ ID : Factor 10
```stack.loss (stackloss)``` | Brownlee's Stack Loss Plant Data<br />布朗利的堆栈损失工厂数据 | num [1:21]
```stack.x (stackloss)``` | Brownlee's Stack Loss Plant Data<br />布朗利的堆栈损失工厂数据 | num [1:21, 1:3]
```stackloss``` | Brownlee's Stack Loss Plant Data<br />布朗利的堆栈损失工厂数据 | 'data.frame':   21 obs. of  4 variables:<br />$ Air.Flow : num 50 ~ 80 ! 60.43<br />$ Water.Temp : num 17 ~ 27 ! 21.1<br />$ Acid.Conc. : num 72 ~ 93 ! 86.29<br />$ stack.loss : num 7 ~ 42 ! 17.52
```state.abb (state)``` | US State Facts and Figures<br />美国州事实和数字 | chr [1:50]
```state.area (state)``` | US State Facts and Figures<br />美国州事实和数字 | num [1:50]
```state.center (state)``` | US State Facts and Figures<br />美国州事实和数字 | List of 2<br />$ x : num -127.25 ~ -68.9801 ! -92.46<br />$ y : num 27.8744 ~ 49.25 ! 39.41
```state.division (state)``` | US State Facts and Figures<br />美国州事实和数字 | Factor w/ 9 levels
```state.name (state)``` | US State Facts and Figures<br />美国州事实和数字 | chr [1:50]
```state.region (state)``` | US State Facts and Figures<br />美国州事实和数字 | Factor w/ 4 levels
```state.x77 (state)``` | US State Facts and Figures<br />美国州事实和数字 | num [1:50, 1:8]
```sunspot.month``` | Monthly Sunspot Data, from 1749 to "Present"<br />每月太阳黑子数据，从1749年到“现在” | Time-Series [1:3177] from 1749 to 2014:
```sunspot.year``` | Yearly Sunspot Data, 1700-1988<br />每年太阳黑子数据，1700-1988 | Time-Series [1:289] from 1700 to 1988: 
```sunspots``` | Monthly Sunspot Numbers, 1749-1983<br />每月太阳黑子数，1749-1983 | Time-Series [1:2820] from 1749 to 1984: 
```swiss``` | Swiss Fertility and Socioeconomic Indicators (1888) Data<br />瑞士生育率和社会经济指标（1888年）数据 | 'data.frame':   47 obs. of  6 variables:<br />$ Fertility : num 35 ~ 92.5 ! 70.14<br />$ Agriculture : num 1.2 ~ 89.7 ! 50.66<br />$ Examination : int 3 ~ 37 ! 16.49<br />$ Education : int 1 ~ 53 ! 10.98<br />$ Catholic : num 2.15 ~ 100 ! 41.14<br />$ Infant.Mortality : num 10.8 ~ 26.6 ! 19.94
```treering``` | Yearly Treering Data, -6000-1979<br />年度处理数据，-6000-1979 | Time-Series [1:7980] from -6000 to 1979: 
```trees``` | Girth, Height and Volume for Black Cherry Trees<br />黑樱桃树的周长，高度和体积 | 'data.frame':   31 obs. of  3 variables:<br />$ Girth : num 8.3 ~ 20.6 ! 13.25<br />$ Height : num 63 ~ 87 ! 76<br />$ Volume : num 10.2 ~ 77 ! 30.17
```uspop``` | Populations Recorded by the US Census<br />美国人口普查记录的人口 | Time-Series [1:19] from 1790 to 1970: 
```volcano``` | Topographic Information on Auckland's Maunga Whau Volcano<br />奥克兰Maunga Whau火山的地形信息 | num [1:87, 1:61]
```warpbreaks``` | The Number of Breaks in Yarn during Weaving<br />编织过程中纱线断裂次数 | 'data.frame':   54 obs. of  3 variables:<br />$ breaks : num 10 ~ 70 ! 28.15<br />$ wool : Factor 2<br />$ tension : Factor 3
```women``` | Average Heights and Weights for American Women<br />美国女性的平均身高和体重 | 'data.frame':   15 obs. of  2 variables:<br />$ height : num 58 ~ 72 ! 65<br />$ weight : num 115 ~ 164 ! 136.73



[首页](./README.md)

