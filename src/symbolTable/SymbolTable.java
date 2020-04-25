package symbolTable;

import java.util.LinkedHashMap;

public class SymbolTable {
    public LinkedHashMap<String, Symbol> symbolHashMap = new LinkedHashMap<String, Symbol>();

    public Symbol get(String id) {
        return this.symbolHashMap.get(id);
    }

    public void put(String id, Symbol s) {
        this.symbolHashMap.put(id, s);
    }

    public int size() {
        return this.symbolHashMap.size();
    }
}