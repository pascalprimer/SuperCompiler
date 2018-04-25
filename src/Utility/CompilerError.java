package Utility;

import FrontEnd.Listener.BaseListener;

public class CompilerError extends Error {
	public CompilerError(String message) {
		super("CE: " + BaseListener.row + ", " + BaseListener.column + " " + message);
	}

	@Override
	public String getMessage() {
		return super.getMessage();
	}
}
