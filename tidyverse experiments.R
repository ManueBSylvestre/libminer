library(tidyverse)

var_summary <- function(data, var1, var2) {
  data |>
    summarise(
      min_var = min({{ var1 }}),
      max_var = max({{ var2 }})
    )
}

mtcars |>
  group_by(cyl) |>
  var_summary(mpg, disp)




var_summary <- function(data, var1, var2) {
  data |>
    summarise(
      min_var = min(.data[[var1]]),
      max_var = max(.data[[var2]])
    )
}

mtcars |>
  group_by(cyl) |>
  var_summary("mpg", "disp")



#Starwars problem
swfun <- function(data, var_vec){
  data |>
    group_by_at(var_vec) |>
    summarise_by_at(
      min_var = min({{ var1 }}),
      max_var = max({{ var2 }})

    )
}


starwars |>
  group_by(.data$gender) |>
  summarise(mean_ht = mean(.data$height,na.rm=T),
            mean_mass = mean(.data$mass,na.rm=T))




#2nd exercise
height_sum <- function(data, group_var) {
  data |>
    dplyr::group_by({{ group_var }}) |>
    dplyr::summarise(
      n = dplyr::n(),
      mean_height = mean(.data$height)
    )
}


height_sum(starwars, hair_color)


height_sum <- function(data, ...) {
  data |>
    dplyr::group_by(...) |>
    dplyr::summarise(
      n = dplyr::n(),
      mean_height = mean(.data$height)
    )
}

height_sum(starwars, hair_color, eye_color)




#Dynamic column naming with := (comes from rlang)
##if dont have: use_import_from(“rlang”, “:=“)

var_summary <- function(data, var) {
  data |>
    summarise(
      "{{var}}_min" := min({{var}})
    )
}

mtcars |>
  group_by(cyl) |>
  var_summary(mpg)


height_sum2 <- function(data, var) {
  data |>
    summarise(
      "{{var}}_min" := min({{var}},na.rm=T)
    )
}

head(starwars)
height_sum2(data = starwars, var =  birth_year)


#Nick gulland suggested:
starwars_dynamic_summary <- function(...) {
  starwars |>
    summarize(
      across(
        c(...),
        .fns = list(mean = mean, min = min),
        .names = "{.col}_{.fn}"
      )
    )
}


#From andy (his solution):
homework1 <- function(var){
  starwars |>
    summarise("mean_{var}" := mean(.data[[var]], na.rm = T),
              "max_{var}" := max(.data[[var]], na.rm = T),
              count = n())
}

homework1("height")



#
summy <- function(df, group_var, cols) {
df |>
  group_by({{ group_var }}) |>
  summarise(
    across({{ cols }}, .fns = list(min = min, max = max))
  )
}

mtcars |>
  summy(cyl, c(mpg, disp))

mtcars |>
  summy(cyl, starts_with("mp"))


mtcars |>
  summy(cyl, where(is.numeric))
