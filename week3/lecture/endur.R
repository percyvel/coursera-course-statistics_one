#  Statistics One, Lecture 9, example script
# Multiple regression analysis

library(psych)

endur <- read.delim("./supplemental-stats1_ex04.txt")

# Scatterplots
plot(endur$endurance ~ endur$age, main = "Endurance ~ Age", ylab = "Endurance", xlab = "Age")
abline(lm(endur$endurance ~ endur$age), col = "blue")

plot(endur$endurance ~ endur$activeyears, main = "Endurance ~ Active Years", ylab = "Endurance", xlab = "Active Years")
abline(lm(endur$endurance ~ endur$activeyears), col = "blue")

# Regression analysis (unstandardized)
model1 = lm(endur$endurance ~ endur$age)
summary(model1)

model2 = lm(endur$endurance ~ endur$activeyears)
summary(model2)

model3 = lm(endur$endurance ~ endur$age + endur$activeyears)
summary(model3)