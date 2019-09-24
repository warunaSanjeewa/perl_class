use 5.010;
use Calculator;
use Try::Tiny;

try{
	Calculator::divide(4,0);
}
catch{
	warn "\n--------------------------------------";
	warn "error: $_";
}finally{
	print "done";
};