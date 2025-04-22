
# Homework Assignment: Fundamentals of Statistical Inference in Data Science

---

## 1. How do you assess the statistical significance of an insight?

Statistical significance refers to the likelihood that an observed result or relationship in data did not occur by random chance. To assess statistical significance, we typically perform a hypothesis test, where:

- The **null hypothesis (H₀)** assumes there is no effect or difference.
- The **alternative hypothesis (H₁)** suggests that there is an effect or difference.

A **p-value** is calculated from the test. It represents the probability of observing the given result, or something more extreme, assuming the null hypothesis is true. If the p-value is **less than a pre-defined threshold** (commonly α = 0.05), we reject the null hypothesis and consider the result statistically significant. Common tests used include the **t-test**, **chi-square test**, and **ANOVA**.

---

## 2. What is the Central Limit Theorem? Explain it. Why is it important?

The **Central Limit Theorem (CLT)** states that when independent random samples are drawn from any population with a finite mean and variance, the **sampling distribution of the sample mean will approximate a normal distribution** as the sample size increases, typically n > 30.

This is true **regardless of the original population’s distribution** (normal or not).

**Importance of CLT:**
- Allows us to apply **parametric statistical methods** (e.g., confidence intervals, hypothesis testing) even when the population distribution is unknown.
- Justifies the use of the **normal distribution** for inferential statistics involving sample means.
- Enables the estimation of population parameters from sample data with known levels of confidence.

---

## 3. What is statistical power?

**Statistical power** is the probability of correctly rejecting the null hypothesis when it is false (i.e., detecting a true effect). It is mathematically defined as:

> Power = 1 - β

Where **β** is the probability of making a **Type II error** (failing to reject a false null hypothesis).

**Higher power (typically ≥ 0.80)** means a lower risk of missing true effects. Power is influenced by:
- **Sample size**: Larger samples yield higher power.
- **Effect size**: Stronger effects are easier to detect.
- **Significance level (α)**: Lower alpha decreases power.
- **Variance in data**: Lower variance increases power.

---

## 4. How do you control for biases?

Biases can distort data analysis and lead to invalid conclusions. Techniques to control for biases include:

- **Randomization**: Randomly assign subjects to groups to prevent selection bias.
- **Blinding**: Use single or double-blind study designs to reduce observer or participant bias.
- **Standardization**: Ensure consistent data collection methods and conditions.
- **Matching**: Match individuals on key characteristics to eliminate confounding.
- **Statistical controls**: Use techniques like regression, stratification, or ANCOVA to adjust for potential biases.

These methods help ensure that observed results reflect true effects rather than systematic errors.

---

## 5. What are confounding variables?

A **confounding variable** is an external variable that influences both the **independent variable** and the **dependent variable**, potentially leading to a **false association** between them.

**Example**: When analyzing whether exercise reduces heart disease, **age** could be a confounder, since older individuals might exercise less and also have a higher risk of heart disease.

To address confounding:
- Use **randomization** in experimental studies.
- Apply **statistical controls** in observational studies.
- Include known confounders as covariates in regression models.

---

## 6. What is A/B testing?

**A/B testing** is a controlled experiment used to compare two versions (A and B) of a variable to determine which one performs better with respect to a specific outcome (e.g., click rate, conversion).

**Steps:**
1. Split the sample population into two random groups.
2. Show version A to one group and version B to the other.
3. Measure the outcome metric.
4. Perform statistical tests (e.g., t-test or chi-square) to determine if the difference in outcomes is statistically significant.

A/B testing is widely used in product development, website optimization, marketing, and UX research.

---

## 7. What are confidence intervals?

A **confidence interval (CI)** is a range of values that likely contains the true value of a population parameter (e.g., mean, proportion) with a certain level of confidence—commonly 95%.

**Example**: A 95% CI for a mean might be [12.1, 14.3], meaning we are 95% confident the true mean lies in that range.

Key points:
- **Wider intervals** indicate more uncertainty.
- **Narrower intervals** result from larger sample sizes or lower variance.
- They give more information than a single point estimate by expressing uncertainty in the measurement.
