#' Plot donation counts by sector
#'
#' @param ... Arguments passed to [`count_donations()`]
#'
#' @return a ggplot
#' @export
#'
#' @examples
#'
#' plot_donations()
#'
plot_donations <- function(...) {
  x <- count_donations(...)

  ggplot2::ggplot(x, ggplot2::aes(
    forcats::fct_reorder(.data$sector, .data$donations),
    .data$donations
  )) +
    ggplot2::geom_col() +
    ggplot2::coord_flip() +
    ggplot2::xlab("sector") +
    theme_avalanche_v()
}

#' Plot resident counts by sector
#'
#' @param ... Arguments passed to [`get_resident_data()`]
#'
#' @return a ggplot
#' @export
#'
#' @examples
#'
#' plot_resident_counts()
#'
plot_resident_counts <- function(...) {
  x <- get_resident_data(...)

  ggplot2::ggplot(x, ggplot2::aes(
    forcats::fct_reorder(.data$sector, .data$residents),
    .data$residents
  )) +
    ggplot2::geom_col() +
    ggplot2::coord_flip() +
    ggplot2::xlab("sector") +
    theme_avalanche_v()
}
