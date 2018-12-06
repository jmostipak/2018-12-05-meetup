#' loading three data sets from the repo for initial wrangling
#' initial question of interest:
#'     How can we improve our meetups?
#'     
#' EOY data requires a fair amount of taming   

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

#' EOY survey data
eoy <- read_csv(here("data", "EOY_survey.csv"))
names(eoy)

eoy %>% 
  select(Timestamp) %>% 
  separate(Timestamp, c("date", "time"), sep = " ") %>% 
  mutate(date = mdy(date),
         time = hms(time))

eoy_01 <- eoy %>% 
  select(Timestamp) %>% 
  mutate(Timestamp = mdy_hms(Timestamp))

head(sign_in)

sign_in %>% 
  mutate(Date = mdy(Date))

#' based on sign-in data the three highest events 2018-10-16 (hacktober with 
#' python group), 2018-09-27 (advancing your DS career), 2018-03-08 (Hadley)
