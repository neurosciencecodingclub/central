# Translating code from MATLAB to Python (_& vice versa_)  
### Presented by Jon Moler, Neuroscience PhD Student  ⬩  **03/20/2026**
See the raw powerpoint [here](https://docs.google.com/presentation/d/1Jy-DHpR4Q531xMjF0lB4gYt44nAziqvq/edit?usp=sharing&ouid=101472612575020551817&rtpof=true&sd=true)  

## Slides and Minutes
### <img width="1280" height="720" alt="Slide1" src="https://github.com/user-attachments/assets/a78f4be4-3d18-4465-83c8-5ee4532eefdc" />

### <img width="1280" height="720" alt="Slide2" src="https://github.com/user-attachments/assets/d38eb80c-6ed6-429d-8b90-334207f31d65" />

### <img width="1280" height="720" alt="Slide3" src="https://github.com/user-attachments/assets/77e76d40-0413-4a0f-8a9b-ef518a79ff44" />

### <img width="1280" height="720" alt="Slide4" src="https://github.com/user-attachments/assets/d9c51ee9-af19-4a23-b8f7-2af9962967c8" />

---

### Why MatLab?  
* Connection to biological research
* Universities commonly use
* Intuitive 

### Why Python
* Free
* Open source
* Widespread adoption
* Fun fact - AI is built on python
* Every field has support programs within python 
* Obtained by downloading

---
  
### <img width="1280" height="720" alt="Slide5" src="https://github.com/user-attachments/assets/74bf919d-47a0-4341-8285-6edc2d2abbce" />

---

### Platform exclusive functions with software
* MATLAB FFT vs python rFFT
* MATLAB is bulky 
* Python is modular and pick what you want to use in python and stick it in other platforms
* Python is Linux friendly MATLAB not so much
* Python has more support for niche use cases because python has become widespread

### Interacting with code in general
* Need to have a place to type it
* Have an engine to run what you require
* Methods of debugging when problems inevitably arrive
* Support complex math functions
* MATLAB has every function built in while python needs to find a third party editor, debugging tools, individual packages, etc.  
  
**Time efficient -** MATLAB  
**Learning coding -** Python  
  
---
  
### <img width="1280" height="720" alt="Slide6" src="https://github.com/user-attachments/assets/405216b3-de0c-4498-b0c1-29f6224021ec" />
  
### <img width="1280" height="720" alt="Slide7" src="https://github.com/user-attachments/assets/2c3d073c-b559-47bf-a77a-1d16e55b4fd7" />
  
---

### Common file formats  
* Generic Binary : `.dat`, `.bin`
* Scientific Data: `.h5` **(lifesaver in moving data)**, `.mat`
* Images: `.tiff`, `.eps`
### Common environments
* Anaconda
* Miniconda
  
---
  
### <img width="1280" height="720" alt="Slide8" src="https://github.com/user-attachments/assets/d779030c-2c32-44e0-bc86-b09b020b9ac7" />
  
### <img width="1280" height="720" alt="Slide9" src="https://github.com/user-attachments/assets/487fef44-533e-4ecc-af2f-53ee37b3ca0f" /> 
### <img width="1280" height="720" alt="Slide10" src="https://github.com/user-attachments/assets/74ab7f7a-ffbf-41fe-af41-aa94091cda7f" />
  
*note the fact the MATLAB slide (above) is in one window, wheras the Python slide contains several different windows*  

### <img width="1280" height="720" alt="Slide11" src="https://github.com/user-attachments/assets/6a4784ac-e38c-426a-b238-fafc44fa3704" />
  
### <img width="1280" height="720" alt="Slide12" src="https://github.com/user-attachments/assets/bb9e6e20-3131-49ac-a117-02216fa89560" />

#### Link from slide
* [Mathesaurus: NumPy for MATLAB Users](https://mathesaurus.sourceforge.net/matlab-numpy.html)
  
### <img width="1280" height="720" alt="Slide13" src="https://github.com/user-attachments/assets/bc8a7031-0774-4701-bbe8-7e91a7119bcd" />  

### MATLAB embraces Python
* MATLAB engine can be called from Python and run code for MATLAB in Python

#### Links from slide
* [Mathworks: Using MATLAB with Python](https://www.mathworks.com/products/matlab/matlab-and-python.html)
* [Mathworks: Call Python from MATLAB](https://www.mathworks.com/help/matlab/call-python-libraries.html)
<img width="1280" height="720" alt="Slide14" src="https://github.com/user-attachments/assets/5322ea83-218d-448e-8fc4-8af29865fdab" />
  
### MATLAB → Python: Must Have Packages  
  
---
  
  [![NumPy](https://img.shields.io/badge/NumPy-4DABCF?logo=numpy&logoColor=fff)](#) [![Matplotlib](https://custom-icon-badges.demolab.com/badge/Matplotlib-71D291?logo=matplotlib&logoColor=fff)](#) ![SciPy](https://img.shields.io/badge/SciPy-%230C55A5.svg?&logo=scipy&logoColor=%white) [![Pandas](https://img.shields.io/badge/Pandas-150458?logo=pandas&logoColor=fff)](#)  
* **Numpy :** mathematical operations
* **Matplotlib:** Plotting and visualization
* **Scipy:** Science focused functions
* **Pandas:** Organizing and labeling (Used often for big data sets)
  
---
  
### <img width="1280" height="720" alt="Slide15" src="https://github.com/user-attachments/assets/88d458e6-218a-4de2-b797-c7c4d24e2462" />
  
---
  
### How data is handled
| | MATLAB | Python |
|-|    -   |    -   |
|Data efficiency | Column-major | Row-major (_numpy_)|
|Syntax | `thisMatrix(1,2)` | `thisMatrix[0,1]`
| Indexing | 1-based | 0-based |

### Establish the precision of your data
* Numerous types
  * Single(float32), double(float64), integer, unsigned integer, etc
* Rounding errors mess up data (Number 1 evil)

### Other notes
* Advice - write notes in code
  * Especially helpful if others have to help your code
* Helpful platforms:  
[![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](#) ![Jupyter](https://img.shields.io/badge/Jupyter-ffffff?logo=Jupyter)  
  * Github
  * Jupyter Notebook
  
---
  
### <img width="1280" height="720" alt="Slide16" src="https://github.com/user-attachments/assets/f5aeae50-f572-44e5-a8e3-2c41b583c8f5" />
  
