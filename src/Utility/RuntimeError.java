package Utility;

public class RuntimeError extends Error {
	public RuntimeError(String message) {
		super("RE: " + message);
	}

	@Override
	public String getMessage() {
		return super.getMessage();
	}
}
