# windows perl cpan install Win32::DriveInfo

use warnings;
use strict;

use Win32::OLE;

sub get_available_space
{
	# get disk name
	my $my_disk = $_[0];
	# create file system object using Win32::OLE
	my $file_system = Win32::OLE->CreateObject('Scripting.FileSystemObject');
	# get disk usage using FS object
	my $disk = $file_system->GetDrive($my_disk);
	
	# total size of the disk
	print convert_to_gb($disk->{TotalSize}), " $my_disk total\n";
	# free space in disk 
	print convert_to_gb($disk->{FreeSpace}), " $my_disk free\n";
	
	# print $disk->(AvailableSpace), " available\n";
	# print $disk->(TotalSize) - $disk->(FreeSpace), " used\n";
	
}

sub convert_to_gb
{
# sub routine do nothing more than conver bytes to GB
	my $byte_size = $_[0];
	#convert to GB
	my $gb_size = $byte_size/1073741824;
	return $gb_size;
}

get_available_space('c:');
get_available_space('d:');
	