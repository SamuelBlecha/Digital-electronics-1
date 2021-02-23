# **02 - Logic**
## **1. Logic Table**
| **Dec. equivalent** | **B[1:0]** | **A[1:0]** | **B is greater than A** | **B equals A** | **B is less than A** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 0 | 0 0 | 0 | 1 | 0 |
| 1 | 0 0 | 0 1 | 0 | 0 | 1 |
| 2 | 0 0 | 1 0 | 0 | 0 | 1 |
| 3 | 0 0 | 1 1 | 0 | 0 | 1 |
| 4 | 0 1 | 0 0 | 1 | 0 | 0 |
| 5 | 0 1 | 0 1 | 0 | 1 | 0 |
| 6 | 0 1 | 1 0 | 0 | 0 | 1 |
| 7 | 0 1 | 1 1 | 0 | 0 | 1 |
| 8 | 1 0 | 0 0 | 1 | 0 | 0 |
| 9 | 1 0 | 0 1 | 1 | 0 | 0 |
| 10 | 1 0 | 1 0 | 0 | 1 | 0 |
| 11 | 1 0 | 1 1 | 0 | 0 | 1 |
| 12 | 1 1 | 0 0 | 1 | 0 | 0 |
| 13 | 1 1 | 0 1 | 1 | 0 | 0 |
| 14 | 1 1 | 1 0 | 1 | 0 | 0 |
| 15 | 1 1 | 1 1 | 0 | 1 | 0 |

## **2. A 2-bit comparator**

The Karnaugh map for the equals function:

![Karnaugh map for equals function](Images/kmap_equals.png)

The Karnaugh map for "B is greater than A" function:

![Karnaugh map for "B is greater than A" function](Images/kmap_B_greater_A.png)

The Karnaugh map for "B is less than A" function:

![Karnaugh map for "B is less than A" function](Images/kmap_B_less_than_A.png)

Simplified equations:
![Simplified B greater than A](Images/greater_SoP.png)
![Simplified B less than A](Images/less_PoS.png)

Finished example EDA playground: (https://www.edaplayground.com/x/8QqQ)

# 3. **A 4-bit binary comparator**