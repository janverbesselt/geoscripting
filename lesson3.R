## Lesson 3
## Leap year function

is.leapyear <- function(y) {
  if (is.numeric(y)) {
    w <- "1581 is out of the valid range"
    out <- ifelse(y < 1582, out <- warning(w),
           ifelse(y %% 400 == 0, TRUE,
           ifelse(y %% 100 == 0, FALSE, 
           ifelse(y %% 4 == 0, TRUE, FALSE))))
  } else {
    out <- warning("input is not numeric")
  }
  return(out)
}

is.leapyear(2000)
is.leapyear("john")
is.leapyear(1581)