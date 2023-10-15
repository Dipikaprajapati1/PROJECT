create database skysports;
use skysports;

select * from skysports1;
select * from skysports2;


#1. Import both the .CSV files in Dbeaver under the database name Sky_Sports

select * from skysports1;
select * from skysports2;

#2. Write an sql query to show all the UNIQUE team names

select distinct(team) from skysports1;
 
#3. Write an SQL query to show name of team which has rank 1 from group 7

select * from skysports1 where (rank) between "1" and  "7";

#4. Write an sql query to show count of all teams

select distinct(count(team)) from skysports2;

#5. Write an SQL query to show matches_played by each team
select * from skysports1;
select * from skysports2;

select matches_played,team from skysports1;

#6. Write an SQL query to show team, percent of wins with respect to matches_played by each team and
                #  name the resulting column as wins_percent

select team  

##########################################3333


#7. Write an SQL query to show which team has maximum goals_scored and their count

select team, max(goals_scored) from skysports1 group by team ; 

#8. Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team



#9. Write an SQL query to show which team has minimum goals_scored and their count

select  min(goals_scored) from skysports1;

#10. Write an SQL query to show percent of losses with respect to matches_played by each team in ascending order by 
               #losses and name the resulting column as losses_percent

#11. Write an SQL query to show the average goal_difference

select avg(goal_difference) from skysports1;

#12. Write an SQL query to show name of the team where points are 0

select team,points from skysports1 where points='0';

#13. Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded

select * from skysports1;

select * from skysports1 where expected_goal_scored < exp_goal_conceded;

#14. Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5

select * from skysports1 where exp_goal_difference between -0.5 and 0.5;

#15. Write an SQL query to show all data in ascending order by exp_goal_difference_per_90

select * from skysports1 order by exp_goal_difference_per_90;

#16. Write an SQL query to show team which has maximum number of players_used#

select team, max(players_used) from skysports2 group by team limit 1;

#17. Write an SQL query to show each team name and avg_age in ascending order by avg_age

select team, avg_age from skysports2 order by avg_age;

#18. Write an sql query to show average possession of teams

select team,avg(possession) from skysports2 group by team;

#19. Write a SQL query to show team which has played atleast 5 games

select * from skysports1 where matches_played>=5;

#20. Write an SQL query to show all data for which minutes is greater than 600

select * from skysports2 where minutes>600;

#21. Write an SQL query to show team, goals, assists in ascending order by goals

select team,goals,assists from skysports2 order by goals;

#22. Write an SQL query to show team, pens_made, pens_att in  descending order by pens_made
select * from skysports1;
select * from skysports2;

select team,pens_made,pens_att from skysports2 order by pens_made desc;

#23. Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending 
                          #order by cards_yellow

select  team,cards_yellow,cards_red from skysports2 where cards_red = 1 order by cards_yellow;

#24. Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending 
     #order by goals_assists_per90

select team,goals_per90,assists_per90,goals_assists_per90 from skysports2 order by goals_assists_per90 desc;

#25. Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by
                                  #goals_assists_pens_per90

select team,goals_pens_per90, goals_assists_pens_per90 from skysports2 order by goals_assists_pens_per90;

#26. Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30
                             #in ascending order by shots_on_target_pct

select team,shots, shots_on_target, shots_on_target_pct from skysports2 where shots_on_target_pct <30 order by shots_on_target_pct ;

#27. Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium

select team,shots_per90,shots_on_target_per90 from skysports2 where team='belgium';

#28. Write an SQL query to show team, goals_per_shot goals_per_shot_on_target, average_shot_distance in descending
                         #order by average_shot_distance

select team,goals_per_shot goals_per_shot_on_target, average_shot_distance from skysports2 order by average_shot_distance desc;

#29. Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500

select * from skysports2;
select team,errors,touches from skysports2 where errors='0' and touches <1500;

#30. Write an SQL query to show team, fouls which has maximum number of fouls

select team,max(fouls) from skysports2 group by team limit 1; 

#31. Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20

select * from skysports2;
select team,offsides from skysports2 where offsides<10 or offsides>20;

#32. Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won, aerials_lost, aerials_won_pc

select team,aerials_won, aerials_lost, aerials_won_pct from skysports2 order by aerials_won_pct desc;

#33. Write an SQL query to show number of teams each group has!

select * from skysports2;
select * from skysports1;

select `group`,count(team) from skysports1 group by `group`;

#34. Write a SQL query to show team names group 6 has

select team,`group` from skysports1 where `group`=6;

#35. Write an SQL query to show Australia belongs to which group

select team,`group` from skysports1 where team='Australia';

#36. Write an SQL query to show group, average wins by each group

select `group`,avg(wins) from skysports1 group by `group`;

#37. Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by
                #expected_goal_scored

select `group`,max(expected_goal_scored) from skysports1 group by `group` order by max(expected_goal_scored);

#38. Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded

select `group`,min(exp_goal_conceded) from skysports1 group by `group` order by min(exp_goal_conceded) desc;

#39. Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order
                 #by exp_goal_difference_per_90

select `group`,avg(exp_goal_difference_per_90) from skysports1 group by `group` order by avg(exp_goal_difference_per_90);

#40. Write an SQL query to show which team has equal number of goals_scored and goals_against

select team,goals_against,goals_scored from skysports1 where goals_against=goals_scored;

#41. Write an SQL query to show which team has maximum players_used

select team,max(players_used) from skysports2 group by team limit 1;

#42. Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200

select team,players_used, avg_age, games, minutes from skysports2 where minutes <500 and minutes >200;

#43. Write an SQL query to show all data of group_stats in ascending order BY points

select * from skysports1;
select * from skysports2;

select skysports1.points,count(skysports1.gr)

#dont know what is asked in this 
##########################################

#44. Write an SQL query to show ALL UNIQUE team in ascending order by team

select distinct(team) from skysports1 order by team asc;

#45. Write an SQL query to show average avg_age of each group and arrange it in descending order by avg_age.

select skysports2.avg_age, skysports1.`group` from skysports1 join skysports2 
on skysports1.team=skysports2.team 
order by avg_age desc;

#46. Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.

select skysports1.`group`,sum(skysports2.fouls)foulss from skysports1 join skysports2 
on skysports1.team=skysports2.team 
group by `group`
order by foulss asc;

#47. Write an SQL query to show total number of games for each group and arrange it in descending order by games.

select count(skysports2.games)game ,skysports1.`group` from skysports1 join skysports2 
on skysports1.team=skysports2.team 
group by `group`
order by game desc;

#48. Write an SQL query to show total number of players_used for each group and arrange
              # it in ascending order by players_used.

select * from skysports1;
select * from skysports2 ;

select count(skysports2.players_used)players,skysports1.`group` from skysports1 join skysports2 
on skysports1.team=skysports2.team 
group by `group`
order by players asc;

#49. Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.

select skysports1.`group`,count(skysports2.offsides)offside from skysports1 join skysports2 
on skysports1.team=skysports2.team 
group by `group`
order by offside asc;


#50. Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.

select avg(skysports2.passes_pct) passes_pct,skysports1.`group` from skysports1 join skysports2
on skysports1.team = skysports2.team 
group by `group`
order by passes_pct desc;

#51. Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.
                         #This
select skysports1.`group`,avg(skysports2.goals_per90)goals_per90  from skysports1 join skysports2 
on skysports1.team= skysports2.team 
group by `group`
order by goals_per90;