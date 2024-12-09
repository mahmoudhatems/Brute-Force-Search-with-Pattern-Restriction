
// Brute-Force Search with Pattern Restriction
void main() {
  // Input data
  List<Map<String, dynamic>> conflictTable = [
    {"sub_id": 101, "conflict_sub_id": 201, "numOfIntersection": 5},
    {"sub_id": 201, "conflict_sub_id": 301, "numOfIntersection": 3},
    {"sub_id": 301, "conflict_sub_id": 101, "numOfIntersection": 2},
  ];

  Map<int, List<int>> levels = {
    1: [101, 102, 103],
    2: [201, 202, 203],
    3: [301, 302, 303],
  };

  // Generate sequences based on patterns
  List<int> generateSequence(Map<int, List<int>> levels, int pattern) {
    List<int> sequence = [];
    List<int> order = (pattern == 1) ? [1, 2, 3] : [3, 1, 2];

    while (sequence.length < levels.values.expand((x) => x).length) {
      for (var level in order) {
        // Use null-aware operator to ensure non-null value
        if (levels[level] != null) {
          sequence.addAll(levels[level]!);
        }
      }
    }
    return sequence;
  }

  // Calculate cost of a sequence
  int calculateCost(List<int> sequence, List<Map<String, dynamic>> conflicts) {
    int cost = 0;

    for (int i = 0; i < sequence.length - 1; i++) {
      for (var conflict in conflicts) {
        if ((conflict["sub_id"] == sequence[i] &&
                conflict["conflict_sub_id"] == sequence[i + 1]) ||
            (conflict["conflict_sub_id"] == sequence[i] &&
                conflict["sub_id"] == sequence[i + 1])) {
          cost += (conflict["numOfIntersection"] as int); // Cast to int
        }
      }
    }
    return cost;
  }

  // Find the best sequence
  List<int>? bestSequence;
  int minCost = double.maxFinite.toInt(); // Use maxFinite.toInt() for the largest int

  for (int pattern = 1; pattern <= 2; pattern++) {
    List<int> sequence = generateSequence(levels, pattern);
    int cost = calculateCost(sequence, conflictTable);
    if (cost < minCost) {
      minCost = cost;
      bestSequence = sequence;
    }
  }

  // Output results
  print("Best Sequence: $bestSequence");
  print("Minimum Cost: $minCost");
}



