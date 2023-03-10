# Univariate ANOVA {#anova}

## Learning Objectives {#anova-learning-objectives}

After completing this lab, you should be able to do the following using R:

* Conduct univariate ANOVA omnibus tests.
* Perform pairwise comparisons with corrections for familywise error.
* Specify and test planned contrasts.

Additionally, you should be able to do the following:

* Report the results of ANOVAs with pairwise comparisons or planned contrasts in APA style.
* Interpret the results of the aformentioned tests.

## The Study: Emoji and Emotion {#anova-study}

Emoji are pictographs representing a wide range of facial expressions, symbols, and objects, and are administered by the Unicode Consortium [@emojilist]. As of November 2019 [@emojilist], there are 1719 standard emoji currently in use. While the first emoji were developed in 1999, they have become increasingly common and influential since 2010 when Apple began supporting emoji on iPhone software [@bai2019; @novak2015]. Emoji are frequently used across a variety of online platforms, and although they originated in Japan, they are currently used worldwide [@bai2019; @ljubesic2016]. In fact, the "face with tears of joy" emoji was even selected as the Oxford Dictionaries Word of the Year in 2015 [@wang2015].

### Emoji in Computer-Mediated Communication {-}

Much of the research on emoji has focused on their functions within computer-mediated communication (CMC) [@bai2019]. One of the core limitations of using CMC for interpersonal relationship development and maintenance is that it precludes many of the non-verbal cues available in face-to-face interactions (such as facial expression and body language). At the same time, social information processing theory (SIP) suggests that CMC users adapt to the cues that are available in order to produce effective interpersonal communications [@walther1992; @walther2011]. One such cue is emoji, which can perform a number of important communication functions. Emoji are adept at conveying information typically communicated through facial expressions, as neural responses to emoji and their corresponding facial expressions are largely similar [@gantiva2019]. Furthermore, emoji may be particularly effective when used as a substitute for nonverbal cues in asynchronous electronic communication, when conversation partners respond after a delay rather than in real time [@alshenqeeti2016].

Interview- and survey-based research has also supported the hypothesis that emoji are important for conveying emotional information in computer-mediated contexts. For example, @kelly2015 interviewed people about their use of emoji, and found that they were important for expressing emotion and maintaining relational connection during computer-mediated communication. Similarly, @cramer2016 identified several reasons people use emoji in mobile messaging, including adding emotional meaning or situational context, adjusting tone, and maintaining conversations and relationships. CMC users express themselves through emoji, using them to establish emotional tone and communicate friendly intentions (Kaye et al., 2016). Users can also express their personality through emoji, which can enhance interpersonal connections by filling in nonverbal cues typically absent from computer-mediated messages [@chairunnisa2017]. Emoji may be particularly suited for communicating positive emotions like joy, and so may contribute to maintaining and enhancing social relationships online [@riordan2017]. Finally, emoji can enable people to express ideas that they find difficult to express using words [@prada2018].

In addition to expressing emotion, emoji can also be used to modify the emotional content expressed in the text of an electronic message. For example, they can be used to reduce ambiguity in electronic communication, such as by establishing emotional tone and lightening the mood in a message that could be interpreted as sarcastic or negative [@kaye2016]. Similarly, among Spanish WhatsApp users, emoji are used both to upgrade (intensify) and downgrade (soften) speech acts, which can include emotional content [@sampietro2019]. Additionally, @zhou2017 found that Chinese WeChat users employed emoji to both amplify and modulate the emotional content of their instant messages. Finally, @prada2018 studied motivations for using emoji; their research suggests that emoji are often used to indicate irony or sarcasm. Thus, emoji are critical to understanding the emotional content of social media posts, text messages, or other computer-mediated communication.

### The Current Study {-}

The current study investigates the emotional content of emoji, as well as how they differ based on the categories assigned by Unicode. Unicode, the governing body that administers emoji, classifies them in eight categories: Smileys and Emotion, People and Body, Animals and Nature, Food and Drink, Travel and Places, Activities, Objects, Symbols, and Flags. We predict that emoji’s emotional content will differ based on their category. Specifically, we tested the hypothesis that…

### Method {-}

The sample for this study consisted of approximately 1,000,000 English tweets gathered from Twitter in November 2019. Approximately 25% of these tweets contained at least one emoji. Emotional scores for each emoji were produced by averaging the scores on the NRC Emotion Lexicon for the tweets containing that emoji. We only retained emoji that occurred at least 50 times in the sample, yielding a total of 549 emoji rated on 10 emotional dimensions.

## Lab Report Instructions {#anova-assignment}

For this lab report, you will be analyzing *real* data and testing a hypothesis that is--as of yet--untested.

Import the data file into R:


```r
mle <- readRDS("MLE.rds")
```

This data frame contains numerical ratings of 10 emotions (anger, anticipation, disgust, fear, joy, sadness, surprise, trust, negative, and positive). It also contains a column with the category of each emoji.

Generate a hypothesis about how emoji differ in emotional content based on category. Your hypothesis should have one outcome variable that is one of the 10 emotions. It should have one categorical predictor variable with three or more levels (that is, it should include three or more of the categories of emoji). Your hypothesis should include both an omnibus prediction and specific planned contrasts.

### R Script

1. Compute the *M* and *SD* of your outcome emotion for each level of your predictor variable.
2. Conduct an ANOVA to test your hypothesis. You will need to convert the category variable to a factor. You may also need to subset your data.
3. Conduct your planned contrasts. 
4. Produce a figure that vizualizes the differences between categories on your outcome variable.

### Manuscript

#### Method {-}

* State your hypothesis clearly, including the groups and outcome variable you are using, your omnibus hypothesis, and your planned contrasts.
* Briefly describe your analytic strategy. 

#### Results {-}

Report the following in your Results section:

* Number of emoji in each group included in your analysis.
* *M* and *SD* on the outcome variable for each group.
* Results of your ANOVA and planned contrasts.
* Description of efforts to diagnose problems with statistical assumptions and data distributions.
* A figure visualizing the relationship between your grouping and outcome variables.
* The figure should display individual data points as well as a measure of central tendency (e.g., mean, median) for each group.

### Discussion Questions

* Provide a statement of support or non-support for your hypotheses (both your omnibus hypothesis and planned contrasts). Restate your findings in plain language (i.e., without reference to specific statistical tests or values).
* Based on your analysis, are the Unicode-provided categories useful in explaining variation in emotional content of emoji? Your answer should reference both the effect size for your ANOVA and the spread of values displayed in your figure.
* Describe one limitation of the study and how it may have influenced findings. 
* What is an implication of your analysis for research in this field, users of emoji, or industries/products related to emoji?
