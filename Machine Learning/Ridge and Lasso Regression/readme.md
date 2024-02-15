# Doubts asked during thes session:

**1. Why does Ridge Regression give the same MSE as that of Linear Regression (here in this code)?**

There are a couple of resons for this to happen. It may be due to:
1. No overfitting: Ridge regression is typically used to prevent overfitting in linear regression by adding a penalty term to the coefficients. If your dataset is not prone to overfitting or if the linear relationship between the features and the target variable is simple, then the penalty imposed by ridge regression may not have much effect, resulting in similar performance to linear regression.

2. High correlation among features: Ridge regression is particularly useful when dealing with multicollinearity, where predictor variables are highly correlated. If your dataset doesn't exhibit strong multicollinearity, ridge regression may not offer much improvement over linear regression.

3. Small dataset: With a small dataset, the benefits of regularization methods like ridge regression might not be fully realized. In such cases, both linear regression and ridge regression might perform similarly.

**2. Does regularization help in feature selection / dropping?**

Yes, regularization helps in feature selection. L1 (Lasso) regularization tends to set some coefficients to zero, effectively excluding certain features, while L2 (Ridge) regularization penalizes large coefficients, encouraging an even distribution of importance.
