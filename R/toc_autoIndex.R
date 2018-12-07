#' 根据文件目录名称自动进行序号
#'
#' @param data 原始数据
#' @param prefix 前缀，如CH或第一章节
#' @param sep 分隔符，一般使用-
#' @param digits 序号位数，默认为2位
#' @param symbol 补位符号，一般使用'0'
#'
#' @return 返回字符串
#' @export
#'
#' @examples toc_autoIndex(letters);
toc_autoIndex <- function (data=letters,prefix='CH',sep='-',digits=2,symbol='0'){
 auto_num <- seq_along(data);
 auto_str <- as.character(auto_num);
 rep_count <- digits-nchar(auto_str);
 res1 <- lapply(rep_count,function(i){
   res <- rep(symbol,i);
   res <-paste(res,sep="",collapse = '')
 })
 res2 <- unlist(res1);
 res3 <-paste(prefix,res2,auto_str,sep,data,sep="")
 return(res3)
 
}


