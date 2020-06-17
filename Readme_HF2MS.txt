HF2MS: A Toolkit for Haptic Force Feedback inthe Master Site of a Telesonography System

Getting Started:
In this example, we p
Prerequisites
1. MATLAB R2018a (classromm licence, including simulink coder and simulink coder)
2. QUARC 2.7
3. Blender 2.49
4. 5DOF Haptic Wand Quanser
5. Visual Studio 2015

Installing:
1. Uplad the folder in the matlab. Open the downloaded folder in the matlab and add the folder to the path. 
2. Run the "setup_wand.m"
3. Open and Run the "q_5dof_wand_calib.mdl"
4. Open the "q_5dof_wand_vr_sphere_collision_atia.mdl"
5. in "q_5dof_wand_vr_sphere_collision_atia.mdl", open Visualization block
6. On the left menu bar, open the "Meshes", and Press "Add" botton. 
7. Upload the "box_1mm_0-0-0.x3d", and press "Add with Actor" botton.
8. Press "Animation"
9. Set the Coordinate of the system on "0 0 -0.75", Press "Save the Changes".
10. Run the "stlread.m" with input data of"Box-1mm-0-0-0.5.STL".
11. Run the "atia_centroid.m" with the out put from step 10, and place the COM on "0 0 -0.075"
12. Open "Virtual Cube" block in "q_5dof_wand_vr_sphere_collision_atia.mdl", then open"Virtual Object" block.
13. Insert the input from 11 as the input and RUN the ""q_5dof_wand_vr_sphere_collision_atia.mdl". 

Reference:
Quanser Inc. 
 Philippe Lebel (2020). GJK Algorithm Distance of Closest Points in 3D. Philippe Lebel (2020). GJK AlgorithmDistance of Closest Points in 3D. (https://www.mathworks.com/matlabcentral/fileexchange/62429-gjkalgorithm-distance-of-closest-points-in-3d), MATLAB Central File Exchange. Retrieved February 7, 2020
 Doron Harlev (2020). Stlread. Doron Harlev (2020). Stlread.(https://www.mathworks.com/matlabcentral/fileexchange/6678-stlread), MATLAB Central File Exchange.Retrieved February 6, 2020