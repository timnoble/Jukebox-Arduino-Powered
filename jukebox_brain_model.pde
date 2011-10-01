// Sequence of operation from p5-18 to 5-21 from R-93 Phonograph Field Service
// Manual and Parts Catalog
// ----------
//Power is turned ON, voltages and commons are applied to circuits and
//	components.
// 1. current flows through the power cord and power switch to energize the
//	power supply.  
//    Current flows through the SERVICE switch and energizes the 28 VAC, +28 VDC
//	 and +8 VDC busses.
//    The +8 VDC LED on the CCC lights.
// 2. the 28v AC flows to the magazine motor, transfer motor, and mechanism
//	control.
//    The 28 VAC is routed through the mechanism control to the turntable motor.
// 3. The +28 VDC appears on the amplifier mute plug, mechanism control and bill
//    acceptor.
// 4. Power Common connects the outside record cancel switch, manual scan
//     switch, tone arm cutoff, toggle shift coils, 
//    inner and outer cam switches, detent coil and mechanism control.
// 5. the +8 VDC and the Logic Common connect to the mechanism control and bill
//    acceptor.
//    These wires are routed through the mechanism control to the CCC and Logic
//    Common to the wallbox interface.
// 6. the +8 ON signal is routed through the mechanism control to the CCC.
// 7. The mechanism Chasis Common connects the amplifier mute plug, amplifier
//    cover terminal strip and the auto cancel switch.
// ----------
// The CCC senses that power is turned ON.  No selections or credit are in
//    memory.
// 1. The CCC begins to continually monitor the state of all switches and
//	determines 
//    if the transfer arm (gripper bow) is in the HOME position.

// 2. The CCC sends clock and data signals to the digital display, causing the
//	LED's to light.
// ----------
//A customer inserts a quarter , standard credit established, and credit is set
//	at 1 play for 25c, 2 plays for 50c and 5 plays for $1.
// 1. After customer inserts a quarter into slot, the coin passes through the
//	validator and actuates the 25c switch.
// 2. The CCC senses the switch closure and stores 5 money units (nickels) in 
//	its memory.
// 3. Five pulses are sent to the money counter.
// 4. the CCC uses the money value stored in its memory and the stored pricing
//	information to calculate credit level, which is equal to 1.
// 5. the SELECTION REMAINING display shows 1 credit.
// Note: bill acceptor sends different pulses to CCC.  Out of this project's 
// scope.
// ----------
//The first digit is selected and displayed.
// 1. a customer presses the first digit in his selection number.
// 2. the CCC sense the key closure, checks that the credit is available, and
//    displays the credit on digital display.
// NOTE:  first selection must be a 1 or 2, otherwise ignored.
// ----------
// The second digit is selected and displayed.
// 1. a customer presses the second digit in his selection number.
// 2. CCC senses the key closure, stores selected digit value, and displays it.
// ----------
// The third digit is selected and displayed, selection is stored, Memorec is
//  incremented and the credit is cancelled.
// 1. The customer presses the third digit of his selection.
// 2. The CCC senses the key closure, stores the selected digit, and displays it.
// 3. The selection is stored in the CCC.
// 4. Memorec data is incremented.
// 5. The credit is set to 0 (zero).
// ----------
// The detent coil and magazine are energized and the magazine rotates.
// 1. the CCC tells the mechanism control to energize the detent coil.  
//    The DETENT COIL LED lights and the energized detent coil moves a
//    mechanical linkage that unlocks the magazine.
// 2. After 56 to 70 milliseconds, the CCC tells the mechanism control to
//    energize the magazine motor.
//    The MAGAZINE MOTOR LED lights and the motor turns, which rotates the
//    unlocked magazine.
// ----------
// The magazine rotates until the selection is located.
// 1. As the magazine rotates, the gear teeth interrupt the optical switch
//    light beam.
// When the OPTICAL SWITCH INDEX LED goes from dark to light (OFF to ON), the
// CCC knows that the magazine is moving to the next record position.
// Two things happen:
//     The CCC keeps track of the magazine position by adding 1 to the position
//     value stored in the CCC.
//     The CCC checks the selection memory to determine which side of the next
//     record to select.
// 2. The SELECTION PLAYING display shows the magazine record position.
// ----------
// The selection is located, the record transferred to the turntable, and the
//  tone arm is set down.
// 1. the CCC turns OFF the DETENT and MAG MOTOR LED's, which tells the
//    mechanism control to de-energize the detent coil and magazine motor.
// 2. The magazine locks because the detent pawl falls into a slot in the detent
//    wheel.
// 3. the CCC turns ON the TRANSFER MOTOR and the TURNTABLE MOTOR LED's, causing
//    the mechanism control to start the transfer and turntable motors.  The CCC
//    tells the mechanism control to advance the play counter.
// 4. The transfer motor rotates the cam off the inner cam switch (If the first 
// 	digit of the selection was a two, the CCC signal lights the TOGGLE LED,
//	causing the mechanism control to energize the toggle shift controls.).
// 5. The gripper bow picks up a record, places it on the turntable, and the
// 	tone arm sets down. If a record is not placed on the turntable, the
//	Auto-Cancel operates when the tone arm sets down.
// 6. The SELECTION PLAYING display lights, showing the record number chosen.
// ----------
//The amplifier is unmuted and the record plays.
// 1. The transfer motor runs and the cam moves onto the outer cam switch.
// 2. The outer cam switch N.O. contact signals the CCC to turn OFF the transfer
//	motor.  The TRANSFER MOTOR LED turns OFF and the transfer motor stops.
// 3. The mute signal becomes active causing the amplifier to unmute.
// 4. The record plays.
// ----------
//The record ends and is returned to the magazine.
// 1. The tone arm cutoff sends a cancel signal to the CCC.
// 2. The CCC turns on the TRANSFER MOTOR LED, causing the mechanism control to
// 	start the transfer motor.
// 3. The gripper bow picks up the record and returns it to the magazine.
// ----------
//The transfer cycle ends and the CCC searches the selection memory.
// 1. The cam rotates onto the inner cam switch.
// 2. The inner cam switch N.O. contact signals the CCC that the transfer cycle
//	is complete.
// 3. The CCC turns OFF the TRANSFER MOTOR and TURNTABLE MOTOR LED's, causing
//	the mechanism to turn OFF these motors.
// 4. The CCC electronically searches its selection memory.  If the memory
//	contains one or more selections, Sequences 7 through 12 are repeated(?).
// ----------
//The phonograph returns to Standby condition and Autoplay timing begins.
// 1. All selections have been played.
// 2. The display shows the most popular record on the phonograph.
















