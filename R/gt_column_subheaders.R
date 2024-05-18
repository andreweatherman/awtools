#' @export

gt_column_subheaders <- function(gt_table, ...) {

  subheaders <- list(...)
  all_col_names <- colnames(gt_table[['_data']])

  for (col_name in all_col_names) {

    subtitle_info <- subheaders[[col_name]] %||% list(subtitle = "&nbsp;", heading = col_name)
    subtitle <- subtitle_info$subtitle
    new_header_title <- subtitle_info$heading

    label_html <- htmltools::HTML(glue::glue(
      "<div style='line-height: 1.05; margin-bottom: -2px;'>
    <span style='font-size: 14px; font-weight: bold; color: black;'>{new_header_title}</span>
    <br>
    <span style='font-size: 10px; font-weight: normal; color: #808080;'>{subtitle}</span>
  </div>"
    ))

    gt_table <- gt_table %>%
      cols_label(!!sym(col_name) := label_html)
  }

  gt_table

}
