# CausalInvestDataEnhanced

Simulated datasets and utilities for causal inference in investment management.

## Quickstart

```r
# install.packages("remotes")
remotes::install_github("edzai/CausalInvestDataEnhanced")

library(CausalInvestData)
data(fund_performance)

if (requireNamespace("MatchIt", quietly = TRUE)) {
  library(MatchIt)
  m.out <- matchit(treatment ~ alpha + beta + market_return, data = fund_performance)
  summary(m.out)
  plot(m.out, type = "jitter")
}
```

### Export datasets to CSV

```r
source(system.file("extdata", "export_datasets.R", package = "CausalInvestData"))
```
