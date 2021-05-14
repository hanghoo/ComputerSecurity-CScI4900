/* Simple program to show the possibility of allocating many
 * virtual memory addresses for the same file.  This was an
 * essential ingredient in the exploitation of the rowhammer
 * defect in DRAM chips.  Roughly speaking, the idea is to
 * fill up as much physical memory as possible with page table
 * entries belonging to your process.  This way, when you do
 * manage to flip a bit or two in DRAM, they will likely belong
 * to a PTE of yours.  With luck, you'll have changed the
 * embedded pointer, which now likely points to one of your many
 * other PTEs... */
#include <stdio.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#define MMAP_SEQ MAP_PRIVATE|MAP_POPULATE

unsigned char* remapfile(const char* fname)
{
	struct stat s;
	int fd = open(fname,O_RDONLY);
	if (fd == -1 || fstat(fd,&s) == -1) {
		fprintf(stderr, "couldn't stat %s\n",fname);
		return NULL;
	}
	unsigned char *buf = mmap(0,s.st_size,PROT_READ,MMAP_SEQ,fd,0);
	if (buf == MAP_FAILED) perror("mmap inBuf");
	close(fd);
	return buf;
}

int main(int argc, char *argv[])
{
	if (argc != 2) {
		fprintf(stderr, "usage: %s [filename]\n",argv[0]);
		return 1;
	}
	const int n = 10;
	unsigned char* mappings[n];
	for (int i = 0; i < n; i++) {
		mappings[i] = remapfile(argv[1]);
		printf("mmap%i\t%p\n",i,mappings[i]);
	}
	/* NOTE: we don't bother unmapping since this process is only
	 * alive for a moment. */
	return 0;
}
