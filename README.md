## SwSh Automation Tools

Variety of Pokemon Sword/Shield automation tools for Arduino Uno R3. Ideally, it should work for Teensy 2.0++ as well, but I haven't tested on it. The tools are dependent on LUFA support.

### Requirements to run this tools

#### Nintendo Switch

#### TV or monitor to connect the Switch (optional)

#### Arduino Uno R3 (or Teensy 2.0++)

#### USB A-Male to B-Male cord

#### USB to USB-C adapter (optional)


#### Compiling and Flashing (OSX)
First, you will need to clone the repo. Since LUFA has been added as a git submodule, you will need the --recursive flag in order to clone this repo.

```
git clone --recursive git@github.com:MingyuP/SwSh-Automation-Tools.git
```

Next, you will need to install the GNU AVR Toolchain. Follow the instructions [here](https://github.com/osx-cross/homebrew-avr)

Then, open a terminal and cd into the git repo. Type "make" to generate the necessary hex files.

Plug your Arduino into your computer and enter DFU mode by connecting the two pins with a piece of metal or jumper cable (for detailed instructions, check [here](http://bartruffle.blogspot.com/2013/09/dfu-programming-atmega16u2-on-arduino.html#:~:text=First%20connect%20the%20Arduino%20to,on%20pin%2013%20will%20flash.))

Type the following commands on the terminal to flash the hex files.

```
sudo dfu-programmer atmega16u2 erase
sudo dfu-programmer atmega16u2 flash Joystick.hex
sudo dfu-programmer atmega16u2 reset
```
