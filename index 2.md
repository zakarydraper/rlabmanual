--- 
title: "Statistics Labs for Psychology"
author: "Zakary A. Draper"
date: "2023-03-09"
site: bookdown::bookdown_site
documentclass: book
bibliography: ["book.bib", "packages.bib"]
csl: apa.csl
biblio-style: "apacite"
link-citations: yes
description: "This is a lab manual for learning statistics with R using examples of hypothetical psych science studies."
---



# Introduction {-}

This lab manual is intended as a resources for gaining experience (1) conducting statistical tests in R, (2) reporting results in APA style, and (3) interpreting those results in the context of a given study. It includes a collection of adapted psychology studies based primarily on research conducted by faculty at the University of British Columbia---Okanagan in 2021). For each study you will find a brief introduction, method, and analytic strategy, as well as instructions for producing an R script to conduct the analysis and presenting findings in a brief lab report. As a student using this manual, you can imagine yourself as joining a research team after data have been collected and prior to conducting any analyses. Your job is to conduct the analyses outlined in the analytic strategy, report the results, and interpret them.

## License {-}

[Statistics Labs for Psychology](http://rlabmanual.com) by [Zakary A. Draper](http://zakarydraper.com) is licensed under [CC BY-NC-SA 4.0](http://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1). If you have questions about adapting the lab manual, please [contact me](mailto:zakary.draper@ubc.ca). You may also [contact me](mailto:zakary.draper@ubc.ca) to request permission to use the manual in a way that is not permitted under this license.

## Author's Note {-}

There are many excellent, freely available online resources for teaching and learning R. In this section I provide some background information explaining why I felt it would be worthwhile to write a lab manual to add to that collection of resources. If you are an instructor looking for a resource to use for your own lab, hopefully this can help you decide if this resource meets your needs. If you are a student who is using this lab manual as part of course, then this section can help you understand the logic behind the tasks that you will be performing as part of this course.

### My Experience {-}

At the time of writing this, I am a PhD student in the Psychological Science program at The University of British Columbia---Okanagan. In addition to being passionate about R, research methods, and statistics, I have several years experience teaching R and statistics labs to undergraduate students. I wrote this lab manual because the textbook that we had been using to teach R was growing outdated and because the resources I found online did not agree with my philosophy for teaching R.

### What is the Lab Manual? {-}

The lab manual is a resource for practicing statistics with R. Students using this lab manual will have the opportunity to step into the shoes of a researcher by conducting analyses to test hypotheses, reporting those results, and thinking critically about the results in the context of the study. The manual is meant to be used to supplement learning about research methods and statistics in psychology. The goal is not to teach these things as part of the lab. Rather, the goal is to enhance learning through application.

The manual is split into two parts. The first part (labs 1–3) teaches foundational R skills. In lab 1, students are introduced to the R programming language and the RStudio IDE. They gain insight into how they can benefit from learning R and they are then introduced to the fundamentals of R programming (as outlined in the Learning Objectives). This continues in lab 2, which introduces R functions for importing data and working with data frames. Lab 3 introduces data visualization using `ggplot2`. 

Having a foundation in the basics of programming with R, students are then introduced to using R for conducting statistical tests. In labs 4–10, students are presented with a hypothetical study and placed in the role of a researcher responsible for testing statistical hypotheses, reporting results, and contributing to the interpretation of the results in the context of that study. For each of these labs, students are provided with the following:

1. Background information for the study, including a brief description of important theoretical concepts, one or more hypotheses to be tested, the research method, and analytic strategy.
2. Simulated data reflecting the data that would be expected from the sample study.
3. Instructions for producing an R script for executing the analytic strategy.
4. Instructions for reporting results in APA style.
5. Discussion questions to guide students through the process of thinking critically about their findings.

Students use this information to prepare a lab report, which includes an R script, written results reported in APA style, and written responses to the discussion questions.

### Why Should I Use This Lab Manual? {-}

Hopefully some of the value of the lab manual to students is clear from its description. I next explain the decisions I made when preparing the lab manual and how I think those choices benefit students.

#### Working With Novel Data {-}

My experience as an undergraduate student in a statistics lab involved reproducing results by copying code from a textbook. I learned how the functions worked and I learned how to report results in APA style. What I did not get to experience was producing and interpreting novel results. Because I was following along in a textbook, the results and their interpretations were always available before I even conducted the tests.

Reproducing results can be useful for remembering and understanding, the lowest tiers of learning according to *A Taxonomy for Teaching, Learning, and Assessment* [@bloom2001]. The goal of this lab manual is to target the higher tiers of learning, including applying, analysing, evaluating, and creating. This is accomplished in part, by giving students novel data (accomplished by simulating the data in R), for which the results of the tests are unknown.

How does conducting tests using novel data aid in learning? When reproducing results, confidence in the R code comes from its producing the correct result. As such, a reasonable approach to reproducing a known result is to try everything until it works. This approach cannot be taken when---as with real research or on an exam---the results are unknown. Rather, confidence in a novel result comes from knowing and understanding the process (i.e., R code) that produced it. So, instead of trying everything until it works, it requires learning how R functions work, and intentionally writing code that produces the desired results.

This same logic can be applied to reporting results in APA style, interpreting findings, and evaluating the strength of evidence. When the correct reporting and interpretation of results are given to students, they are only required to understand someone else's arguments. Producing novel insights requires a greater depth of understanding. These are all things that the students will be required to do when they conduct their own research. The lab manual provides an opportunity to practice these essential research skills.

#### Student-Centred R Philosophy {-}

Anything that can be done in R can be done more than one way. There is no consensus best way to accomplish any task. Rather, the best approach for a given task depends on several factors, including the goals of the project, and the values of the programmer. For example, [don't repeat yourself (DRY)](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself) is a basic principle of software development. But avoiding repetitive code has limited benefits for small projects, and can come at the cost of more complex, less comprehensible scripts. Sometimes it is worth it---especially for new learners---to just [copy and paste](https://en.wikipedia.org/wiki/Copy-and-paste_programming).

One reason for using this lab manual is that the R scripts have been written with student learning in mind. I attempted to balance competing interests in choosing approaches for each task in R, and have revised the scripts based on what worked well and what students struggled with. The primary goal for the students R learning is that they learn to write scripts that are clean and reproducible. That is, someone with their script and the data could reproduce the results of the study by running the script from top to bottom. 

##### Reproducibility {-}

Reproducibility is one of the major benefits of R. Analyses are executed from R scripts, which are simply sets of instructions for computers to perform tasks. Scripts are reusable means of producing the results of a study. This is useful for research because it eliminates ambiguity that sometimes comes from the narrative description of analyses. It also means that if you have conducted an analysis once, you have a script for doing that analysis again.

Of course, all these benefits are maximized when the scripts are well-prepared. If a script is messy, difficult to follow and understand, or includes errors, then researchers will be reluctant to share them. One goal of the lab is to teach the students to write scripts in a way that is reproducible. That means that scripts should run from top to bottom without errors. It also means loading only the necessary packages at the start of each script. It means removing extraneous code (such as calls to `help()`), code that installs something on the user's computer (such as `install.packages()`), and any code that produces an error.

Good script-writing practices are encouraged by demonstrating them. The R scripts I provide with the instructor resources largely follow the [tidyverse style guide](https://style.tidyverse.org/). Additionally, the lab focuses on teaching approaches that lead to reproducibility. This means students learn to load packages and import data using R code rather than the menu interfaces in RStudio. Although the menu options are easy to use, they are not reproducible and therefore not used in the lab.

##### Usefulness {-}

As previously mentioned, there are many ways to accomplish most tasks in R. In deciding approaches for each task, I attempted to identify ways to give students the information that would be most valuable for them to learn without overwhelming them with the complexity of the material. To do so, I considered the following:

* Is the approach likely to work in the future? It may be some time after the lab (potentially years later) before a student returns to an R script. Given that R is a programming language that changes over time, it is possible for some functions to become outdated in that timeframe.[^1] This means functions with a history of being both stable and well-maintained are preferable, and favours the base R functions maintained by the R Core Team.
* How flexible is the approach? Can it be adapted to other similar uses? This principle favours R functions, such as `lm()` which is extremely flexible and can be used or extended to test almost anything under the umbrella of linear regression.
* Is this approach popular in the R community? Popular approaches are valuable to learn because students are likely to encounter them outside the lab, for example in online tutorials, in R scripts shared by researchers, and when collaborating with other researchers.
* How easy is the approach to learn? Ease-of-use is essential to usefulness. It is easier for the students to be excited and engaged when the content is challenging without being overwhelming. The lab manual is aimed at teaching psychology students. In my subjective experience, most people do not go into psychology because they want to do statistics or programming. The lab is often their first forray into computer programming. Keeping the content simple without sacrificing usefulness can help engage students who would otherwise be overwhelmed and give up. It is my hope that the students will learn to enjoy using R and use it for their research in the future. If the approaches they learn are too complicated, they will not consider the value that R can bring worth the effort.
* How well did the approach work when I taught it? I have several years of experience teaching each of these labs including using this lab manual. After teaching each lab, I reflect on what worked well and try to identify areas where students were confused. I then make revisions to the content for the next year.

[^1]: R functions generally have a long lifespan. But functions that are being actively developed sometimes change such that older versions of a function become deprecated. On the other end of the spectrum, old R packages that go unmaintained for long enough will eventually stop working with newer versions of R.

#### Broad Scope of Research {-}

One of the goals of the lab manual is to introduce students to a variety of different research programs. To that end, the example studies in the lab manual were inspired by research programs of professors at The University of British Columbia---Okanagan, the institution where I attend and teach the lab. I chose to base the labs off these research programs because it introduced diversity into the content, and because it was beneficial to introduce students to some of the areas of research being studies at their university. Many students enrolled in the lab go on to do honours degrees, meaning they will become involved in conducting research. The lab manual being based off research conducted at this university therefore has the added benefit of introducing them to the kinds of projects they could be involved in. If they find the content of one lab particularly engaging, they can explore the research program that inspired it and perhaps even work toward getting involved in that lab.

#### You Can Make it Your Own {-}

Although students everywhere can benefit from being introduced to a diversity of research programs, the lab manual being based off research conducted at UBCO is most beneficial to students at UBCO. To give those some benefits to students where you teach, you may be interested in adapting the content to reflect the research conducted at your institution. Or, you may wish to make other changes to the lab manual. If that is the case, I have good news. The license under which the lab manual is published ([CC BY-NC-SA 4.0](http://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1)) allows for sharing and adapting the content. The source code for this website is available on GitHub. You are more than welcome to download the source code, adapt it as you see fit, and use the adapted version for your lab.

If you are interested in adapting the lab manual, I would also encourage you [contact me](mailto:zakary.draper@ubc.ca) so that I can provide you with the instructor resources that I use with the lab. This includes R scripts for simulating data for each of the example studies. These scripts are easily adaptable to simulate data based on any the statistical models covered in the lab.

Should you wish to adapt the lab manual but doing so is beyond your current skillset, then you are welcome to [send me an email](mailto:zakary.draper@ubc.ca) and I may be able to assist you.

## Instructor Materials {-}

If you are an instructor who is interested in using this lab manual for your course, you can [email me](mailto:zakary.draper@ubc.ca) and I can provide you with additional resources including R scripts for simulating the data and answer keys.