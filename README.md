# KarateProject for testing https://www.screenshotapi.net/
# More details on the karate framework for API automation: https://github.com/karatelabs/karate

Currently the repo has 3 feature files in src/test/java source folder
1. advancedParameters.feature
2. errors.feature
3. generalParameters.feature

</br>
<h> <b> advancedParameters.feature</b> </h>
<p> This feature file contains the scenarios which tests some of the advanced parameters to generate the screenshot url. </p>

<h> <b> errors.feature </b> </h>
<p> This feature file contains the scenarios which tests some of the error messages from the server when the parameters are not correct </p>

<h> <b> generalParameters </b> </h>
<p> This feature file contains the scenarios which test some of the general parameters to generate the screenshot url. </p>

</br>
<h> <b> How to Run the test scenarios? </b> </h>
<p> Just execute the <b>"KarateRunner.java"</b> file with location "/KarateProject/src/test/java/testScreenshotAPI/KarateRunner.java", as the <b>JUnit Test</b>. </p>
<p> This runner will execute all the feature files under the folder in which it resides. </p>

</br>
<p> Note: This is just a basic Karate framework without any tags, does not include karate config file. Also, not including the paraller runner file. <p/>
<p> Not included any comments in the feature file since the feature name and scenario description is self explanatory </p>
<p> These are not all the scenarios, just selected few different ones to automate. </p>
