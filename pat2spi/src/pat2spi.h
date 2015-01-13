/*------------------------------------------------------------\
|                                                             |
| Tool    :                 Pat2Spi                           |
|                                                             |
| File    :                  pat2spi.h                        |
|                                                             |
| Authors :              Jacomme Ludovic                      |
|                                                             |
| Date    :                   10.08.02                        |
|                                                             |
\------------------------------------------------------------*/

# ifndef PAT2SPI_H
# define PAT2SPI_H 

/*------------------------------------------------------------\
|                                                             |
|                           Constants                         |
|                                                             |
\------------------------------------------------------------*/
/*------------------------------------------------------------\
|                                                             |
|                            Macros                           |
|                                                             |
\------------------------------------------------------------*/
/*------------------------------------------------------------\
|                                                             |
|                            Types                            |
|                                                             |
\------------------------------------------------------------*/
/*------------------------------------------------------------\
|                                                             |
|                         Pattern Figure                      |
|                                                             |
\------------------------------------------------------------*/

  typedef struct patfig_list
  {
    struct patfig_list *NEXT;
    char               *NAME;
    char              **IO_NAME_ARRAY;
    char              **IO_MODE_ARRAY;
    char               *IO_FORMAT_ARRAY;
    long               *IO_WIDTH_ARRAY;
    long                IO_NUMBER;
    long                IO_NUMBER_BIT;
    paseq_list         *SEQUENCE;
    unsigned long       TIME_SCALE;
    unsigned long       TIME_DELTA;
    char                TIME_UNIT;

  } patfig_list;

/*------------------------------------------------------------\
|                                                             |
|                          Variables                          |
|                                                             |
\------------------------------------------------------------*/
/*------------------------------------------------------------\
|                                                             |
|                          Functions                          |
|                                                             |
\------------------------------------------------------------*/

# endif
