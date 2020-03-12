from blueqat import Circuit
import math

Circuit().x[0,1,2].cx[0,3].ry(-math.pi*1/4)[3].cx[0,3].ry(math.pi/4)[3].cx[0,3].ccx[0,2,3].crz(-math.pi*1/4)[0,3].ccx[0,1,3].crz(math.pi/4)[0,3].ccx[0,2,3].crz(-math.pi*1/4)[0,3].ccx[0,1,3].crz(math.pi/4)[0,3].crz(math.pi/4)[0,2].cx[0,3].ry(-math.pi*1/4)[3].cx[0,3].ry(math.pi/4)[3].cx[0,3].ccx[0,1,2].crz(-math.pi*1/4)[0,2].crz(math.pi/4)[0,1].ccx[0,1,2]

cccx = Circuit().x[0,1,2].cx[0,3].ry(-math.pi*1/4)[3].cx[0,3].ry(math.pi/4)[3].cx[0,3].ccx[0,2,3].crz(-math.pi*1/4)[0,3].ccx[0,1,3].crz(math.pi/4)[0,3].ccx[0,2,3].crz(-math.pi*1/4)[0,3].ccx[0,1,3].crz(math.pi/4)[0,3].crz(math.pi/4)[0,2].cx[0,3].ry(-math.pi*1/4)[3].cx[0,3].ry(math.pi/4)[3].cx[0,3].ccx[0,1,2].crz(-math.pi*1/4)[0,2].crz(math.pi/4)[0,1].ccx[0,1,2]

(Circuit() +cccx).m[:].run_with_ibmq(returns='shots')