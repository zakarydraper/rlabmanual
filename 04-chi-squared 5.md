# Chi-squared Tests {#chisq}

## Learning Objectives {#chisq-learning-objectives}

After completing this lab, you should be able to do the following using R:

* Conduct $\chi^2$ tests of independence of 2 $\times$ 2 categorical data.
* Compute Cohen's *w* and odds ratios.

Additionally, you should be able to do the following:

* Report results of $\chi^2$ tests in APA style.
* Correctly interpret the results of $\chi^2$ tests, including *p* values.
* Correctly interpret odds ratios.

## The Study: Deception Detection {#chisq-study}

### Study Information

#### Description

Laboratory studies have consistently shown that people make terrible lie detectors. It seems that liars in these settings do not provide reliable, observable indicators of their deception. But this could in part be due to the necessarily low stakes of lying in experimental studies. High-stakes lies, such as are common in criminal justice contexts, may elicit involuntary cues from liars that are impossible to replicate in an ethical laboratory study.

This is supported by research. Ecologically valid studies of high-stakes lies have found that there are reliable behavioural cues to deception. For example, @tenbrinke2012 examined videos of people pleading for the safe return of missing relatives. In some of those cases, the pleader was later revealed to have murdered the missing person. In this high-stakes scenario, dishonest murderers showed signs of emotional leakage, which could be used to reliably predict their dishonesty.

In addition to emotional leakage, cues of dishonesty can be found in observers' reactions. Compared to truthful pleas for the return of a lost loved one, the pleas of deceptive murderers elicits stronger physiological arousal in observers. Some observers are aware of their heightened physiological arousal; however, this does not translate to accuracy in detecting deception. This suggests that people are (perhaps subconsciously) aware of something being "off" about the deceptive pleader, but are unwilling or unable to label that individual a liar. As such, implicit cues of deception (such as heightened physiological arousal of observers) may be more useful for detecting deception than asking people to explicitly label someone as dishonest.

Another implicit cue to deception is the willingness of observers to offer support to the pleader. One study explored this by having participants watch several videos of pleaders (half of whom were dishonest) and rate how much money they would be willing to donate to a hypothetical fundraiser for the family with the missing loved one [@tenbrinke2021]. Participants indicated they would donate more to the families of honest pleaders (*M* = \$36.60) compared to dishonest pleaders (*M* = \$32.36). That research used hypothetical donations, which may not track with reality. The current study will expand on that research by giving participants the opportunity to make a real financial contribution to an existing charity that aids families of missing persons. As in the prior research, participants will watch a video of a pleader and respond to questions about the video. At the conclusion of the study, they will have the option of receiving $5 for themselves, or else we will make a donation of that amount to the [Missing Children Society of Canada](https://mcsc.ca).

#### Hypothesis

It is hypothesized that participants who watch a video of someone pleading for the return of their lost loved one will be more willing to donate their participation incentive compared to participants who watch a deceptive pleader.

### Design Plan

#### Study Design

Participants will complete this study online. After providing informed consent, they will watch a video of a pleader who is either truthful or dishonest. They will then be asked to rate how sympathetic they felt towards the pleader, and respond to a brief demographic questionnaire. They will then be thanked for their participation and presented with their choice of participation incentive: either receiving \$5 for themselves, or making a \$5 charitable donation to the [Missing Children Society of Canada](https://mcsc.ca). After they select their participation incentive, we will ask brief follow-up questions meant to assess their awareness or suspicion of the study protocol.

#### Instruments and Measures

The pleader videos will be sampled from the same pleader videos used by @tenbrinke2012. Each participant will view one video, which will be sampled randomly from the collection of videos. Half the participants will be shown a video of a deceptive murderer, and half will be shown video of a truthful pleader.

The study protocol questions will be as follows:

1. Did you recognize the person in the video?
1. Were you at all suspicious that the pleader in the video may have been lying?

#### Analytic Strategy

A $\chi^2$ test of independence will be conducted to determine whether people who viewed honest pleaders were more likely than those who viewed a deceptive pleader to donate their participation incentive to charity. That is, the independent variable will be the honesty of the pleader (truthful or deceptive), and the dependent variable will be the participants choice of participation incentive (donation to charity or kept for self). Significance will be inferred at $\alpha$ = .05.

#### Sample Size and Power Analysis

Research using people's willingness to make a hypothetical donation showed that participants were more willing to donate to honest pleaders, with a standardized effect size of *d* = 0.47 (which is $\rho$ = .23 in the metric of a correlation coefficient). This effect is related but distinct from the effect of interest to this study. Unlike that one, this relies on real-world donations. Additionally, the donations are being made to a charity and not being given directly to the pleader in the video. Additionally, this is only a single study and may therefore not be an accurate estimate of the population effect size. However, it is the closest facsimile of the effect of interest that we are aware of in published literature. As such, our power analysis was based on its effect size.

Assuming a population effect size of *w* = .23, 95% power will be obtained with *N* = 245.6 participants. In prior research, 6.4% of participants were suspicious that some of the pleaders were being dishonest. Because we want to be able to drop suspicious participants, we are aiming for a total sample of *N* = 263. This will give yield 95% power even after dropping 6.4% of participants from the analyses.

<!-- ## Data Collection {#chisq-data} -->

## Lab Report Instructions {#chisq-assignment}

### R Script

Do the following in R:

1. Import the data into R.
1. Convert any categorical variables to factors with appropriate levels and labels.
1. Use `table()` to produce a contingency table.
1. Use `chisq.test()` to conduct a $\chi^2$ test on the contingency table.
<!-- 1. Use `effectsize::effectsize()` on the object created by `chisq.test()` to produce effect size estimates. -->
1. Calculate the following effect sizes:
    * The probability of donating after watching (a) an honest pleader and (b) a dishonest pleader.
    * Absolute risk
        * The absolute risk is the difference between these two probabilities.
    * Relative risk
        * The relative risk is the ratio of the above probabilities.
    * Odds ratio
        * The ratio of the odds of donating given (a) an honest pleader and (b) a dishonest pleader
        * First, calculate the odds for each group; the odds of donating is the number of donaters divided by the number of non-donaters.
        * Then divide the two odds.

### Results

Your results section should include the following:

* The total number of participants.
* The number of participants remaining after dropping participants who suspected that some pleaders may have been dishonest.
* The proportion of participants who donated from each group.
* The results of the $\chi^2$ test with associated effect size.

### Discussion

Answer each of the following questions using complete sentences.

* Do the results of this study support the hypothesis? Include a plain-language description of the hypothesis in your responses.
* This study was an extension of a prior study [@tenbrinke2021] which asked participants to indicate how much they would be willing to donate to the family of the pleader in the video they watched. How do the results of the current study compare to the findings of @tenbrinke2021?
* What is one potential implication of the primary finding of this study?
