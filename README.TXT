                                README

                       GeekTools Whois Java Client
                              Version 1.0.1

GeekTools Whois Java Client is a finger-style whois which uses the GeekTools
Whois Proxy server (<whois.geektools.com>) provided by CenterGate Research
Group, LLC.

This program was developed by Erik C. Thauvin <erik@skytouch.com> and is
distributed under the terms of the GNU General Public License. See the
enclosed COPYING.TXT file for more information.


Components:
-----------

Whois.class     : Compiled Java class (required)
Whois.java      : Java Source code

whois           : Bourne shell script (launcher)
whois.bat       : Batch file (launcher)

README.TXT      : This file!
COPYING.TXT     : GNU General Public License


Java Requirements:
------------------

A Java VM (Virtual Machine) supporting Java 2, e.g., Sun's JDK or JRE 1.3.
As the source is also provided, you maybe able to recompile for earlier
versions of Java.


Usage:
------

    java Whois query[@<whois.server>]
    

Launchers:
----------

A batch file (whois.bat) and Bourne shell script (whois) are provided to make
performing whois queries even more intuitive.

For example, under Windows, you can simply use:

    whois example.com

Under UNIX (Linux, Mac OS X, Solaris, etc.) use:

    ./whois example.com

The launchers will report errors if the Whois.class or a valid Java Virtual
Machine cannot be located.
    

Examples:
---------

GeekTools Whois Java Client usage emulates the functionality found in various
BSD systems tools such as Chris Cappuccio's fwhois. For example:

    java Whois example.com

will look for the example.com domain name registration record using the
GeekTools Whois Proxy server located at whois.geektools.com.

    java Whois example.com@whois.networksolutions.com

will look for the example.com domain name registration record using the whois
server located at whois.networksolutions.com.

    java Whois summary example.com

will look for the example.com domain name registration summary using the whois
proxy server located at whois.geektools.com.

    java Whois summary example.com@whois.networksolutions.com

will look for the example.com domain name registration summary using the whois
server located at whois.networksolutions.com.

    java Whois handle IANA

will look for the specified (IANA) NIC handle/contact record using the
GeekTools Whois Proxy server located at whois.geektools.com.

    java Whois handle IANA@whois.networksolutions.com

will look for the specified (IANA) NIC handle/contact record using the whois
server located at whois.networksolutions.com.

    java Whois iana@iana.org@

(Note: The trailing at sign (@) is REQUIRED to specify an e-mail address
query.)

will look for the NIC handle/contact record for the specified e-mail address
(iana@iana.org) using the GeekTools Whois Proxy server.

    java Whois iana@iana.org@whois.networksolutions.com

will look for the NIC handle/contact record for the specified e-mail address
(iana@iana.org) using whois.networksolutions.com.
    

Properties
----------

The Whois.properties file can also be used to change the default whois server
and port. The Whois.properties file must be located in the same directory as
the Whois.class file.

For example, to change the default server from whois.geektools.com to
whois.networksolutions.com, add the following to the properties file:

    server=whois.networksolutions.com

Similarly, to change the default port from 43 to 46:

    port=46




Copyright (C) 2000-2001 by SkyTouch Communications. All Rights Reserved.
