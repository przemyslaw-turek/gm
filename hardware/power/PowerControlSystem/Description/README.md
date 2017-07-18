<h1>Power Control System</h1>
This chip was created to make our microprocessor powered at all times. In case of power failure, the system should be powered from Power Bank. When Power bank is charging does not give the output voltage.

You need to do one of three layouts. The first one is easier to implement and the second one does not disturb the operation of the control device. The third circuit is the simplest and does not use ADC.
The fourth system is designed for advanced electronics. For this layout we have not prepared the program code. It is shown for illustrative purposes

<b>If you use the third  chip, you will need to use 0 GPIO to control the power supply!!!!</b>

If you use the first chip, you will need to use 3 GPIO to control the power supply(A0,D5 and D6).

In turn, using the second scheme will suffice with two pins(A0 and D5).




