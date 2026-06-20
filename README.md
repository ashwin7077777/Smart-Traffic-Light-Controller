# Smart Traffic Light Controller with SystemVerilog Verification Environment

## Overview

The Smart Traffic Light Controller is a SystemVerilog-based RTL design that controls traffic signals at a two-road intersection using a Finite State Machine (FSM). The controller automatically cycles through green and yellow light phases for each road while ensuring safe traffic flow.

A transaction-based verification environment was developed using SystemVerilog features such as interfaces, classes, mailboxes, assertions, and functional coverage to verify the design functionality.

---

## Key Features

* FSM-based traffic light control
* Two-road intersection management
* Configurable green and yellow light timing
* Counter-based state transitions
* Sequential and combinational logic implementation
* Transaction-based verification environment
* SystemVerilog assertions
* Functional coverage collection

---

## Traffic Light States

### A_GREEN

Road A receives a green signal while Road B remains red.

### A_YELLOW

Road A transitions from green to red.

### B_GREEN

Road B receives a green signal while Road A remains red.

### B_YELLOW

Road B transitions from green to red.

The controller continuously cycles through these states to manage traffic efficiently.

---

## RTL Concepts Implemented

### Finite State Machine (FSM)

The controller is implemented using a state machine that governs signal transitions and timing control.

### Sequential Logic

Used for:

* State register
* Timer counter
* State transitions

### Combinational Logic

Used for:

* Next-state generation
* Output signal generation
* Timing decisions

### Counters

A timer counter controls the duration of green and yellow signal phases.

### Flip-Flops

D Flip-Flops are inferred using clocked sequential logic for state and timer storage.

---

## Verification Environment

The verification environment was developed using SystemVerilog object-oriented programming concepts.

### Components

#### Interface

Provides communication between the DUT and verification components.

#### Transaction

Represents traffic light activity observed during simulation.

#### Generator

Creates transactions for simulation control.

#### Driver

Coordinates simulation stimulus.

#### Monitor

Captures DUT outputs and sends them to the scoreboard.

#### Scoreboard

Performs result checking and validates expected behavior.

---

## Assertions

SystemVerilog Assertions (SVA) were implemented to verify safety properties.

Example:

* Both roads should never have a green signal simultaneously.

Assertions automatically detect protocol violations during simulation.

---

## Functional Coverage

Functional coverage was implemented using covergroups and coverpoints.

Coverage metrics include:

* Road A signal states
* Road B signal states
* FSM state transitions

Coverage helps ensure that all operating scenarios have been exercised.

---

## Verification Scenarios

The following scenarios were verified:

* Correct FSM state transitions
* Proper green-to-yellow signal sequencing
* Timer-based state changes
* Mutual exclusion of green signals
* Continuous traffic signal operation
* Assertion compliance
* Functional coverage collection

---

## Learning Outcomes

Through this project, the following concepts were practiced:

* RTL Design using SystemVerilog
* FSM Design Methodology
* Sequential and Combinational Logic
* Counter Design
* Flip-Flop Modeling
* Transaction-Based Verification
* Interfaces and Mailboxes
* Assertions (SVA)
* Functional Coverage
* Verification Architecture Development

---

## Future Enhancements

* Pedestrian crossing support
* Emergency vehicle priority
* Adaptive traffic control
* Sensor-based traffic density detection
* Multi-junction traffic management
* UVM-based verification environment

---

## Technologies Used

* SystemVerilog
* FSM Design
* Assertions (SVA)
* Functional Coverage
* Interfaces
* Classes
* Mailboxes
* Transaction-Based Verification

---

## Author

**Ashwin Karthikeyan**

RTL Design | SystemVerilog | Verification | UVM Enthusiast
