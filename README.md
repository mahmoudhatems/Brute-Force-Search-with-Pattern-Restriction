# **Brute-Force Search with Pattern Restriction**

This project provides a solution to the **Course Scheduling Problem** using a **Brute-Force Search with Pattern Restriction** algorithm. The goal is to arrange courses in a way that minimizes scheduling conflicts based on predefined patterns.

---

## **Problem Description**

### **Objective**
To schedule courses for exams in a way that minimizes the total conflict cost. A conflict occurs when there are overlapping students between two consecutive courses in the schedule.

### **Input**
1. **Conflict Table**: Represents overlapping relationships between courses.
    - `sub_id`: The ID of a course.
    - `conflict_sub_id`: The ID of another course with overlapping students.
    - `numOfIntersection`: Number of overlapping students between the courses.

2. **Levels Table**: Groups courses into academic levels (e.g., First, Second, Third).

3. **Constraints**:
    - Two patterns for course scheduling:
      1. Pattern 1: First Level → Second Level → Third Level (repeat).
      2. Pattern 2: Third Level → First Level → Second Level (repeat).

---

## **Algorithm**

### **Brute-Force Search with Pattern Restriction**
1. **Pattern-Based Sequence Generation**:
    - Generate sequences of courses based on the two predefined patterns.

2. **Conflict Cost Calculation**:
    - Calculate the total cost for each sequence by summing up the number of overlapping students for consecutive courses.

3. **Optimal Sequence Selection**:
    - Compare the total costs of the two patterns and choose the sequence with the lowest conflict cost.

---

## **Implementation**

### **Languages and Tools**
- **Programming Language**: Dart

### **Key Functions**
1. **`generateSequence`**:
    - Generates course sequences based on a given pattern.
2. **`calculateCost`**:
    - Computes the total conflict cost for a given sequence.
3. **Main Logic**:
    - Iterates through both patterns, calculates costs, and selects the optimal sequence.

---

## **Usage**

### **Setup**
1. Ensure Dart is installed on your system.
2. Clone the repository:
    ```bash
    git clone https://github.com/mahmoudhatems/Brute-Force-Search-with-Pattern-Restriction/
    ```
3. Navigate to the project folder:
    ```bash
    cd brute-force-pattern-restriction
    ```

### **Run the Code**
Execute the Dart script:
```bash
dart main.dart
