
**This CODE BOOK was created as a part of a Course project to provide a detailed description of the dataset obtained as a result of manipulation with original Samsung data.**


Steps performed in order to manipulate data are described in README file.


Original data contained following measures:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

The goal of the project was to obtain tidy data set that was grouped by subject and performed activity and contained average values of all mean and standard deviation observations from the original Samsung data set.



**Resulting tidy data set contains 180 observations and 68 variables. Variables are as follows**:


```
subject
```
ID of the subject from a group of 30 volunteers within an age bracket of 19-48 years:


```
activity
```
Activity performed by the test subject while wearing a smartphone (Samsung Galaxy S II) on the waist. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

```
time_Body_Accelerometer_signal_X_Mean_value
time_Body_Accelerometer_signal_Y_Mean_value
time_Body_Accelerometer_signal_Z_Mean_value
```
three variables above represent average  of the original mean value of the time domain signals captured at a constant rate of 50 Hz. 
Variables represent 3-axial raw acceleration signal of the body measured by accelerometer. X,Y,Z in the variable name describes each axial. 

```
time_Body_Accelerometer_signal_X_Standard_deviation	
time_Body_Accelerometer_signal_Y_Standard_deviation
time_Body_Accelerometer_signal_Z_Standard_deviation
```

three  variables above represent average  of the original standard deviation value of the time domain signals captured at a constant rate of 50 Hz. 
Variables represent 3-axial raw acceleration signal of the body measured by accelerometer. X,Y,Z in the variable name describes each axial. 


```
time_Gravity_Accelerometer_signal_X_Mean_value
time_Gravity_Accelerometer_signal_Y_Mean_value
time_Gravity_Accelerometer_signal_Z_Mean_value
```
three variables above represent average  of the original mean value of the time domain signals captured at a constant rate of 50 Hz. 
Variables represent 3-axial raw gravity acceleration signal separated from body signal using another low pass Butterworth filter with a corner frequency of 0.3 Hz  measured by accelerometer. X,Y,Z in the variable name describes each axial. 


```
time_Gravity_Accelerometer_signal_X_Standard_deviation
time_Gravity_Accelerometer_signal_Y_Standard_deviation
time_Gravity_Accelerometer_signal_Z_Standard_deviation
```
three variables above represent average  of the original standard deviation value of the time domain signals captured at a constant rate of 50 Hz. 
Variables represent 3-axial raw gravity acceleration signal separated from body signal using another low pass Butterworth filter with a corner frequency of 0.3 Hz  measured by accelerometer. X,Y,Z in the variable name describes each axial.


```
time_Body_Accelerometer_Jerk_signal_X_Mean_value
time_Body_Accelerometer_Jerk_signal_Y_Mean_value
time_Body_Accelerometer_Jerk_signal_Z_Mean_value
```
linear acceleration and angular velocity measured by accelerometer were derived in time to obtain Jerk signals described by three variables above. X,Y,Z in the variable name describes each axial.
Variables represent average of original mean value.

```
time_Body_Accelerometer_Jerk_signal_X_Standard_deviation
time_Body_Accelerometer_Jerk_signal_Y_Standard_deviation
time_Body_Accelerometer_Jerk_signal_Z_Standard_deviation
```

linear acceleration and angular velocity measured by accelerometer were derived in time to obtain Jerk signals described by three variables above. X,Y,Z in the variable name describes each axial.
Variables represent average of original standard deviation value.


```
time_Body_Gyroscope_signal_X_Mean_value
time_Body_Gyroscope_signal_Y_Mean_value
time_Body_Gyroscope_signal_Z_Mean_value
```
three variables above represent average  of the original mean value of the time domain signals captured at a constant rate of 50 Hz. 
They represent 3-axial raw acceleration signal of the body measured by gyroscope. X,Y,Z in the variable name describes each axial. 


```
time_Body_Gyroscope_signal_X_Standard_deviation
time_Body_Gyroscope_signal_Y_Standard_deviation
time_Body_Gyroscope_signal_Z_Standard_deviation
```
three variables above represent average  of the original standard deviation value of the time domain signals captured at a constant rate of 50 Hz. 
They represent 3-axial raw  signal of the body measured by gyroscope. X,Y,Z in the variable name describes each axial. 

```
time_Body_Gyroscope_Jerk_signal_X_Mean_value
time_Body_Gyroscope_Jerk_signal_Y_Mean_value
time_Body_Gyroscope_Jerk_signal_Z_Mean_value
```
linear acceleration and angular velocity measured by gyroscope were derived in time to obtain Jerk signals described by three variables above. X,Y,Z in the variable name describes each axial.
Variables represent average of original mean values.


```
time_Body_Gyroscope_Jerk_signal_X_Standard_deviation
time_Body_Gyroscope_Jerk_signal_Y_Standard_deviation
time_Body_Gyroscope_Jerk_signal_Z_Standard_deviation
```

linear acceleration and angular velocity measured by gyroscope were derived in time to obtain Jerk signals described by three variables above. X,Y,Z in the variable name describes each axial.
Variables above represent average of original standard deviation values.


```
time_Body_Accelerometer_signal_Magnitude_Mean_value
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional signal of body acceleration measured by accelerometer.
Variable represents average of the original mean value

```
time_Body_Accelerometer_signal_Magnitude_Standard_deviation
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional signal of body acceleration measured by accelerometer.
Variable represents average of the original standard deviation value

```
time_Gravity_Accelerometer_signal_Magnitude_Mean_value
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional signal of body acceleration measured by accelerometer.
Variable represents average of the original mean value


```
time_Gravity_Accelerometer_signal_Magnitude_Standard_deviation
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional signal of body acceleration measured by accelerometer.
Variable represents average of the original standard deviation value

```
time_Gravity_Accelerometer_Jerk_signal_Magnitude_Mean_value
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional acceleration jerk signal  measured by accelerometer.
Variable represents average of the original mean value


```
time_Gravity_Accelerometer_Jerk_signal_Magnitude_Standard_deviation
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional acceleration jerk signal  measured by accelerometer.
Variable represents average of the original standard deviation value

```
time_Body_Gyroscope_signal_Magnitude_Mean_value
```
variable above were calculated using the Euclidean norm and represent the magnitude of three-dimensional signal of body acceleration measured by gyroscope.
Variable represents average of the original mean value

```
time_Body_Gyroscope_signal_Magnitude_Standard_deviation
```
variable above were calculated using the Euclidean norm and represent the magnitude of three-dimensional signal of body acceleration measured by gyroscope.
Variable represents average of the original standard deviation value

```
time_Body_Gyroscope_Jerk_signal_Magnitude_Mean_value
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional acceleration jerk signal  measured by gyroscope.
Variable represents average of the original mean value

```
time_Body_Gyroscope_Jerk_signal_Magnitude_Standard_deviation
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional acceleration jerk signal  measured by gyroscope.
Variable represents average of the original standard deviation value

```
frequency_Body_Accelerometer_signal_X_Mean_value
frequency_Body_Accelerometer_signal_Y_Mean_value
frequency_Body_Accelerometer_signal_Z_Mean_value
```
three variables above represent average  of the original mean value of the frequency domain signals. They were obtained by applying  Fast Fourier Transform (FFT) to corresponding body acceleration signals mesured by Accelerometer. X,Y,Z in the variable name describes each axial. 


```
frequency_Body_Accelerometer_signal_X_Standard_deviation
frequency_Body_Accelerometer_signal_Y_Standard_deviation
frequency_Body_Accelerometer_signal_Z_Standard_deviation
```
three variables above represent average  of the original standard deviation value of the frequency domain signals. They were obtained by applying  Fast Fourier Transform (FFT) to corresponding body acceleration signals measured by accelerometer. X,Y,Z in the variable name describes each axial. 

```
frequency_Body_Accelerometer_Jerk_signal_X_Mean_value
frequency_Body_Accelerometer_Jerk_signal_Y_Mean_value
frequency_Body_Accelerometer_Jerk_signal_Z_Mean_value
```
three variables above represent average  of the original mean value of the frequency domain signals. They were obtained by applying  Fast Fourier Transform (FFT) to corresponding body acceleration jerk signal measured by accelerometer. X,Y,Z in the variable name describes each axial. 

```
frequency_Body_Accelerometer_Jerk_signal_X_Standard_deviation
frequency_Body_Accelerometer_Jerk_signal_Y_Standard_deviation
frequency_Body_Accelerometer_Jerk_signal_Z_Standard_deviation
```
three variables above represent average  of the original standard deviation value of the frequency domain signals. They were obtained by applying  Fast Fourier Transform (FFT) to corresponding body acceleration jerk signals measured by accelerometer. X,Y,Z in the variable name describes each axial. 

```
frequency_Body_Gyroscope_signal_X_Mean_value
frequency_Body_Gyroscope_signal_Y_Mean_value
frequency_Body_Gyroscope_signal_Z_Mean_value
```
three variables above represent average  of the original mean value of the frequency domain signals. They were obtained by applying  Fast Fourier Transform (FFT) to corresponding body acceleration jerk signal measured by gyroscope. X,Y,Z in the variable name describes each axial. 

```
frequency_Body_Gyroscope_signal_X_Standard_deviation
frequency_Body_Gyroscope_signal_Y_Standard_deviation
frequency_Body_Gyroscope_signal_Z_Standard_deviation
```
three variables above represent average  of the original standard deviation value of the frequency domain signals. They were obtained by applying  Fast Fourier Transform (FFT) to corresponding body acceleration signals mesured by gyroscope. X,Y,Z in the variable name describes each axial. 


```
frequency_Body_Accelerometer_signal_Magnitude_Mean_value
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional body acceleration signal  measured by accelerometer.
Variable represents average of the original mean value

```
frequency_Body_Accelerometer_signal_Magnitude_Standard_deviation
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional body acceleration signal  measured by accelerometer.
Variable represents average of the original standard deviation value

```
frequency_Body_Accelerometer_Jerk_signal_Magnitude_Mean_value
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional acceleration jerk signal  measured by accelerometer.
Variable represents average of the original mean value

```
frequency_Body_Accelerometer_Jerk_signal_Magnitude_Standard_deviation
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional acceleration jerk signal  measured by accelerometer.
Variable represents average of the original standard deviation value

```
frequency_Body_Gyroscope_signal_Magnitude_Mean_value
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional body acceleration  signal  measured by gyroscope.
Variable represents average of the original mean value

```
frequency_Body_Gyroscope_signal_Magnitude_Standard_deviation
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional body acceleration  signal  measured by gyroscope.
Variable represents average of the original standard deviation value

```
frequency_Body_Gyroscope_Jerk_signal_Magnitude_Mean_value
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional body acceleration jerk signal  measured by gyroscope.
Variable represents average of the original mean value

```
frequency_Body_Gyroscope_Jerk_signal_Magnitude_Standard_deviation
```
variable above was calculated using the Euclidean norm and represent the magnitude of three-dimensional acceleration jerk signal  measured by gyroscope.
Variable represents average of the original standard deviation value




The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

