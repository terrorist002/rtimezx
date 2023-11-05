#' Time series analysis data preparation
#'
#' The data of infectious disease report card were preprocessed,
#' and then the time series data model was made.
#'
#' @param infect Infectious disease report card data.
#' @param years Starting year.
#' @param months Starting month.
#'
#' @return  The time series data model
#' @examples
#' timezx(data,2012,1)
#'
#'
#' @importFrom tidyr dplyr forecast tseries



timezx <- function(infect,years,months) {
  library(tidyr)
  library(dplyr)
  infect <- infect %>% filter(审核状态 != "已删除卡")  #去除删除卡

  #拆分日期
  timedate <- infect %>%
    separate(发病日期, into = c("year", "mon" ,"day"), sep = "/") %>% select( year, mon ,day)
  szknybk <- xtabs(~ mon+ year,data=timedate)  #不同月份每年的报卡 四格表

  #时间序列
  colnames(szknybk) <- NULL  #去除列变量名
  rownames(szknybk) <- NULL  #去除行变量名
  szknybk2 <- c(szknybk)
  library(forecast) #载入所需包
  library(tseries) #载入所需包
  szknybk2 <- ts(szknybk2,frequency = 12,start = c(years, months))  #转换为是时间序列格式
  szktimeseries <- auto.arima(szknybk2,seasonal = TRUE, trace = TRUE)
  return(szktimeseries)
}
