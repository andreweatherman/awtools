#' @importFrom magrittr %>%
#' @name %>%
#' @rdname pipe
#' @export

crop_gt <- function(file, whitespace) {
  magick::image_read(file) %>%
    magick::image_trim() %>%
    magick::image_border("white", glue::glue('{whitespace}x{whitespace}')) %>%
    magick::image_write(file)
}
