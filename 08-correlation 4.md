# Correlation {#cor}

## Learning Objectives {#cor-learning-objectives}

After completing this lab, you should be able to do the following using R:

* Calculate bivariate correlations between continuous variables.
* Conduct significance tests of the correlation between two continuous variables.
* Create an appropriate visualization for the relationship between two continuous variables.

Additionally, you should be able to do the following:

* Report correlations in APA style.
* Interpret the findings of a correlation test. 

## The Study: Psychopathy and Pain Tolerance {#cor-study}

Psychopathy is a trait marked by reduced empathy, emotional response, and behavioural control. Past research has demonstrated a positive association between psychopathy and higher pain tolerance. Some researchers believe that a higher tolerance for physical pain may be linked to a lack of empathy and willingness to harm others, which are characteristic traits of people with high levels of psychopathy. At the same time, most research on psychopathy has used samples of incarcerated people, and there has been relatively little attention paid to psychopathy within the general (i.e., non-incarcerated) population. The goal of this study is to investigate the association between psychopathy and pain tolerance in a non-incarcerated sample.

### Hypothesis

It is expected that psychopathy will be associated with higher pain tolerance.

### Procedure

Participants will be 110 undergraduate students recruited through SONA. This study will be completed in-person under the supervision of a trained research assistant. After providing informed consent, participants will respond to a questionnaire which includes questions about demographic characteristics and a measure of psychopathy. They will then be fitted with a heart rate monitor and their baseline heart rate will be established. Participants will then complete a cold pressor test. They will be compensated for their time by receiving course credit in a participating course.

### Measures

Psychopathy will be measured using the Levenson Self-Report Psychopathy Scale (LSRP). The LSRP was designed to measure psychopathy in non-institutionalized settings [@lsrp1995]. It is free to use and simple to administer. Participants report their agreement with 26 statements, using the response options: 1 (*disagree strongly*), 2 (*disagree somewhat*), 3 (*agree somewhat*), and 4 (*agree strongly*). Some items are reverse-coded, and then all items are summed to produce a composite measure of psychopathy. @lsrp1995 proposed the following cut-offs:

* 0--48: non-psychopathic,
* 49--57: mixed,
* &ge;58: psychopathic.

Pain tolerance will be measured using a cold pressor test. The cold pressor test is a standardized and widely used measure of pain tolerance. Participants are asked to submerse one hand in a cold water container (3--4 &#176;C) for as long as they can. They are instructed to inform the research assistant as soon as they begin to feel pain and to remove their hands from the cold water when the pain becomes intolerable. Each participant's pain tolerance is the amount of time between reporting first feeling pain and removing their hand from the water.

### Analytic Strategy

We will conduct a directional null hypothesis significance test of the simple bivariate correlation between LSRP total scores and pain tolerance at the traditional $\alpha$ = .05.

### Sample Size and Power Analysis

We plan to recruit 110 participants to complete this study. This is based on a power analysis that identified *N* = 101 is required to for 95% power if the population effect size is *r* $\ge$ .32. This effect size corresponds to approximately 10% shared variance between two variables. We are aiming to recruit 110 participants to allow for the possibility that some participants may need to be excluded from analysis (e.g., if data are missing).

## Data Collection {#cor-data}

A demo version of the LSRP is available online from the [PsyToolKit website](https://www.psytoolkit.org/cgi-bin/3.3.2/survey?s=hrPKM).

### Codebook


|Variable  |Description                                                                |
|:---------|:--------------------------------------------------------------------------|
|Part      |participant number                                                         |
|gender    |Self-reported gender: man, woman, or non-binary                            |
|LSRP      |Total score on the Levenson Self-report Psychopathy scale                  |
|Threshold |Time in seconds from submersion until the participant reports feeling pain |
|Tolerance |Total time submerged minus the threshold                                   |
|HR_B      |Baseline heart rate measure before cold pressor test                       |
|HR_CP     |Average heart rate during cold pressor test                                |

## Lab Report Instructions {#cor-assignment}

### R Script

1. Use `cor()` to do the following:
    a. Calculate the bivariate correlation between LSRP and Tolerance.
    b. Calculate the bivariate correlation between HR_B and HR_CP.
    d. Compute a correlation matrix between all variables.
2. Use `psych::corr.test()` to do the following:
    a. Produce a correlation matrix between all variables and *p* values for all correlations.
3. Use `cor.test()` to do the following:
    a. Test the correlation between LSRP and Tolerance.
4. Use `lm()`, `scale()`, `summary()`, `residuals()`, and `shapiro.test()` to do the following:
    a. Compute the bivariate correlation between SRP and Tolerance. Check the value matches what you obtained in prior steps.
    b. Conduct a test of the non-normality of the residuals.
5. Use the `ggplot2` package to create a scatter plot with linear trendline showing the relationship between SRP and Tolerance.

### Results

The results section should include the following:

* Total number of subjects.
* *M* and *SD* for psychopathy and pain tolerance variables.
* Results of the null-hypothesis significance test for the correlation between psychopathy and pain tolerance.
* Description of efforts to diagnose problems with statistical assumptions and data distributions.
* A figure visualizing the relationship between psychopathy and pain tolerance. The figure should display individual data points as well as a trendline reflecting the relationship between the two variables. The figure note should include the *r* value for the relationship between psychopathy and pain tolerance.
* A correlation table containing bivariate correlations for all variables in the dataset. 

### Discussion Questions

Provide short answer responses to the following:

* Provide a statement of support or non-support for your primary hypothesis. Restate your findings in plain language (i.e., without reference to specific statistical tests or values).
* Although your primary hypothesis was about the relationship between psychopathy and pain tolerance, you also measured other variables. What conclusions or interpretations could you draw from these relationships (i.e., those presented in the correlation table)?
* Describe one limitation of the study and how it may have influenced the findings. 
* What is an implication of this research for future research, programs, or policy?
