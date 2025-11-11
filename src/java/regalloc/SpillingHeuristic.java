package regalloc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@FunctionalInterface
public interface SpillingHeuristic {

    IGNode pickNodeToSpill(List<IGNode> candidates, Map<IGNode, Integer> degreeMap);

    SpillingHeuristic MOST_CONNECTED = (candidates, degreeMap) -> {
        Map<Integer, List<IGNode>> buckets = new HashMap<>();
        int maxDegree = -1;
        for (IGNode node : candidates) {
            int degree = degreeMap.get(node);
            buckets.computeIfAbsent(degree, d -> new ArrayList<>()).add(node);
            if (degree > maxDegree) {
                maxDegree = degree;
            }
        }
        List<IGNode> mostConnected = buckets.get(maxDegree);
        return mostConnected.getFirst();
    };

    SpillingHeuristic FIRST = (candidates, degreeMap) -> candidates.getFirst();

}
