# R 语言内置数据集指南

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
```ChickWeight``` | Weight versus age of chicks on different diets<br />雏鸡体重与不同饮食雏鸡年龄的关系 | 'data.frame':      578 obs. of  4 variables:<br />$ weight : num 35~373!121.82"<br />$ Time : num 0~21!10.72<br />$ Chick : Ord.factor 50<br />$ Diet : Factor 4
```DNase``` | Elisa assay of DNase<br />酶联免疫吸附试验 | 'data.frame':      176 obs. of  3 variables:<br />$ Run : Ord.factor 11<br />$ conc : num 0.04882812~12.5!3.11<br />$ density : num 0.011~2.003!0.72
```EuStockMarkets``` | Daily Closing Prices of Major European Stock Indices, 1991-1998<br />欧洲股票市场1991-1998年主要欧洲股票指数的“每日收盘价” |  Time-Series [1:1860, 1:4] from 1991 to 1999:<br />$ DAX : num 1402.34 ~ 6186.09 ! 2530.66<br />$ SMI : num 1587.4 ~ 8412 ! 3376.22<br />$ CAC : num 1611 ~ 4388.5 ! 2227.83<br />$ FTSE : num 2281 ~ 6179 ! 3565.64
```Formaldehyde``` | Determination of Formaldehyde<br />甲醛的测定 | 'data.frame':   6 obs. of  2 variables:<br />$ carb : num 0.1 ~ 0.9 ! 0.52<br />$ optden : num 0.086 ~ 0.782 ! 0.46
```HairEyeColor``` | Hair and Eye Color of Statistics Students<br />统计生发眼颜色``发眼颜色 |  'table' num [1:4, 1:4, 1:2]
```Harman23.cor``` | Harman Example 2.3<br /> | List of 3<br />$ cov   : num [1:8, 1:8]<br />$ center: num [1:8]<br />$ n.obs : num 
```Harman74.cor``` | Harman Example 7.4<br /> | List of 3<br />$ cov   : num [1:24, 1:24]<br />$ center: num [1:24]<br />$ n.obs : num 
```Indometh``` | Pharmacokinetics of Indomethacin<br />吲哚美辛的“药代动力学” | 'data.frame':      66 obs. of  3 variables:<br />$ Subject : Ord.factor 6<br />$ time : num 0.25 ~ 8 ! 2.89<br />$ conc : num 0.05 ~ 2.72 ! 0.59
```InsectSprays``` | Effectiveness of Insect Sprays<br />昆虫喷雾剂的效果 | 'data.frame':   72 obs. of  2 variables:<br />$ count : num 0 ~ 26 ! 9.5$ spray : Factor 6
```JohnsonJohnson``` | Quarterly Earnings per Johnson & Johnson Share<br />强生股票季度收益 | Time-Series [1:84] from 1960 to 1981: <br />double 0.44  ~  16.2  !  4.8
```LakeHuron``` | Level of Lake Huron 1875-1972<br />休伦湖水位1875-1972 |  Time-Series [1:98] from 1875 to 1972:<br />double 575.96  ~  581.86  !  579
```LifeCycleSavings``` | Intercountry Life-Cycle Savings Data<br /> | 'data.frame':   50 obs. of  5 variables:<br />$ sr : num 0.6 ~ 21.1 ! 9.671<br />$ pop15 : num 21.44 ~ 47.64 ! 35.0896<br />$ pop75 : num 0.56 ~ 4.7 ! 2.293<br />$ dpi : num 88.94 ~ 4001.89 ! 1106.7584<br />$ ddpi : num 0.22 ~ 16.71 ! 3.7576
```Loblolly``` | Growth of Loblolly pine trees<br />火炬松生长 | 
```Nile``` | Flow of the River Nile<br /> | 
```Orange``` | Growth of Orange Trees<br /> | 
```OrchardSprays``` | Potency of Orchard Sprays<br /> | 
```PlantGrowth``` | Results from an Experiment on Plant Growth<br /> | 
```Puromycin``` | Reaction Velocity of an Enzymatic Reaction<br /> | 
```Seatbelts``` | Road Casualties in Great Britain 1969-84<br /> | 
```Theoph``` | Pharmacokinetics of Theophylline<br /> | 
```Titanic``` | Survival of passengers on the Titanic<br /> | 
```ToothGrowth``` | The Effect of Vitamin C on Tooth Growth in Guinea Pigs<br /> | 
```UCBAdmissions``` | Student Admissions at UC Berkeley<br /> | 
```UKDriverDeaths``` | Road Casualties in Great Britain 1969-84<br /> | 
```UKgas``` | UK Quarterly Gas Consumption<br /> | 
```USAccDeaths``` | Accidental Deaths in the US 1973-1978<br /> | 
```USArrests``` | Violent Crime Rates by US State<br /> | 
```USJudgeRatings``` | Lawyers' Ratings of State Judges in the US Superior Court<br /> | 
```USPersonalExpenditure``` | Personal Expenditure Data<br /> | 
```UScitiesD``` | Distances Between European Cities and Between US Cities<br /> | 
```VADeaths``` | Death Rates in Virginia (1940)<br /> | 
```WWWusage``` | Internet Usage per Minute<br /> | 
```WorldPhones``` | The World's Telephones<br /> | 
```ability.cov``` | Ability and Intelligence Tests<br /> | 
```airmiles``` | Passenger Miles on Commercial US Airlines, 1937-1960<br /> | 
```airquality``` | New York Air Quality Measurements<br /> | 
```anscombe``` | Anscombe's Quartet of 'Identical' Simple Linear Regressions<br /> | 
```attenu``` | The Joyner-Boore Attenuation Data<br /> | 
```attitude``` | The Chatterjee-Price Attitude Data<br /> | 
```austres``` | Quarterly Time Series of the Number of Australian Residents<br /> | 
```beaver1 (beavers)``` | Body Temperature Series of Two Beavers<br /> | 
```beaver2 (beavers)``` | Body Temperature Series of Two Beavers<br /> | 
```cars``` | Speed and Stopping Distances of Cars<br /> | 
```chickwts``` | Chicken Weights by Feed Type<br /> | 
```co2``` | Mauna Loa Atmospheric CO2 Concentration<br /> | 
```crimtab``` | Student's 3000 Criminals Data<br /> | 
```discoveries``` | Yearly Numbers of Important Discoveries<br /> | 
```esoph``` | Smoking, Alcohol and (O)esophageal Cancer<br /> | 
```euro``` | Conversion Rates of Euro Currencies<br /> | 
```euro.cross (euro)``` | Conversion Rates of Euro Currencies<br /> | 
```eurodist``` | Distances Between European Cities and Between US Cities<br /> | 
```faithful``` | Old Faithful Geyser Data<br /> | 
```fdeaths (UKLungDeaths)``` | Monthly Deaths from Lung Diseases in the UK<br /> | 
```freeny``` | Freeny's Revenue Data<br /> | 
```freeny.x (freeny)``` | Freeny's Revenue Data<br /> | 
```freeny.y (freeny)``` | Freeny's Revenue Data<br /> | 
```infert``` | Infertility after Spontaneous and Induced Abortion<br /> | 
```iris``` | Edgar Anderson's Iris Data<br /> | 
```iris3``` | Edgar Anderson's Iris Data<br /> | 
```islands``` | Areas of the World's Major Landmasses<br /> | 
```ldeaths (UKLungDeaths)``` | Monthly Deaths from Lung Diseases in the UK<br /> | 
```lh``` | Luteinizing Hormone in Blood Samples<br /> | 
```longley``` | Longley's Economic Regression Data<br /> | 
```lynx``` | Annual Canadian Lynx trappings 1821-1934<br /> | 
```mdeaths (UKLungDeaths)``` | Monthly Deaths from Lung Diseases in the UK<br /> | 
```morley``` | Michelson Speed of Light Data<br /> | 
```mtcars``` | Motor Trend Car Road Tests<br /> | 
```nhtemp``` | Average Yearly Temperatures in New Haven<br /> | 
```nottem``` | Average Monthly Temperatures at Nottingham, 1920-1939<br /> | 
```npk``` | Classical N, P, K Factorial Experiment<br /> | 
```occupationalStatus``` | Occupational Status of Fathers and their Sons<br /> | 
```precip``` | Annual Precipitation in US Cities<br /> | 
```presidents``` | Quarterly Approval Ratings of US Presidents<br /> | 
```pressure``` | Vapor Pressure of Mercury as a Function of Temperature<br /> | 
```quakes``` | Locations of Earthquakes off Fiji<br /> | 
```randu``` | Random Numbers from Congruential Generator RANDU<br /> | 
```rivers``` | Lengths of Major North American Rivers<br /> | 
```rock``` | Measurements on Petroleum Rock Samples<br /> | 
```sleep``` | Student's Sleep Data<br /> | 
```stack.loss (stackloss)``` | Brownlee's Stack Loss Plant Data<br /> | 
```stack.x (stackloss)``` | Brownlee's Stack Loss Plant Data<br /> | 
```stackloss``` | Brownlee's Stack Loss Plant Data<br /> | 
```state.abb (state)``` | US State Facts and Figures<br /> | 
```state.area (state)``` | US State Facts and Figures<br /> | 
```state.center (state)``` | US State Facts and Figures<br /> | 
```state.division (state)``` | US State Facts and Figures<br /> | 
```state.name (state)``` | US State Facts and Figures<br /> | 
```state.region (state)``` | US State Facts and Figures<br /> | 
```state.x77 (state)``` | US State Facts and Figures<br /> | 
```sunspot.month``` | Monthly Sunspot Data, from 1749 to "Present"<br /> | 
```sunspot.year``` | Yearly Sunspot Data, 1700-1988<br /> | 
```sunspots``` | Monthly Sunspot Numbers, 1749-1983<br /> | 
```swiss``` | Swiss Fertility and Socioeconomic Indicators (1888) Data<br /> | 
```treering``` | Yearly Treering Data, -6000-1979<br /> | 
```trees``` | Girth, Height and Volume for Black Cherry Trees<br /> | 
```uspop``` | Populations Recorded by the US Census<br /> | 
```volcano``` | Topographic Information on Auckland's Maunga Whau Volcano<br /> | 
```warpbreaks``` | The Number of Breaks in Yarn during Weaving<br /> | 
```women``` | Average Heights and Weights for American Women<br /> | 





