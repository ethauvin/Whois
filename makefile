all:
	javac Whois.java
	jar cvfm Whois.jar MANIFEST.MF Whois.class
