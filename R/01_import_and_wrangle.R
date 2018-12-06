#' loading three data sets from the repo for initial wrangling
#' initial question of interest:
#'     How can we improve our meetups?
#'     
#' no obvious need for wrangling on import    

#' contains meetup data - even date, time, waitlist, rsvp, venue, etc
#' could be relevant when linked with Twitter data
meetup <- read_csv(here("data", "meetup.csv"))

#' contains rladies chicago Twitter data
#' really anything that can be pulled in from Twitter
#' link with meetup data 
twitter <- read_csv(here("data", "rladies_twitter.csv"))

#' sign-in data
#' date, time, whether someone wants to speak, mentor, or be mentee, as well
#' as R level, coffee interest, new to meetup, or repeat
sign_in <- read_csv(here("data", "signin.csv"))
