## SwSh Automation Tools

Variety of Pokemon Sword/Shield automation tools for Arduino Uno R3. Ideally, it should work for Teensy 2.0++ as well, but I haven't tested on it. The tools are dependent on LUFA support.

### Requirements to run this tools:

Nintendo Switch

TV or monitor to connect the Switch (optional)

Arduino Uno R3 (or Teensy 2.0++)

USB A-Male to B-Male cord

USB to USB-C adapter (optional)


### Compiling and Flashing (OSX)
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
sudo dfu-programmer atmega16u2 flash HEXFILE.hex
sudo dfu-programmer atmega16u2 reset
```

where HEXFILE.hex is the hexfile of your choice.

### Infinite Watts (watts.hex)

Use the [casual battle time skip glitch](https://www.youtube.com/watch?v=iC7ueXaAtY0) to enable the time skip.

Forward your Switch's time to the first day of any month that has 31 days (for example, if today is August 23, 2020, FORWARD your switch's time to October 1, 2020).

Walk to a den and throw an Wishing Piece in it.

Stand in front of the den.

Plug in the Arduino to the Switch.

### Infinite Lotteries (lottery.hex)

(optional) Collect some Pokemon from different trainers via Pokemon Home to increase the odds of winning the lottery.

Use the [casual battle time skip glitch](https://www.youtube.com/watch?v=iC7ueXaAtY0) to enable the time skip.

Forward your Switch's time to the first day of any month that has 31 days (for example, if today is August 23, 2020, FORWARD your switch's time to October 1, 2020).

Go into a Pokecenter right and stand right in front of the computer.

Plug in the Arduino to the Switch.

