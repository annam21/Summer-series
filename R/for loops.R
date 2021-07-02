x <- 1:10
x + 3

1:10 + 3
1:10 + 1:10
1:10 + 1:2
1:10 + 1:3
1:2 + 1:10


# Setup for For loops
for(<variable> in <vector>){
  commands
}

print(1:10)

for(i in 1:5){
  print(i^2)
}

# Save an object in a for loop
rslt <- numeric(5)
rslt
rslt <- rep(NA, 5)
rslt
for(t in 1:5){
  rslt[t] <- t^2
}
rslt

# Non-sequential vector
for(x in c(-3, 5, 2, 6, 7)){
  print(x^2)
}

out <- rep(NA, 5)
for(x in c(-3,5,2,6,7)){
  out[x] <- x^2
}


v <- c(-3,5,2,6,7)
for(x in v){
  out[x] <- x^2
}


out <- rep(NA, 5)
for(x in seq_along(v)){
  out[x] <- v[x]^2
}

# Why to use a for loop
# 1. Current value depends on previous value 
out <- rep(NA, 6)
out
out[1] <- 3
for(i in 2:6){
  out[i] <- out[i-1] * 2
}

# 2. >1 dimension
r <- matrix(NA, nrow = 3, ncol = 4)
r[1,3]
# Nested for loops 
for(<variable1> in <vector1>){
  for(<variable2> in <vector2>){
    commands
  }
}

# Simulating detection probability
p <- matrix(NA, nrow = 3, ncol = 4)
for(site in 1:3){
  for(occ in 1:4){
    p[site, occ] <- rbinom(1, 1, 0.2)
  }
}

# Simulating survival, dependent on last time step.
z <- matrix(NA, nrow = 3, ncol = 4)
z[, 1] <- 1
for(ind in 1:3){
  for(occ in 2:4){
    z[ind, occ] <- rbinom(1, 1, 0.8) * z[ind, occ-1]
  }
}









