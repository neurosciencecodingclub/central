# NEURON Simulator Workshop
### Presented by the Brainwave Society and Neuroscience Coding Club  ⬩  **10/21/2026**
See the raw powerpoint [here](https://drive.google.com/file/d/1MRYVsnqoxv5FVLu_-Buc_fzsUGe6a1vo/view?usp=sharing)  

*Note.* The attached `.ipynb` is identical to [this Colab Notebook](https://colab.research.google.com/drive/12bk2Ak5HEUlr8m7ajVuqIgO0WUvfdFr5?usp=sharing). We presented on the Colab Notebook but have also uploaded an identical `.ipynb` to this folder for convenience. 

## Slides and Minutes
<img width="4400" height="2475" alt="Slide1" src="https://github.com/user-attachments/assets/a9abe1d5-f892-4035-80e1-c9f41c2d1e05" />
<img width="4400" height="2475" alt="Slide2" src="https://github.com/user-attachments/assets/961d2c4f-affe-4c5e-b7c7-ff5195296a9b" />
<img width="4400" height="2475" alt="Slide3" src="https://github.com/user-attachments/assets/638a28c2-8798-4c23-8e20-28d018ef5299" />

### <img width="4400" height="2475" alt="Slide4" src="https://github.com/user-attachments/assets/5859a8f1-3d18-4ba7-9851-16668b299e13" />

### <img width="4400" height="2475" alt="Slide5" src="https://github.com/user-attachments/assets/7723e7b3-622e-4736-b1d2-348d5af43f4f" />

---

Using a modified Ohm’s law we describe a biological system using the physical principles and mechanisms underlying its behavior 
* Meaning, neuronal properties like ion movement are represented by mathematical equations that can explain or simulate neuronal activity

Where:
* $I$ = current
* $g$ = conductance
* $V$ = voltage
* $E$ = equilibrium potential


---

### <img width="4400" height="2475" alt="Slide6" src="https://github.com/user-attachments/assets/022fbeb7-e0b5-41ac-a9be-37f9bc7ab8e4" />

---

Neurons contain several important ions, including Na<sup>+</sup>, K<sup>+</sup>, Ca<sup>2+</sup>, and Cl<sup>-</sup>. 

Let us focus on Na<sup>+</sup> and K<sup>+</sup> because their movement across the membrane drives the rising and falling phases of the action potential.

---

<img width="4400" height="2475" alt="Slide7" src="https://github.com/user-attachments/assets/9ae0570b-c944-4bf0-8116-5c98d1a28b2b" />

---

Neurons naturally maintain different ion concentrations across their membranes: sodium (Na<sup>+</sup>) is more concentrated outside the cell, while potassium (K<sup>+</sup>) is more concentrated inside. 
* We know that ions tend to move down their concentration gradients, from higher to lower concentrations, but ions also carry electrical charges
* Which means they are also influenced by the electrical potential difference across the membrane

Together, the concentration difference and membrane voltage create a driving force on each ion.
* $g_{Na}$ or sodium conductance describes how easily Na⁺ can cross the membrane through available/open Na+ channels
* $g_K$ or potassium conductance describes how easily K⁺ crosses the membrane through available/open K+ channels
* $g_L$ represents the collective "Leak" of all other channels & associated ions (H<sup>+</sup>, Ca<sup>2+</sup>, Cl<sup>-</sup>, etc.)

---

<img width="4400" height="2475" alt="Slide8" src="https://github.com/user-attachments/assets/02d699f8-7001-4da4-ab88-da5f34047091" />

---

This circuit is a simplified electrical equivalent of a biological neuron's membrane.
* By translating this circuit into mathematical equations, we can model changes in membrane potential over time

---

<img width="2273" height="1279" alt="Slide9compressed" src="https://github.com/user-attachments/assets/04910ddc-e3e2-4d46-b67b-0b34fccd35aa" />

---

**What is the significance of studying a single axon in isolation?**
* One can examine the fundamental mechanisms of neuronal signaling without the added complexity of an entire neural network

**How does this base understanding contribute to broader goals like untangling network activity?**
* a foundational understanding helps explain findings and measurements of network activity 

---

<img width="4400" height="2475" alt="Slide10" src="https://github.com/user-attachments/assets/d03cb925-1f8a-47dd-aaf4-136192011033" />

---

The image is an oil painting by Belgian surrealist artist **René Magritte** that shows a tobacco pipe above a French statement, "Ceci n'est pas une pipe" (This is not a pipe)
* It represents a pipe but is not the physical object itself
* Similarly, computational models represent selected aspects of biological neurons
* Experiments investigate real biological systems, while simulations allow us to test hypotheses under controlled conditions. 

Both are valuable, evaluate and understand trade-offs when choosing between wet-lab vs dry-lab approach 

---

<img width="4400" height="2475" alt="Slide11" src="https://github.com/user-attachments/assets/b111e035-a8de-47fe-a72a-5b33b2f57b0b" />

Following this slide, we handed off the presentation to the Brainwave Society over the `.ipynb` in this folder.
