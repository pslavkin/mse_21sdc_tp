#ifndef HELLOWORLD
#define HELLOWORLD

unsigned char  readData    ( void                    );
void           writeData   ( unsigned char data      );
void           setM_Valid  ( bool s                  );
void           setM_Last   ( bool s                  );
bool           readM_Ready ( void                    );
bool           readS_Valid ( void                    );
bool           readS_Last  ( void                    );
void           setS_Ready  ( bool s                  );
void           setLeds     ( unsigned int l          );
void           setLed      ( unsigned char p, bool s );

#endif
