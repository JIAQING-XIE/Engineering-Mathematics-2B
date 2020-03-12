
vx <- 0.5; #parameter setting
vy <- 0.2; 
delta_t <- 0.0001;
sigma <- 1;
xdis <- sigma*sqrt(delta_t)*rnorm(99, 0 ,1) + delta_t*vx ; # x coordinate
ydis <- sigma*sqrt(delta_t)*rnorm(99, 0 ,1) + delta_t*vy ; # y coordinate
xdis = cumsum(xdis);# sum the value in the array before i.
ydis = cumsum(ydis);
xdims <- append(xdis,c(0),after=0); # make sure that the start point is (0,0)
ydims <- append(ydis,c(0),after=0);
plot(xdims, ydims, type="l", main =" Brownian Motion in Two Dimension", xlab="x coordinate", ylab = "y coordinate"); # make a 2-dimensional plot.
