.global SONG_POINTERS
.global SONG_SIZES
.global NUM_SONGS

.section .text

.align 2

SONG1:  .incbin "songs/Stub.sid"
SONG_END:

.align 2
SONG_POINTERS:
.word SONG1

SONG_SIZES:
.word SONG_END - SONG1

NUM_SONGS:
.word (SONG_SIZES - SONG_POINTERS) / 4
