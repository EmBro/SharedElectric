data = read.table(url('https://raw.githubusercontent.com/EmBro/SharedElectric/master/EngazeData.csv'),
               dec = ',', sep = ';', header = T, row.names = 1)

data = as.matrix(data)

library(lattice)

d1 = data[,1:7]
d2 = data[,8:15]
d3 = data[,16:22]
r = cor(data)
levelplot(r,
          scales=list(x=list(rot=90)))

r1 = cor(d1)
levelplot(r1,scales=list(x=list(rot=90)))

r2 = cor(d2)
levelplot(r2,scales=list(x=list(rot=90)))

r3 = cor(d3)
levelplot(r3,scales=list(x=list(rot=90)))

## PLS modeling

x1 = d1[,-2]
y1 = d1[,2]

x2 = d2[,-1]
y2 = d2[,1]

x3 = d3[,-4]
y3 = d3[,4]

m1 = pls(x1,y1, scale = T, cv = 10, coeffs.ci = 'jk')


m2 = pls(x2,y2, scale = T, cv = 10, coeffs.ci = 'jk')


m3 = pls(x3,y3, scale = T, cv = 10, coeffs.ci = 'jk')


plot.new()
plotRMSE(m1, main = 'without scaling')
plotRMSE(m1.1, main = 'with scaling')


library("mdatools", lib.loc="/Library/Frameworks/R.framework/Versions/3.3/Resources/library")

summary(m1)
summary(m2)
summary(m3)


plot.new()
plotRegcoeffs(m1, type = 'h', show.labels = T)

plotRegcoeffs(m2, type = 'h', show.labels = T)

plotRegcoeffs(m3, type = 'h', show.labels = T)
