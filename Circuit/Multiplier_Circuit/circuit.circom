pragma circom 2.0.0;

/* This circuit template verifies if 'c' is the product of 'a' and 'b'. */

template MultiplierVerification() {
    // Input signals
    signal input a;
    signal input b;

    // Intermediate signals
    signal x;
    signal y;

    // Final output signal
    signal output isProductValid;

    // Component gates used to construct the verification circuit
    component andGate = AND();
    component notGate = NOT();
    component orGate = OR();

    // Circuit logic
    andGate.a <== a;
    andGate.b <== b;
    x <== andGate.out;

    notGate.in <== b;
    y <== notGate.out;

    orGate.a <== x;
    orGate.b <== y;
    isProductValid <== orGate.out;

    // Print the value of 'isProductValid' when a=0 and b=1
    log("isProductValid : ", isProductValid);
}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a * b;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a * b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2 * in;
}

component main = MultiplierVerification();
