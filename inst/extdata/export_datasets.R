# Convenience export script to CSV for cross-language use
if (!dir.exists("inst/extdata")) dir.create("inst/extdata", recursive = TRUE, showWarnings = FALSE)

utils::data(list = c("fund_performance","client_behavior","macro_shocks","portfolio_allocations"), package = "CausalInvestData")

utils::write.csv(fund_performance, "inst/extdata/fund_performance.csv", row.names = FALSE)
utils::write.csv(client_behavior, "inst/extdata/client_behavior.csv", row.names = FALSE)
utils::write.csv(macro_shocks, "inst/extdata/macro_shocks.csv", row.names = FALSE)
utils::write.csv(portfolio_allocations, "inst/extdata/portfolio_allocations.csv", row.names = FALSE)
