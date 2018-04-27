# CT_Homework5
Control Theory Homework5

## Description of Task
In this task I should offered to find trajectory of imaginary Lego Robot using pinned gathered data from camera and robot. I needed to use different algorithms of finding trajectory and to apply KF/PF.

## Introduction
I decided to use Matlab, because it is easy to draw plots there. But I faced with problem that there are semi-colons in data file that cannot be read be Matlab. So, first of all, I imported tables to Google Tables and got rid of semi-colons. Thus, I received two txt files that contain data divided by spaces. (I also put these *.txt* files in repository). Their names are ***camera_log.txt*** and ***robot.txt***. 

## Using Data from Camera (hw5.m)
The first algorithm uses data from camera. It reads  data from attached file and then draw a plot using these data. 
*There are two plots: **Trajectory.png** and **Trajectory3D.png** (it shows trajectory with changing in time)*

To run this code, you need to run *hw5.m* file (also data file should be in the same folder)

## Using Data from Robot's data (hw5_2.m)
The second one uses data from robot. It reads data from attached file and then draw a plot using these data. All the calculations were made according to *differentialDrive.pdf* file that was pinned to homework description.
*Plot: **robot_trajectory.png***

To run this code, you need to run *hw5_2.m* file (also data file should be in the same folder).
