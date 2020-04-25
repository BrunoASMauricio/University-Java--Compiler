package symbolTable;

public class Symbol {

    private String id;
    private String type;
    private int line;
    private int column;
    
    public Symbol(String id, String type, int line, int column) {
        this.id = id;
        this.type = type;
        this.line = line;
        this.column = column;
    }

    public String getId() {
        return this.id;
    }

    public String getType() {
        return this.type;
    }

    public int getLine() {
        return this.line;
    }
    public int getColumn() {
        return this.column;
    }

    public boolean equals(Object symbol) {
        Symbol s = (Symbol) symbol;
        return this.id.equals(s.getId());
    }
}