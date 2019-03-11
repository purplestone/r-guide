
library(grid);
mgPoint = function(dat,x,y,group,fun=F) {
	tryCatch({x;}, error=function(e){x <<- (strsplit(e$message, "'")[[1]][2]);});
	tryCatch({y;}, error=function(e){y <<- (strsplit(e$message, "'")[[1]][2]);});

	
	if(!fun) {
		fun = function(x,y,k){
			ggplot(dat, aes(x=dat[,x],y=dat[,y],color=dat[,k])) + geom_point(size=1, alpha=0.7) + labs(colour = k) + xlab(x) + ylab(y);
		}
	}
	
	
	
	multiplot(plotlist=lapply(group, function(e){fun(x,y,e)}), cols=ceiling(sqrt(length(group))))
}

multiplot = function(..., plotlist=NULL, file, cols=0, layout=NULL){
	plots<-c(list(...), plotlist)
	# str(plotlist)
	# return(3)
	numPlots=length(plots)
	if(!cols){
		cols = ceiling(sqrt(numPlots));
	}
	if(is.null(layout)){
		layout<-matrix(seq(1, cols*ceiling(numPlots/cols)),ncol=cols, nrow=ceiling(numPlots/cols))
	}
	if(numPlots==1){
		print(plots[[1]])
	} else {
		grid.newpage()
		pushViewport(viewport(layout=grid.layout(nrow(layout), ncol(layout))))
		for(i in 1:numPlots){
			matchidx<-as.data.frame(which(layout==i, arr.ind=TRUE))
			print(plots[[i]], vp=viewport(layout.pos.row=matchidx$row,layout.pos.col=matchidx$col))
		}
	}
}


# mgPoint(CO2, x=conc, y=uptake, group=c('Plant','Type', 'Treatment'));


