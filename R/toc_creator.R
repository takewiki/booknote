#' 在当前目录下创建目录
#'
#' @param path_Names  字符串，向量
#'
#' @return 返回true
#' @export
#'
#' @examples toc_creator(letters)
toc_creater <- function (path_Names){
  lapply(path_Names,dir.create)
  return(TRUE)
}