# Design-Sequence-Detector-Using-D-Flip-Flop
This document will discuss how to create a sequence detector system for the number "11" within two clock cycles using a D flip-flop. This tutorial will include flip-flop code and the FSM design that has been created.
# General Description

Sequence Detector to detect the number 11 within 2 clock cycles. The following is the FSM design that has been created. After applying the K-map method, the equations obtained are as follows:
- `D1 = w * y1̅ * y2̅`
- `D2 = w * y1 + w * y2`
- `z = y2`

These equations are then implemented into Verilog code.

![FSM Design]([path/to/your/image.png](https://github.com/Diyah-Widiya/Design-Sequence-Detector-Using-D-Flip-Flop/blob/main/image.png))

