### Task 6 - R Functions ###

#1. Write a function that calculates the ratio of the mean and the median of a given
#   vector.

# Define a vector
vc <- c(3,45,2,567,34,98,50,12,333)

# Create function
m_ratio <- function(x) {
  mean(x) / median(x)
}

m_ratio(vc)
# 2.824691

#2. Write a function that ignores the lowest and the highest value from a given vector and
#   calculate the mean.
i_mean <- function(x) {
  x <- sort(x)
  mean(x[-c(1, length(x))])
}

i_mean(vc)
# 82.14286

#3. Read about piping from here:https://r4ds.had.co.nz/pipes.html#pipes (you don’t have
#to learn everything, a basic understanding of the usage is enough). Write a short
#(max. 300 characters, no spaces) explanation of why, how, and when not to use
#pipes.

message("If your pipes are longer than ten steps, it will make debugging easier.
If you have multiple inputs and outputs, two or more objects being combined together.
If you want a directed graph with a complex dependency structure, pipes are linear and easily tield confusing code.
        ")

#4. Familiarize yourself with the apply-family of functions (apply, lapply, sapply etc.)
#http://uc-r.github.io/apply_family
#Write a short explanation (max. 300 characters, no spaces) of why they could be
#useful in your work.

message("Apply family can work as loops with vectorized functions, but no need to explicitly
create loops. This is simple and convienent to calculate mean, median etc by categories.
        ")

### End of the program ###
