# LumenVox_TTS_Base

LumenVox is a speech automation solutions company providing core speech technologies that include the LumenVox Speech Recognizer, Text-to-Speech Engine, Call Progress Analysis, and Speech Tuner, Natural language solutions support and Multifactor Biometric Authentication. We have won numerous awards for innovation and technical excellence. Based on industry standards, LumenVox's core Speech technology is certified as one of the most accurate, natural sounding, and reliable solutions in the industry. The LumenVox technology provides tools for you to effectively deploy speech-enabled applications to improve the Call Center CX and ROI with LumenVox' flexible, cost-effective software suite.

This image serves as a base for a Java Webservice implementation providing LumenVox based Speech Synthesis. It contains two voices (Amanda and Chris) the web, native libs, lame MP3 encoder, the LumenVox Core, Client, and LicenseServer. 

The license code needs to be provided as an environent variable at container launch like this:

>sudo docker run -d --name lvox -e LV_LIC={12345} -p80:80 lvox


 
