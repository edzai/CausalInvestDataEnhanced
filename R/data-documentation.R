#' Simulated Fund Performance Data
#'
#' This dataset simulates mutual-fund performance with a treatment that
#' represents an active allocation strategy. The design supports causal
#' estimation of treatment effects controlling for market risk factors.
#'
#' @format A data frame with 1000 rows and 6 variables:
#' \describe{
#'   \item{fund_id}{Unique identifier}
#'   \item{market_return}{Simulated market return}
#'   \item{alpha}{Excess return independent of market}
#'   \item{beta}{Market sensitivity}
#'   \item{treatment}{Binary indicator for strategy treatment}
#'   \item{return}{Observed return post-treatment}
#' }
"fund_performance"

#' Simulated Client Behaviour Data
#'
#' Micro-behaviour dataset for investment adoption and churn modelling.
#'
#' @format A data frame with 2000 rows and 8 variables:
#' \describe{
#'   \item{client_id}{Unique client identifier}
#'   \item{age}{Client age}
#'   \item{income}{Monthly income}
#'   \item{risk_score}{Investment risk tolerance score}
#'   \item{treatment}{Binary indicator for marketing intervention}
#'   \item{engagement_score}{Post-treatment engagement level}
#'   \item{churn}{Binary churn outcome}
#'   \item{investment_amount}{Portfolio investment amount}
#' }
"client_behavior"

#' Simulated Macroeconomic Shocks Data
#'
#' Monthly macroeconomic time series for stress-testing causal propagation.
#'
#' @format A data frame with 240 rows and 8 variables:
#' \describe{
#'   \item{date}{Monthly observation date}
#'   \item{gdp_growth}{GDP growth rate}
#'   \item{inflation}{Inflation rate}
#'   \item{interest_rate}{Interest rate}
#'   \item{unemployment}{Unemployment rate}
#'   \item{shock_index}{Composite macro shock index}
#'   \item{treatment}{Binary policy shock indicator}
#'   \item{market_return}{Market performance response}
#' }
"macro_shocks"

#' Simulated Portfolio Allocations Data
#'
#' Cross-sectional portfolio composition before/after rebalancing intervention.
#'
#' @format A data frame with 500 rows and 9 variables:
#' \describe{
#'   \item{investor_id}{Unique portfolio owner}
#'   \item{equities}{Proportion of equities}
#'   \item{bonds}{Proportion of bonds}
#'   \item{cash}{Proportion of cash}
#'   \item{alternatives}{Proportion of alternative assets}
#'   \item{treatment}{Binary indicator for rebalancing intervention}
#'   \item{expected_return}{Expected return before intervention}
#'   \item{risk_score}{Portfolio risk rating}
#'   \item{actual_return}{Observed post-intervention return}
#' }
"portfolio_allocations"
