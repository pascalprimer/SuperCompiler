package AST.Symbol;

public abstract class Type {
	public abstract boolean compatibleWith(Type obj);

	public abstract String toString();
}
