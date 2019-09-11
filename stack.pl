#!/usr/bin/perl


print "Making a Stack\n";
@stack = qw ( awk bash chmod );

print "Initial stack:\n @stack\n";
push (@stack, "diff");
print "push item on stack:\n @stack\n";
$item = "Emacs";
push (@stack, $item);
print "push item on stack:\n @stack \n";
$top = pop @stack;
print "Popping top of stack: $top\n";
print "Final stack:\n @stack \n\n";

print "----------------------------------------------------------\n";

print "Making a \"First In First Out\" Queue\n";
@queue = qw( lpr mcopy ps );
print "Initil que:\n @queue \n";
unshift(@queue, "kill");
print "Add item to queue:\n @queue \n";
$item = "df";
unshift(@queue, $item);
print "Add item to queue:\n @queue \n";
$fifo = pop @queue;
print "Remove FIFO item: $fifo\n";
print "Final queue:\n @queue \n\n";
print "----------------------------------------------------------\n";



## Method #2 Reference Variables, or pointers

@links = qw( 2 Null 1);

print "Using Pointers\n";

@nodes = qw( finger:Null whois:Null who:Null);
for ($i=0; $i<=$#nodes; $i++){
	$ptr = \$nodes[$i];
	@data = split(/:/,$$ptr);
	print "Before: $ptr @data ";
	$data[1] = $links[$i];
	print "-> @data \n";
	$$ptr = join ':',@data;
}
print "\n\n";
print "----------------------------------------------------------\n";