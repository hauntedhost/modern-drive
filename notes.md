## Preamble

### Installation (OSX):
- install xquartz https://www.xquartz.org
- install r for mac https://cran.rstudio.com/bin/macosx
- install rstudio https://www.rstudio.com
- `$ Rscript install-needed-pkgs.R`
- go make ☕

## Introduction

Data science pipeline:
1. Import
2. Tidy
3. Understand
4. Communicate

![](images/data-science-pipeline.png)

> There's a reason so many fields require a statistics course. Scientific knowledge grows through an understanding of statistical significance and data analysis.

### Computational reproducibility

> "The most important tool is the mindset, when starting, that the end product will be reproducible." – Keith Baggerly

## "Tidy" data

Every **value** belongs to a **variable** and an **observation**:
  1. A **variable** contains all values that measure the same attribute (height, temperature, duration) across units
  2. An **observation** contains all values measured on the same unit (like a person, or a day, or a race) across attributes

> Tidy data is a standard way of mapping the meaning of a dataset to its structure. A dataset is messy or tidy depending on how rows, columns and tables are matched up with observations, variables and types. In tidy data:
>
>Each variable forms a column.
>Each observation forms a row.
>Each type of observational unit forms a table.

![](images/variables-observations-values.png)

### nycflights13

```R
library(nycflights13)
data("flights")
View(flights)

library(tibble)
glimpse(flights)
```

- What does any ONE row in this dataset refer to? (**observational unit**)
- What are the variables in this dataset?
  - How many variables? `glimpse(flights)`
  - What **types** of variables? (int, dbl, chr)
  - Which variables are **categorical** vs **quantitative**?
  - How many rows? `nrow(flights)`
