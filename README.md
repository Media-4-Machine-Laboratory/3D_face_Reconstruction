# NVidia Jetson을 이용한 얼굴특성분석 및 아바타 제작 기술 개발

**Development of Face Characteristics Analysis and Avatar Generation Technology by NVidia Jetson** <br><br>
_This project improves the limitations of existing technologies by simplifying and standardizing the process of creating 3D avatars using generative artificial intelligence technology from a single 2D image._
***

<h2>Our Model</h2>

- Development of 3D Head Model Synthesis Algorithm Using Generative AI Model<br>
  - 3D Head Model Synthesis SW based on Generative AI Model <br>
<br>

- Development of Matching Technology with Existing 3D Model using Face<br>
  - Face Landmark Prediction-Based 3D Model Matching SW
 
<br>
<h2>Workflow</h2>

<img src="./assets/workflow.png"><br>

<h2>Overview</h2>
The goal of this work is to generate a 3D avatar model using a single 2D image.  <br><br>
1) Data augmentation is performed using the original image as an image that can represent the entire head including the face through the PanoHead. (512*512(px)*60fps * 4s)  <br><br>
2) The first frame of the image generated in the above process (which corresponds to the front face image) is extracted, the feature points of the face are extracted through the MediaPipe library, and this is reconstructed in three dimensions. In this case, the image of the first frame becomes the Texture of the reconstructed 3D avatar model.  <br><br>
3) At the same time, 3D objects are created from image data through PanoHead, and the two files are rearranged to construct the final 3D model.  
<br>
<br>
<h2>Demo</h2>
<img width="729" alt="스크린샷 2024-02-15 오후 6 22 21" src="https://github.com/Media-4-Machine-Laboratory/3D_face_Reconstruction/assets/126739106/3f3998c3-604d-4dbb-9ff0-dc1e0b1b84d5"><br>

<h2>Result</h2>
- Similar shapes and structures for the entire face of object files created by MediaPipe and PanoHead.<br>
- Verify that each object file is placed like 3D Avatar through a script on the Blender.
