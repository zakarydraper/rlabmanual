# Factorial ANOVA {#fanova}

## Learning Objectives {#fanova-learning-objectives}

After completing this lab, you should be able to do the following using R:

* Conduct tests of main effects and interactions for models with two categorical variables each with 2 levels.
* Produce interaction plots.

Additionally, you should be able to do the following:

* Report the results of factorial ANOVAs in APA style.
* Interpret the results of the aforementioned tests.

## The Study: Canine-Assisted Interventions {#fanova-study}

The B.A.R.K. program at UBCO is an example of a canine-assisted intervention (CAI). Students can pet and play with dogs while interacting with the dog handler and other students. Across several studies, students who attend B.A.R.K. have reported reduced stress and anxiety and improved mood. Studies of CAIs at other universities have reported similar findings.

As more university courses have moved online, opportunities for in-person group CAIs are limited. There may be value in providing online CAIs. The current study investigates the benefits of participating in an online CAI. As with in-person CAIs, students can join their peers for brief social interactions with a trained dog handler and dog. Online CAIs also provide the opportunity for on-demand sessions. Students could watch a pre-recorded video with content similar to a synchronous CAI session. Although asynchronous sessions lack the benefit of live communication with peers, they have the benefit of being available on-demand, and require fewer resources in the long run.

As with in-person CAIs, the dog is complementary to the therapy. Research has shown that the dogs are important to in-person CAIs [@binfet2021]; however, the same cannot be said for online CAIs. Without the opportunity for physical contact, the dogs may be unimportant to online interventions. Given the time and money required to train dogs and handlers, it is important that their benefit be justified.

### Hypotheses

The current study tests potential benefits of online CAIs for reducing stress. We also investigated differences in the effectiveness of the intervention based on platform of delivery (synchronous vs. asynchronous) and the presence of a dog (dog is present vs. absent). We predicted the following:

1. Participating in an online intervention would reduce stress.
2. Stress reductions would be greater for synchronous sessions.
3. Stress reductions would be greater when a dog is present.
4. There would be an interaction between the dog's presence and platform of delivery, such that the benefit of the dog would be observed most prominently for synchronous sessions.

### Design Plan

#### Study Design

This study will take place entirely online. Participants will complete a brief online survey, which includes a demographic questionnaire and will establish baseline stress. They will then receive the intervention. The intervention will be administered by trained dog handlers. It involves encouraging students to reflect on their experience at university in a positive way. We will manipulate two variables pertaining to the content and delivery of the intervention. Participants will be randomly assigned to a synchronous or asynchronous session. Synchronous sessions will occur via Zoom with 2--4 participants in each session. Asynchronous sessions are pre-recorded videos with similar content; these will be viewed on YouTube. The other manipulated variable will be whether a dog is present or absent. In all conditions, the intervention will last approximately 5 mins.

#### Measures

Because the intervention is so short, it is necessary to keep the survey similarly brief. As such, stress will be measured using with a single item ("how stressed do you feel right now?") with response options ranging from 1 (*Not at all stressed*) to 5 (*Very stressed*).

#### Analytic Strategy

Hypothesis 1 predicts lower stress at post-intervention. This will be tested using a paired samples *t* test.

The remaining hypotheses will be tested using a 2 (asynchronous vs. synchronous) $\times$ 2 (dog present vs. absent) analysis of variance predicting the difference between stress at pre- and post-intervention.

Hypothesis 2 will be considered supported if the main effect of platform is significant in the model.

Hypothesis 3 will be considered supported if the main effect of the dog is significant in the model.

Hypothesis 4 will be considered supported if the interaction term (between platform and dog) is significant, and if follow-up analyses indicate that this interaction is as hypothesized (i.e., that the presence of the dog is primarily of important for synchronous delivery).

#### Sample Size and Power Analysis

We plan to recruit a sample of *N* = 400 participants, divided evenly across conditions. At $\alpha$ = .05, *N* = 400 will provide 95% power for our first hypothesis if the population effect size is *d*~z~ = 0.16, and 95% power to detect population effects of $\eta^2$ = .03 (approximately *d* = 0.36) for each test pertaining to hypotheses 2--4.

## Assignment Instructions {#fanova-assignment}

### R Script

Produce the following in R:

1. *M* and *SD* of stress at pre- and post-intervention for the whole sample and for each subgroup.
1. Directional paired samples *t* test of the effect of the change in stress for the whole sample (i.e., not separately for each group). Include Cohen's *d*~z~ with its associated 95% CI.
1. A column added to the data frame which shows each participant's change in stress from pre- to post-intervention.
1. A 2$\times$2 ANOVA model as described in the analytic strategy.
1. Estimated marginal means of each of the four conditions.
1. Pairwise comparisons of stress between the four conditions.
1. An interaction plot showing the mean of each of the four conditions.

### Results

Write a Results section, consistent with APA style that includes the following:

* Results of the tests of the four hypotheses.
* *M* and *SD* of stress at pre- and post-intervention for the whole sample and for each subgroup. These could be efficiently reported in a table.
* The interaction plot.

### Discussion Questions

Provide short answer responses to the following:

* Provide a statement of support or non-support for each hypothesis.
* The scale only included five response options. The authors provide justification for why this is; but it is still less than ideal. What problems might result from using such a brief measure?
* This study was testing a specific intervention under four conditions. Based on the results of the study, would you recommend that the intervention be implemented? Under what conditions? Consider not only the results of the significance tests but the size of the effects. Also, consider the relative difficulty of implementing the intervention in each of the four conditions. The greater the difficulty of implementing an intervention, the stronger the evidence it requires.
