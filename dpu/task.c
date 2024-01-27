#include <stdio.h>

#include <perfcounter.h>
#include <seqread.h>

#define T uint32_t
#define BLOCK_LENGTH (256 / sizeof(T))
#define LOAD_INTO_MRAM (1 << 21)
T __mram_noinit input[LOAD_INTO_MRAM];
T __mram_noinit output[LOAD_INTO_MRAM];
T __dma_aligned cache[BLOCK_LENGTH];

void if_in_front(seqreader_t sr[], seqreader_buffer_t buffers[]) {
    for (size_t run = BLOCK_LENGTH; run < LOAD_INTO_MRAM; run <<= 1) {
        for (size_t j = 0; j < LOAD_INTO_MRAM; j += run << 1) {
            T *ptr[2] = {
                seqread_init(buffers[0], &input[j], &sr[0]),
                seqread_init(buffers[1], &input[j + run], &sr[1])
            };
            const T __mram_ptr *ends[2] = {
                &input[j + run],
                &input[j + (run << 1)]
            };
            bool active = 0;
            size_t i = 0;
            while (1) {
                if (*ptr[!active] < *ptr[active]) {
                    active = !active;
                }
                cache[i++] = *ptr[active];
                ptr[active] = seqread_get(ptr[active], sizeof(T), &sr[active]);
                if (i == BLOCK_LENGTH) {
                    i = 0;
                }
                if (seqread_tell(ptr[active], &sr[active]) == ends[active]) {
                    break;
                }
            }
        }
    }
}

void if_in_back(seqreader_t sr[], seqreader_buffer_t buffers[]) {
    for (size_t run = BLOCK_LENGTH; run < LOAD_INTO_MRAM; run <<= 1) {
        for (size_t j = 0; j < LOAD_INTO_MRAM; j += run << 1) {
            T *ptr[2] = {
                seqread_init(buffers[0], &input[j], &sr[0]),
                seqread_init(buffers[1], &input[j + run], &sr[1])
            };
            const T __mram_ptr *ends[2] = {
                &input[j + run],
                &input[j + (run << 1)]
            };
            bool active = 0;
            size_t i = 0;
            while (1) {
                if (*ptr[!active] < *ptr[active]) {
                    active = !active;
                }
                cache[i++] = *ptr[active];
                ptr[active] = seqread_get(ptr[active], sizeof(T), &sr[active]);
                if (seqread_tell(ptr[active], &sr[active]) == ends[active]) {
                    // Uncomment if both fcts shall check this the same number of times.
                    // The run time is hardly disturbed by this, however.
                    // if (i == BLOCK_LENGTH) {
                    //     i = 0;
                    // }
                    break;
                }
                if (i == BLOCK_LENGTH) {
                    i = 0;
                }
            }
        }
    }
}

int main() {
    perfcounter_config(COUNT_CYCLES, true);
    perfcounter_t cycles;

    seqreader_buffer_t buffers[2] = { seqread_alloc(), seqread_alloc() };
    seqreader_t sr[2];

    cycles = perfcounter_get();
    if_in_front(sr, buffers);
    cycles = perfcounter_get() - cycles;
    printf("TIME (in front): %9.2f ms\n", (double)cycles / CLOCKS_PER_SEC * 1000);

    cycles = perfcounter_get(); 
    if_in_back(sr, buffers);
    cycles = perfcounter_get() - cycles;
    printf("TIME (in back):  %9.2f ms\n", (double)cycles / CLOCKS_PER_SEC * 1000);
}