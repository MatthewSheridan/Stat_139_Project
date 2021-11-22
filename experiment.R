df <- c()
for(i in unique(data1$game_id)) {
  temp <- subset(data1, game_id == i) %>% select(PREDICTORS)
  for(j in c(temp$home_team[1], temp$away_team[1])) {
    c(j, #team name
      sum(is.na(temp$tackled_for_loss[temp$defteam == j] == 1))
    )
  }
}
