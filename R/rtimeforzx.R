#' Time series prediction
#'
#' Predict the number of cases in a given month in the future
#'
#' @param timeseries  the time series data model
#' @param mons month
#'
#' @return  Number of cases in a given month
#' @examples
#' timeforzx(tsa,6)
#'
#'
#'
#'
#'



timeforzx <- function(timeseries,mons) {
  #进行预测
  ycszk <- forecast(timeseries,mons) #预测N个月
}
