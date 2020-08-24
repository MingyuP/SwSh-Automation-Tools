all:
	make -f watts.mk
	make -f lottery.mk


watts:
	make -f watts.mk

lottery:
	make -f lottery.mk


clean:
	make -f watts.mk clean
	make -f lottery.mk clean
