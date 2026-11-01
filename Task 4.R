### Task 4 - R basic operations ###

# 1. What is the square root of 10?
sqrt(10)
# 3.162278

# 2. What is the logarithm of 32 to the base 2?
log(32, base=2)
# 5

# 3. What is the sum of the numbers from 1 to 1000?
sum(1:1000)
# 500500

# 4. What is the sum of all even numbers from 2 to 1000?
sum(seq(2, 1000, by=2))
# 250500

# 5. How many pairwise comparisons are there for 100 genes?
n <- 100
pw <- n*(n-1)/2
pw
# 4950

# 6. And how many ways to arrange 100 genes in triples?
choose(100, 3)
# 161700

### End of the program ###