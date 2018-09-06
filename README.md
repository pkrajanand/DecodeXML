# DecodeXml
A perl script utility to decode an encoded xml files. It does not have 64K limitation that the JVM based utilities(eg: Apache's stringescapeutils.unescapexml api, nodejs, groovy, etc.) have. 

# System Requirements
1. Perl
2. Shell support

# Execution
1. Initialise setup by running ```./init.sh``` 
2. Start decoding by running ```./decode.sh <path_to_source_file> <path_to_destination_file>```

Find a sample encoded file to try out at `samples/encoded.xml` and run as ```./decode.sh samples/encoded.xml out/decoded.xml```

# Troubleshooting
