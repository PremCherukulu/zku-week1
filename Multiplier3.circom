pragma circom 2.0.0;

// [assignment] Modify the circuit below to perform a multiplication of three signals


template Multiplier2(){
     signal input a; 
    signal input b; 
    signal output c; 
    
    c <== a*b; 
}

//This circuit multiplies in1, in2, and in3.
template Multiplier3 () {
   //Declaration of signals and components.
   signal input f;
   signal input g;
   signal input h;
   signal output z;
   component mult1 = Multiplier2();
   component mult2 = Multiplier2();

   //Statements.
   mult1.a <== f;
   mult1.b <== g;
   mult2.a <== mult1.c;
   mult2.b <== h;
   z <== mult2.c;
}

component main = Multiplier3();