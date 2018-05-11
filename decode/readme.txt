This is a simple perl script to decode an encoded xml file. 

First, I tried to write a java impl using Apache's stringescapeutils.unescapexml api, but stuck upon its 64K limit on the content. I tried through java, groovy, and nodejs, but could not succeed on to land up on a simple solution. However, Perl could provide one straight away. Though it was my perl script, it did not cause too much trouble for me to complete. 

Run it as 'perl decode_xml.pl "<path_to_encoded_file.xml>" > temp.xml; mv temp.xml <path_for_output_file.xml>