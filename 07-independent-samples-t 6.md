# Independent-Samples *t* Tests {#ist}

## Learning Objectives {#ist-learning-objectives}

After completing this lab, you should be able to do the following using R:

* Conduct both Student's and Welch's independent samples *t* tests.
* Compute Cohen's *d* by conversion from the test statistic using `psych::t2d()`.
* Create appropriate visualizations for comparisons of two independent samples (as described in the assignment instructions).
* Produce a single figure with subplots for each level of a grouping variable using `ggplot2::facet_wrap()`.
* Calculate group-level descriptive statistics using `by()` and `describe()`.

Additionally, you should be able to do the following:

* Evaluate the assumptions of independent samples *t* tests.
* Explain the difference between Student's *t* tests and Welch's *t* tests.
* Accurately interpret the results of independent samples *t* tests.
* Report the results of independent samples *t* tests in APA style.

## The Study: Social Identity {#ist-study}

### Study Information

#### Description

People desire positive social identities. A positive social identity is achieved when the social groups to which one belongs (i.e., the "ingroups") are perceived as favourable to the social groups to which they do not belong (i.e., the "outgroups"). Such positive social identities are most often fostered by favouring ingroup members, rather than by devaluing outgroups. As such, people tend to feel positively towards those they see as part of their ingroup.

The desire for a positive social identity can lead to discrimination when positive feelings are reserved for one's ingroup. However it can also promote acceptance of diversity. Preserving positive social identities requires accepting diversity within one's social groups. As such, broadly defining one's ingroup can foster a greater acceptance of diversity. Therefore, encouraging the adoption of broad social groups has been proposed as a means of combatting discrimination.

Of course changing how people define their ingroup is difficult. It can occur when one changes social groups, such as when one moves to a new community, makes new friends, or changes political parties. More often, however, broadening one's ingroup is accomplished by strengthening ties with existing groups. That is, rather than changing the social groups to which they belong, people are more likely to change which social groups they see as important to their social identities.

This study will examine one mechanism by which people determine the importance of social groups to their social identities: perceived social group threat. Research has demonstrated that people strengthen ties to social groups when they perceive those groups as threatened in some way. This was evident in the aftermath of the 9/11 attacks on the United States. Many US citizens felt a threat to their American social identity. This led to a dramatic outpouring of displays of patriotism, such as flying the US flag on one's property.

<!-- Research conducted in the time after the 9/11 attacks revealed that one impact of this increased patriotism was a a greater tolerance for domestic multiculturalism. That is, people who felt a threat to their American social identity, were more accepting of diversity among American citizens. -->

<!-- One study conducted in that time utilized an experimental manipulation wherein some participants were introduced to a threat American social identity prior to being asked their agreement with statements related to American multiculturalism [@davies2008]. -->

This study will investigate a similar effect using a Canadian sample. Although several studies have demonstrated this effect, there is value in replicating these findings. Much of this research has been conducted using US samples, and although Canada and the US are similar in many ways, their political climates are distinct. Additionally, many of the foundational studies demonstrating this effect were conducted in the early 2000s and before; since then, the political climate in both Canada and the US has changed. For example, political convictions are more rigid than they were. These factors could mean that the effects observed among Americans in these foundational studies will be different than what can be expected among Canadians today.

#### Hypothesis

It is expected that Canadians who are primed to perceive a foreign threat to Canadian social identity will place higher importance on national identity than those who are primed to perceive a domestic threat to Canadian social identity.

### Design Plan

#### Study Design

This study will employ an experimental design adapted from experiment three of @davies2008. Participants will read a brief newspaper article describing either a foreign or domestic event that could be perceived as threatening to Canadians. They will then complete a measure of national identity. Participants will be recruited at in-person public events throughout the Okanagan during the summer. Research assistants will operate tables at events throughout the summer. For completing the study, participants will be offered $5.00 food vouchers redeemable at participating vendors at the event. Recruitment will continue until sufficient data are obtained or until the summer's end.

Individuals must be at least 18-years-old and Canadian citizens to be eligible to participate.

<!-- Participants will read what they are told is a policy from a member of parliament, printed on Canadian government letterhead. The policy will endorse either domestic assimilation or multiculturalism. The original study included four conditions that differentiated between foreign and domestic assimilation and multiculturalism. However, this study will examine only the effect on domestic policies. The effect of foreign threats on foreign policy have been well-studied. Limiting this study to a comparison of two conditions will give us greater power to detect the effect of primary interest. -->

<!-- The domestic policy statements are adapted from @davies2008. Participants in the assimilation condition will read: -->

<!-- > "It's our culture's destiny to lead, and Canada will lead by example. Our values, principles, and practices are a model for all Canadians to follow." -->

<!-- Participants in the multiculturalism condition will read the policy statement: -->

<!-- > "We now realize it's critical for cultures within Canada to have a reciprocal relationship---a healthy balance of give and take that embraces diversity as a source of strength." -->

<!-- After reading the domestic policy, participants will complete a measure assessing their support of the policy they read. -->

#### Measures

National identity will be measured with items adapted[^3] from @davies2008. They will be measured on a 7-point Likert-type scale ranging from 1 (*not at all*) to 7 (*completely*).

1. Do you identify with being Canadian?
1. Is being Canadian important to you?
1. Are you proud to be a Canadian?
1. Do you think of yourself as a Canadian?

Participant scores will be averaged across these four items to create a composite measure of national identity.

[^3]: The questions are identical to those used by @davies2008 except "Canadian" replaces "American" in all instances.

<!-- The policy endorsement measure includes 5 items taken from @davies2008: -->

<!-- 1. Do you agree with the stated policy? -->
<!-- 1. How close to the ideal is the stated policy? -->
<!-- 1. Does the stated policy reflect your personal values? -->
<!-- 1. Would you publicly support the stated policy? -->
<!-- 1. Is the stated policy insightful? -->

<!-- Participants will respond to these items on a scale of 1 (*not at all*) to 7 (*completely*). -->

#### Analytic Strategy

A directional Welch's *t* test will be conducted with the alternative hypothesis that national identity is higher in the foreign threat condition. Significance will be inferred using the traditional $\alpha$ = .05.

#### Sample Size and Power Analysis

We plan to recruit 254 participants divided evenly into the two experimental conditions. This will provide 95% power to detect an effect if the effect size in the population is *d* = 0.414.

@davies2008 reported mean national identities of 5.57 and 4.99 for participants who read about foreign and domestic threats, respectively. This amounts to a raw difference of 0.58 on the scale of 1 to 7. Because the *SD*s for national identity were not reported, we cannot know the standardized effect size for this effect. We therefore based our effect size calculation on an assumed pooled *SD* of 1.4. Under this assumption, a raw effect of 0.58 translates to *d* = 0.414.

## Lab Report Instructions {#ist-assignment}

Prepare an R script and written report presenting the results of the analysis described in the analytic strategy.

### R Script

Your R script should be reproducible and free of errors. It should contain syntax to do the following:

* Import the data and convert the "condition" variable to a factor.
* Calculate participant mean scores on the 4-item national identity measure.
* Compute descriptive statistics, including *M*, *SD*, skew, and kurtosis of participants' mean national identity. Do this separately for each level of the experimental manipulation. Use `by()` and `describe()` to do this in a single step.
* Conduct Shapiro--Wilk tests of normality for the distributions of national identity in each of the two conditions.
* Compute a Welch's *t* test as described in the analytic strategy.
* Calculate the corresponding Cohen's *d* effect size for the *t* test.

### Results

The Results section should include the following:

* Total participants in each experimental condition (note that the actual number of participants might differ from the planned number of participants in the study preregistration).
* *M* and *SD* of national identity for each experimental group.
* Results of the null-hypothesis significance test and corresponding standardized effect size with its associated confidence interval.
* Description of efforts to diagnose problems with statistical assumptions and data distributions.
* A figure visualizing mean national identity in each of the two groups and error associated with that measurement. The figure should be referenced in the text of the results section.
    * For example, boxplot, points with error bars, barchart with error bars.
    * If you use error bars, indicate what they represent in the note to the figure.

### Discussion Questions

Provide short answer responses to the following:

* Provide a statement of support or nonsupport for your primary hypothesis.
<!-- * How do your results compare to the results reported by @davies2008? Consider both the size of the effect and the results of the significance test. -->
* Provide an interpretation of the results. Consider both the theory under investigation and the design of the study. Other than the proposed theoretical mechanism, what design or statistical issues could bias the results?
* Canadian adults are the implied population of interest in this study. Given the sampling design, how well does this sample represent that population? How does that affect the interpretation of these results?
<!-- * The broad theoretical mechanism under study was one in which the perception of an external threat to a social group leads to increased identification with that social group. In what contexts does this study have implications for this theory? Consider how the study's design might limit its generalizability. -->
* What is an implication of this research for future research, programs, or policy?

<!-- ### R Script (Detailed Instructions) -->

<!-- #### Doing a *t* Test -->

<!-- There are two syntax options for conducting independent samples *t* tests using `t.test()`. The first is similar the syntax used for the paired samples *t* test. This involves supplying a numeric vector to the arguments `x` and `y`, which are the first two arguments of `t.test()`. A paired samples *t* test requires the additional argument `paired = TRUE`. To indicate that the samples are independent, the argument should be `paired = FALSE`. The default value is already `paired = FALSE` so not specifying the argument will treat the samples as independent. -->

<!-- So, if I have a `data.frame` called `dta` that looks like this: -->

<!-- ```{r example-data, echo=FALSE} -->
<!-- data.frame( -->
<!--   var1 = sample(10, 5, TRUE), -->
<!--   var2 = sample(10, 5, TRUE) -->
<!-- ) -->
<!-- ``` -->

<!-- Then I could conduct a *t* test using the following syntax: -->

<!-- ```{r welch-default, eval=FALSE} -->
<!-- t.test(x = dta$var1, y = dta$var2) -->
<!-- ``` -->

<!-- This would conduct what is called a Welch's *t* test, which I explain below. When you inspected your data, you probably noticed that it is not arranged as the data above. Your data are arranged in a `data.frame` like this: -->

<!-- ```{r example-data-long, echo=FALSE} -->
<!-- dta <- data.frame( -->
<!--   var = rep(1:2, each = 5), -->
<!--   value = sample(10, 10, TRUE) -->
<!-- ) -->
<!-- dta -->
<!-- ``` -->

<!-- This is probably the most sensible way to arrange data from independent samples. It places observations from different people on separate rows. The prior arrangement had data from different people in different columns. That arrangment implies some connection between data from the same row, when there is none. It technically works when there are only two variables, but that is never the case with real data. You are going to have other information, such as participant IDs, demographic details, and so on that are unique to each participant. There is no sensible way of arranging the data frame that maintains the information about individual participants while placing scores from different participants side-by-side. -->

<!-- So, how do we make this second layout work with `t.test()`? There are two approaches. The first is to use `subset()`. -->

<!-- ```{r, eval=FALSE} -->
<!-- t.test( -->
<!--   x = dta$value[dta$var == 1], -->
<!--   y = dta$value[dta$var == 2] -->
<!-- ) -->
<!-- ``` -->

<!-- This works, but there is another (in my opinion more elegant) approach as well. This is using the formula notation. -->

<!-- #### Formula Notation -->

<!-- Instead of passing values to `x` and `y`, you can specify a formula and a data frame. -->

<!-- ```{r formula-notation, eval=FALSE} -->
<!-- t.test(formula = value ~ var, data = dta) -->
<!-- ``` -->

<!-- This is telling `t.test()` to predict the values of `value` from the levels of `var`. Note that this does not use the `$` to extract the values from the data frame. Instead, the `data` argument tells `t.test()` where the columns in the formula can be found. Formula notation will continue to show up throughout the course. It always follows the format `outcome ~ predictors`. The `~` (called "tilda") is on your keyboard above the "tab" key. In the context of formula notation it means "is predicted from." In the context of a *t* test, the outcome variable must be numeric and the predictor variable must have only two levels. The `t.test()` function will return an error if either of those things are untrue. -->

<!-- You can then pass additional values to arguments of `t.test()`, such as to `alternative`, `paired`, and `conf.level`. -->

<!-- #### Welch's *t* Test -->

<!-- The above examples have all done a Welch's *t* test. Welch's *t* test is the same as a regular *t* test except that it includes an adjustment for the degrees of freedom. One of the assumptions of *t* tests is equal variance in each of the two samples. This assumption is often not met. For example, in the example you are working on for your assignment, it could be that participants who read about a foreign threat responded more similarly to one another than participants who read about a domestic threat. This would violate the assumption of homogeneity of variance, meaning that the regular *t* test would not be valid. Welch's *t* test adjusts the degrees of freedom based on the degree of heterogenity of variance between the two samples. This will make the *p* value larger but it means that you don't need to assume homogeneity of variance for the test to be valid. -->

<!-- If there is no heterogeneity of variance between the samples, Welch's *t* test will produce the same result as a regular *t* test. As such, it makes sense to just use Welch's *t* test all the time. It removes an assumption and only affects the *p* value when necessary. The author of `t.test()` agrees with this assessment and has therefore made the default independent samples *t* test a Welch's *t* test. If you want to conduct a traditional *t* test, you must specify that using `var.equal = TRUE`. This means you are assuming equal variances in the two samples. I don't recommend ever doing this for your own research. However, you are likely to encounter regular *t* tests in other people's work. If you want to reproduce their results, you will need to use this argument. -->

<!-- #### Testing Assumptions -->

<!-- The assumptions of the independent-samples *t* test are: -->

<!-- 1. Normality of residuals in the population. -->
<!-- 1. Homogeneity of variance (aka homoscedasticity). -->
<!-- 1. Independence of observations. -->

<!-- **Normality** -->

<!-- As with all the tests covered in the lab, the assumption of normality is that the residuals are normally distributed in the population. The residuals are the difference between the value predicted by the statistical model and the observed value. For one-sample *t* tests (and by extension paired-samples *t* tests since a paired-samples *t* test is just a one-sample *t* test of the difference score), we looked at the distribution of the observed scores instead of the residuals. This is because the value predicted by the model is the same for every observation. Subtracting a constant value from every observation doesn't change the shape of the distribution at all, it just shifts all the scores by a constant. -->

<!-- For independent *t* tests, this is no longer true. The model now predicts one value for each of the two groups. Unfortunately, it is a little annoying to find these values. It requires finding the mean of the two groups and then subtracting the appropriate group mean from each group's observed scores. That requires some subsetting and is a bit obnoxious. Code to do that looks like this: -->

<!-- ```{r} -->
<!-- m1 <- mean(dta$value[dta$var == 1]) -->
<!-- m2 <- mean(dta$value[dta$var == 2]) -->

<!-- dta$resid <- dta$value -->

<!-- dta$resid[dta$var == 1] <- dta$resid[dta$var == 1] - m1 -->
<!-- dta$resid[dta$var == 2] <- dta$resid[dta$var == 2] - m2 -->

<!-- dta$resid -->
<!-- ``` -->

<!-- Normality of the residuals can then be tested in all the usual ways (i.e., Shapiro--Wilk test, skew, kurtosis, visual inspection of histograms and q--q plots). -->

<!-- Testing the normality of the residuals seems an uncommon approach, though. More often, researchers just test the normality of the groups separately. I do not know why. Maybe because it is easier? Typically, it shouldn't matter much. If both distributions satisfy the assumption of normality separately, then the residual distribution should satisfy the assumption as well. -->

<!-- What should be avoided is testing the normality of the distribution of scores without considering group membership. If you are conducting an independent-samples *t* test, then you expect that distribution to be bimodal (i.e., non-normal). -->

<!-- **Homogeneity of Variance** -->

<!-- This assumption is that the error in the model is equivalent across groups. In other words, the models is equally good at predicting scores for members of both groups. This can be tested statistically using Levene's test. Levene's test is a null hypothesis significance test of the null hypothesis that variance is equal for both groups. So, a significant test indicates that this assumption has been violated. We're not going to do Levene's test in this lab, though, because there is a better approach. -->

<!-- The assumption of homogeneity of variance is only an assumption of a Student's *t* test. Welch's *t* test---which is the default two-sample *t* test of `t.test()`---does not assume equal variance. Welch's *t* test corrects for heterogeneity of variance by adjusting the degrees of freedom. The adjustment is proportional to the amount of heterogeneity. If the variance is largely homogeneous, the penalty to the degrees of freedom will be small. In my mind, this makes Welch's *t* test generally superior. In situations where the assumption of homogeneity of variance is met, the result will be similar to a student's *t* test. In situations where there is substantial heterogeneity, then Welch's *t* test will correct for that. Either way, you're set. And it's one less assumption to make and test. -->

<!-- **Independence of Observations** -->

<!-- This is an assumption of the test that cannot be tested directly. It is related to the design of the study. -->
