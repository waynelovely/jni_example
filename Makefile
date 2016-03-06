
all:
	export LD_LIBRARY_PATH=/Library/Java/JavaVirtualMachines/jdk1.8.0_74.jdk/Contents/Home/jre/lib:.
	javac HelloWorld.java
	javah HelloWorld
	gcc -shared -fPIC libHelloWorld.c -o libHelloWorld.jnilib -I/Library/Java/JavaVirtualMachines/jdk1.8.0_74.jdk/Contents/Home/include -I/Library/Java//JavaVirtualMachines/jdk1.8.0_74.jdk/Contents/Home/include/darwin
	java -Djava.library.path:. -cp . HelloWorld

clean:
	rm *.jnilib *.class
