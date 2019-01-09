 // TODO: undestand it!
 #include <stdint.h>
 extern __inline__ uint64_t rdtsc() {
   uint64_t x;
  __asm__ volatile ("rdtsc\n\tshl $32, %%rdx\n\tor %%rdx, %%rax" : "=a" (x) : : "rdx");
   return x;
 }

int main() {
}
