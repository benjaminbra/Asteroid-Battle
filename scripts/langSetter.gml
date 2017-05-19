ini_open(working_directory + "lang.ini");

global.lang = ini_read_string("lang","lang","fr");

ini_close();
