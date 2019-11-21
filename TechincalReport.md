# Sports Analytics

## Project: Basketball Analysis

## Team Member Names
* Jordan Jones - jmj243@uw.edu
* Justin Lim - limj27@uw.edu
* Hannan Ajmal - hajmal05@uw.edu

Info-201: Technical Foundations of Informatics <br />
The Information School <br />
University of Washington <br />
Autumn 2019

## Introduction
1. **Problem Situation** - The setting of the problem is the landscape of the NBA. The direct stakeholders are the team's players and the coaches. The indirect stakeholders are fans, investors and people that bet. Two values that are in play are winning and money because teams will not pay or target good older players; instead they would intentionally try to loose in order to gain higher draft pick and plan for their future and disregard the short term. The general issues at stake is fan experience because if a team is not doing well then fans won't attend games. The ethical issues are fans are paying to watching teams and if the team is intentionally trying to play bad then that is a poor product for the fan. Some other work that has been done on this is player analysis. We are building on this work by taking multiple data sets that have to do with fan experience and player performance and finding a correlation between the two. We care about this problem because, all three of us are fans of basketball and we want to understand teams better from an analytical perspective better.  

2. **What is the Problem?** - The specific problem that is at stake here is whether the sports analysis that teams use are actually helping the fan experience of each team in the NBA.

3. **Why does it matter?** - This matters because it can create a collateral damage to numerous stakeholders that are acquainted with the team itself. If the teams overall performances are suffering, then the financials of the team will be affected along with the fan attendance. This is important because the sports is a big part of American culture and pretty much can be seen as a driving force in the divided society.

4. **How will it be addressed?** - We will address this problem by analyzing the Fan Attendance and Revenue and see how the financials are doing compared to the fan attendance. Then analyze the fan attendance with the winning percentage to see how the performance of teams affects the fan attendance. We will be comparing fan attendance with revenue and winning percentage of each year and see the trends for every NBA team, which we will use a scatterplot to wrangle the data together. The main audience of our work would be the NBA team's itself for them to see how it is affecting their fan experience or even the fans if they want to switch teams to a team that has a better fan experience overall.

### Research Questions
Our main research question for this project is to determine if there is a
correlation between a teams performance and fan attendance at games? How does a teams stats correlate to it's winning percentage?


### The data sets
1. The first data set was created on kaggle.com by Paul Rossotti. The purpose of this dataset is to show individual team's statistics throughout the regular season in an NBA season. The observation that we made in this dataset is the fact that teams with bad records had the worse overall team stats during these seasons. The variable we tracked was the winning percentage of each team. This is a pretty large dataset since it has statistics on all 30 NBA teams. In terms of data wrangling, what we decided to do was take two teams with bad record and two teams with good record over a period of time and compare them to each other by looking at the team's stats during the stretch.

2. The second dataset was created on data.world by Gable Salzer. The purpose of this data set is to show an NBA team's fan attendance numbers during an NBA season. The observation that we made with this data set was that teams that had low fan attendance were typically teams that didn't have good record during that season. The variable we applied to this dataset was revenue and the fact that teams that don't have good fan attendance would not generate the same amount of money as teams that had a higher number in fan attendance. This dataset is also pretty large because it's looking at all 30 NBA teams over the span of several seasons. In terms of data wrangling, we did the same thing for this dataset like we did for the same first one; we took the sane four teams and compared their fan attendance with each other. However, what we also did with this dataset is that we compared it to the first one to see if these team's overall stats correlated to their fan attendance as well.


### Information Visualization
After looking at a number of different data sets that related to team stats in the NBA, we decided on two data sets; one that show statistics about fan attendance for each NBA team from 2000-2015 and another that shows the box score (every statistic the NBA keeps track of) for every game from 2012-2018. When looking through the data, we decided to focus on how the average home game attendance fluctuated each year, depending on the number of wins each team had during that year.


### Tiny app description
Our shiny app has 8 major components to it. We have seven pages that all include the necessary aspects of the project. Our first and second pages give general background information about our project. The third page has our team attendance vs team winning percentage information. The fourth page shows the team's attendance vs team performance stats. The fifth page is our conclusion. The sixth page gives a description about the tech that was used during the project. The seventh page provides information about the group members. Finally we have our ui that organizes all these pages together for our shiny app.


### Conclusion
When looking back on our project there were some strengths and weakness that were relevant during this process. A strength to our project was communication; we did a great job of communicating with each other so with the project up to this point. Another strength was consistency; we were all consistent in doing our project and making sure that we met at least once a week for two hours to make progress in our project. A weakness for this project was probably finding the our data; since there is a large amount of teams in the NBA finding data for all teams was challenging. As a result of that, the datasets that we have are not really that strong but that will change by the time we turn in this project. The main lesson that we learned from this project was understanding how to work in groups. Future work that could be pursued as a result of this project is using the areas of focus and applying it to other sports as well.


### Appendix 1: Data Dictionary
| Variable Name     | Description   | Data Type  | Measurement Type |
| ----------------- |:-------------:|-----------:|:----------------:|
| Fan Attendance    | The amount of fans that attended that NBA team's game| Integer | Per Year |
| Team's Stats          | The statistics for each team for that season | Double | Per Year |
| Winning Percentage| The wins per year divided by the total amount of games they played | Double | Per Year |

### Appendix 2: Reflections
* Justin Lim: It was interesting to say the least to see the data when it was combined which meant more than just words in my opinion. I found it frustrating to find the data for all the teams in the past years, we had to piece together information that was scattered to make it work. However, what I was satisfied about was that I was able to use what I have learned throughout the quarter in full action, I felt like I now have a pretty good grip on what data science is all about. What I would do differently next time is to get a head start and find concrete data values that are reliable rather than having to piece data together to find what we want. This project allowed me to learn more about data wrangling and create a shiny application through R which definitely helped me as a coder. Also, being able to think more critically to come up with data visualization that is effective.

* Jordan Jones: So far, what I have learned is that data wrangling can be a difficult task. We have a specific problem we are looking to address and sometimes it is hard to find all of the correct data to use in order to support your solution to the problem. I found it satisfying that we found some data sets that is related to the problem we are looking to fix, but it was frustrating trying to put together pieces from multiple data sets to address the problem we are facing. In the future, I would look for a data set that contains all of the information I need to address the problem, or I would maybe even change the problem I am looking to solve; everyone could have different interests than me and the problem we are trying to solve may not be seen as a problem to many others. As a thinker, this project has stretched me. I usually am not creative or an extremely great problem solver, but this project has forced me to push myself and make myself better in those categories.

* Hannan Ajmal: With this project so far I would say the most frustrating thing has been our datasets. There was no one large dataset we found so because of that we had piece together different pieces of data which was time consuming. Another thing that had been frustrating during this project was ATOM. Sometimes if i spelled a word wrong and I right clicked to change it to the correct spelling, my app would crash; if I didn't save what I had up that point it would all be deleted. This has happened to me a few times so that had been very frustrating. Something that has been satisfying during this project is learning the analytical side to basketball to an extent. Since basketball is my favorite sport, learning this aspects to the game has allowed me to understand the game on a deeper level. One thing I would do differently is finding a large dataset instead of piecing one together. By doing this it would eliminate a tedious aspect to our project. One thing I'm looking forward to perfecting is the process of making visualization. I think this would help significantly in my designing skills.

### Appendix 3: Use of Envisioning Cards
In this part of the project, we used the envisioning cards to identify the problem situation. The cards allowed us to truly understand who are the direct and indirect stakeholders of our problem were, what values are held in this problem, the general issues that are at stake, and the potential ethical violations of this problem.

### References
* Rossotti, Paul. “NBA Enhanced Box Score and Standings (2012 - 2018).” Kaggle, 8 Nov. 2018, www.kaggle.com/pablote/nba-enhanced-stats.
* Salzer, Gabe. “NBA Team Annual Attendance - Dataset by Gmoney.” Data.world, 30 Jan. 2017, data.world/gmoney/nba-team-annual-attendance.
