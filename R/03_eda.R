
# what’s in each dataset --------------------------------------------------

names(meetup)
head(meetup)
skim(meetup)

#' so many variables!
names(twitter)
head(twitter)
skim(twitter)

names(sign_in)
head(sign_in)
skim(sign_in)


# repeat meetup attendees -------------------------------------------------
#' what does "improve" mean?
#' what about retention?
sign_in %>% 
  mutate(Date = as_factor(Date)) %>%   
  group_by(Date) %>% 
  summarise(n = n())

create_report(twitter)
