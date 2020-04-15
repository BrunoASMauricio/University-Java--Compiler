import java.util.Map;

import javax.management.RuntimeErrorException;

import java.util.LinkedHashMap;
/*
This table holds the available methods, classes and variables
*/
public class SymbolTable {
    LinkedHashMap<String, Symbol> symbols;    //symbol name to holder structure

    public SymbolTable(){
        symbols = new LinkedHashMap<String, Symbol>(); //symbol map (linked to preserve insertion order)
    }
    /**
     * Insert a new symbol into the table. Does not perform any check.
     * @param new_symbol the symbol to insert
     */
    public void insertSymbol(Symbol new_symbol){
        symbols.put(new_symbol.signature, new_symbol);
    }
    /**
     * Retrieves the value (Symbol) with the key name
     * @param signature HashMap key
     * @return
     */
    public Symbol getSymbol(String signature){
        return symbols.get(signature);
    }
    /**
     * Returns table size
     */
    public int getSize(){
        return symbols.size();
    }
}