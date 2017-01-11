# Thsi functions take the ID column (customer ID, a transaction etc) and returns which columns in the
# data frame doesn't change for that ID

chk_unq_col = function(id_col, id_val, data){
  dat = data[data[[id_col]] == id_val, ]
  col_lst = sapply(names(dat), 
                   FUN = function(x) if (length(unique(dat[[x]])) == 1) x else NA)
  return(unname(col_lst[!is.na(col_lst)]))
}

