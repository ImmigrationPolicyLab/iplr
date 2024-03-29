#' Clean text
#'
#' This function cleans text by converting to lowercase, removing punctuation, and removing spaces.
#'
#' @param x A character vector
#'
#' @import dplyr
#'
#' @export
clean_text <- function(x) {

    x %>%
        toupper() %>% # Convert to uppercase
        trimws() %>% # Trim leading and trailing whitespace
        gsub("[[:punct:]]", "", .) %>% # Remove punctuation
        gsub("[[:space:]]", "", .) %>%
        gsub("-", "", .)
}
