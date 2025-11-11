package regalloc;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

public final class DotPrinter {
    private final PrintWriter writer;

    public DotPrinter(File f) throws IOException {
        this.writer = new PrintWriter(f);
    }

    public String print(ControlFlowGraph cfg) {
        StringBuilder dotGraph = new StringBuilder();
        StringBuilder nodesBuilder = new StringBuilder();
        StringBuilder edgesBuilder = new StringBuilder();

        dotGraph.append("digraph CFG {\n");

        cfg.nodes.forEach(node -> {
            nodesBuilder.append(String.format("    Node%d [label=\"%s\"];\n", node.id(), node.instruction.toString()));
            node.successors.forEach(successor -> {
                edgesBuilder.append(String.format("    Node%d -> Node%d;\n", node.id(), successor.id()));
            });
        });
        dotGraph.append(nodesBuilder);
        dotGraph.append(edgesBuilder);
        dotGraph.append("}\n");

        writer.println(dotGraph);
        writer.flush();
        writer.close();
        return dotGraph.toString();
    }
}
