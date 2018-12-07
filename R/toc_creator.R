#' 在当前目录下创建目录
#'
#' @param path_Names  字符串，向量
#'
#' @return 返回true
#' @export
#'
#' @examples toc_creator(letters)

toc_creater <- function (path_Names,includeData=TRUE){
  if ( includeData == TRUE){
    add_data <- c('srcData','testData','demoData')
    path_Names <- c(path_Names,add_data)
    #合并上述数据
  }

  lapply(path_Names,dir.create)
  return(TRUE)
}