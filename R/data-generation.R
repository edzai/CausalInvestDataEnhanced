#' @keywords internal
#' @noRd

set.seed(123)

generate_fund_performance <- function(n = 1000) {
  market_return <- stats::rnorm(n, 0.07, 0.02)
  alpha <- stats::rnorm(n, 0.01, 0.01)
  beta <- stats::rnorm(n, 1, 0.2)
  treatment <- stats::rbinom(n, 1, 0.5)
  ret <- market_return * beta + alpha + 0.005 * treatment + stats::rnorm(n, 0, 0.01)
  data.frame(
    fund_id = seq_len(n),
    market_return = market_return,
    alpha = alpha,
    beta = beta,
    treatment = treatment,
    return = ret
  )
}

generate_client_behavior <- function(n = 2000) {
  age <- round(stats::rnorm(n, 40, 10))
  income <- stats::rlnorm(n, 10, 0.3)
  risk_score <- stats::runif(n, 0, 1)
  treatment <- stats::rbinom(n, 1, 0.4)
  engagement_score <- 0.5 * treatment + 0.3 * risk_score + stats::rnorm(n, 0, 0.2)
  churn <- stats::rbinom(n, 1, stats::plogis(-2 + 3 * engagement_score))
  investment_amount <- income * (0.1 + 0.2 * risk_score)
  data.frame(
    client_id = seq_len(n), age = age, income = income, risk_score = risk_score,
    treatment = treatment, engagement_score = engagement_score, churn = churn,
    investment_amount = investment_amount
  )
}

generate_macro_shocks <- function(periods = 240) {
  date <- seq(as.Date("2005-01-01"), by = "month", length.out = periods)
  gdp_growth <- stats::rnorm(periods, 2, 0.8)
  inflation <- stats::rnorm(periods, 4, 1)
  interest_rate <- stats::rnorm(periods, 6, 1)
  unemployment <- stats::rnorm(periods, 8, 1.5)
  shock_index <- stats::rnorm(periods, 0, 1)
  treatment <- ifelse(abs(shock_index) > 1.5, 1, 0)
  market_return <- 0.1 * gdp_growth - 0.2 * inflation - 0.1 * interest_rate + stats::rnorm(periods, 0, 0.5)
  data.frame(
    date = date, gdp_growth = gdp_growth, inflation = inflation,
    interest_rate = interest_rate, unemployment = unemployment,
    shock_index = shock_index, treatment = treatment, market_return = market_return
  )
}

generate_portfolio_allocations <- function(n = 500) {
  equities <- stats::runif(n, 0.3, 0.8)
  bonds <- stats::runif(n, 0.1, 0.4)
  cash <- stats::runif(n, 0.05, 0.2)
  alternatives <- pmax(0, 1 - equities - bonds - cash)
  treatment <- stats::rbinom(n, 1, 0.5)
  expected_return <- 0.06 * equities + 0.03 * bonds + 0.02 * cash + 0.08 * alternatives
  risk_score <- 0.5 * equities + 0.3 * alternatives + stats::rnorm(n, 0, 0.05)
  actual_return <- expected_return + 0.005 * treatment + stats::rnorm(n, 0, 0.01)
  data.frame(
    investor_id = seq_len(n), equities = equities, bonds = bonds, cash = cash, alternatives = alternatives,
    treatment = treatment, expected_return = expected_return, risk_score = risk_score, actual_return = actual_return
  )
}
