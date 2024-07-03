pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template CeShCircuit() {  

   // Declaration of signals inputs.  
   signal input a;  
   signal input b;
   
   //Declaration of signals from gates.
   signal x;
   signal y;
   //Declaration of signals outputs.  
   signal output q;  
   //component gate used to create custom circuit.
   component andGate = AND();
   component norGate = NOR();
   component notGate = NOT();
   // Circuit logic.
   andGate.a <== a;
   andGate.b <== b;
   x <== andGate.out;

   notGate.in <== b;
   y <== notGate.out;

   norGate.a <== x;
   norGate.b <== y;
   q <== norGate.out;
}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}
template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}
template NOR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b + 1 - a - b;
}
component main = CeShCircuit();