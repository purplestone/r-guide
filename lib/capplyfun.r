library('ggplot2');
capplyfun = function (data, keys, num, countKey, fun) {
	if(num == 0) {
		num = length(keys);
	}
	keyHas = (function(keys, n){
		n = n - 1;
		factors = as.factor(keys);
		kt = as.numeric(factors);
		tt = kt;
		l = length(keys);

		insertf = function (target, src) {
			r = list();
			for (i in target) {
				for (n in src) {
					r = append(r,list(c(i,n)))
				}
			}
			r;
		}

		eq = function (c1, c2) {
			c1 = sort(c1);
			c2 = sort(c2);
			identical(c1, c2);
		}

		if(n == -1) {
			n = length(keys) - 1;
		}
		if(n == 0) {
			r = data.frame(f=factors,l=kt);
		}else{
			for (i in 1:n) {
				tt = insertf(tt, kt);
			}

			r = (data.frame(tt));
			r = apply(r, MARGIN=2, FUN=function(l){
				if(length(unique(l)) == length(l)) {
					c(paste(sort(l),collapse="_"), sort(l))
				}else{
					c("_", sort(1:length(l)))
				}
				
			})
			r = unique(t(r))
			r = r[-1,]
		}
		r
	})(keys,num);

	if(is.na(is.na(nrow(keyHas))&&T)) {
		keyHas = t(matrix(keyHas));
	}
	keyHas

	dat = apply(keyHas, 1, function(l) {
		(function(l){
			factors = as.factor(keys);
			name = levels(factors)[as.numeric(l)];
			(aggregate(x=data[countKey], by=subset(data, select=c(name, 'Survived')), sum))
		})(l[-1])
	});
	dat

	dats = lapply(dat, function(u){
		fun(data, keys, num, countKey, u)
	});

	if(num == 2) {
		lv = apply(as.vector(data.frame(lapply(c('Class','Sex','Age'), function(k){
			lapply(levels(data[,k]), function(s) {
				paste(k, s,  sep=".")
			})
		}))), 1, function(r){r})

		r=(data.frame(matrix(1:length(lv), nrow=1)))
		names(r) = lv
		r = cor(r)
		r
		(function(){
			sapply(dats, function(e){
				apply(e,1,function(l){
					k = paste(colnames(e), l,  sep=".");
					r[k[1],k[2]] <<- l[5];
					r[k[2],k[1]] <<- l[5];
				})
			})
		})();
		r[is.na(r)] = 0;
		r = apply(r, 2, function(e){as.numeric(e)})
		rownames(r) = lv;
		# print(r);
		corrplot(r, "color",addCoef.col = "grey",type="lower",cl.pos='n')
		corrplot(r, "pie",add=T,addCoef.col = "grey", type="upper",diag=F)
	}else{
		dats;
		k = c();
		lapply(dats, function(e){apply(e, 1, function(l){
			cn = paste(l[1:num],collapse="_")
			# print(cn)
			k <<- c(k, cn,l[num+3])
		})})
		k = t(matrix(k, 2, length(k)/2))
		rownames(k) = k[,1]
		k = subset(k, select=2)
		k
		r = k
		r[is.na(k)] = 0;
		r = apply(r, 2, function(e){as.numeric(e)})
		rownames(r) = rownames(k);
		# print(r);
		corrplot((r),"pie",addCoef.col = "grey",cl.pos='n');
	}

}



# o = capplyfun(data.frame(Titanic), c('Class','Sex','Age'), 2, 'Freq', function(data, keys, num, countKey, u){
# 	tt = subset(u, Survived=='Yes')
# 	r = t(apply(tt, 1, function(l){
# 		tId = apply(u, 1, function(l2){
# 			all(l2[c(1:num)]==l[c(1:num)], l2['Survived']=='No') == T;
# 		});
# 		voe = u[tId,][countKey];
# 		r=1-(voe/(as.numeric(l[countKey])+voe));
# 		append(l, v=r[1,1]);
# 	}));
# });o;