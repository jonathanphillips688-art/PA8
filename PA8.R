# Name: Jonathan Phillips
# Course: COP2073C
# Assignment: Programming Assignment 8
# Date: 11/01/2026

df <- data.frame(
  RecipeA = c(0, 4, 4, 5, 4, 1, 2, 3, 3, 5),
  RecipeB = c(7, 6, 4, 2, 3, 0, 8, 6, 2, 3),
  RecipeC = c(1, 0, 1, 0, NA, 1, 1, NA, 1, 0)
)

newdf <- na.omit(stack(df))

newdf

initial_summary <- summary(newdf)

initial_summary

# Response variable: values (transformation scores)
# Predictor variable: ind (cookie recipe)
# Null hypothesis (H0): All three recipe means are equal.
# Alternative hypothesis (HA): At least one recipe mean differs.

anova_test <- aov(values ~ ind, data = newdf)

anova_summary <- summary(anova_test)

anova_summary

pval <- anova_summary[[1]]$`Pr(>F)`[1]

pval

# Sufficient evidence to reject the null hypothesis.
# Ingredient X may have an effect on the results.