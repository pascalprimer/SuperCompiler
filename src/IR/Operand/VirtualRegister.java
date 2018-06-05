package IR.Operand;

import IR.IRTranslator;
import IR.RegisterManager;
import Utility.RuntimeError;

import java.util.HashMap;
import java.util.Map;

public class VirtualRegister extends Operand {

	private String name;
	public String sysRegister;
	public boolean isGlobal;

	public Map<Integer, Integer> loopRefNumber;
	public int defOrder;
	private long loopWeight;
	private long memWeight;

	public VirtualRegister(String name) {
		this.name = name;
		isGlobal = false;
		sysRegister = null;
		loopRefNumber = new HashMap<>();
		loopWeight = memWeight = 0;
		defOrder = ++IRTranslator.VirtualRegisterCnt;
	}

	public void addMem() {
		++memWeight;
	}

	public void delMem() {
		--memWeight;
	}

	public void addLoop(int cnt) {
		Integer loopNumber = cnt;
		if (cnt >= RegisterManager.loopCoefficient.length) {
			throw new RuntimeError("too many loops!!!");
		}
		loopWeight += RegisterManager.loopCoefficient[cnt];
		if (!loopRefNumber.containsKey(loopNumber)) {
			loopRefNumber.put(loopNumber, 1);
		} else {
			loopRefNumber.put(loopNumber, loopRefNumber.get(loopNumber) + 1);
		}
	}

	public void delLoop(int cnt) {
		Integer loopNumber = cnt;
		if (cnt >= RegisterManager.loopCoefficient.length) {
			throw new RuntimeError("too many loops!!!");
		}
		loopWeight -= RegisterManager.loopCoefficient[cnt];
		Integer number = loopRefNumber.get(loopNumber);
		if (number.intValue() > 1) {
			loopRefNumber.replace(loopNumber, number - 1);
		} else {
			loopRefNumber.remove(loopNumber);
		}
	}

	public long getWeight() {
		//return loopWeight + defOrder;
		return loopWeight * 100 + 2000 - defOrder + memWeight * 60;
	}

	@Override
	public boolean ifPurity() {
		return !isGlobal;
	}

	@Override
	public String toString() {
		return name + "(" + sysRegister + ")";
	}

	public String getName() {
		return name;
	}

}
