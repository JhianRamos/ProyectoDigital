#include <SPI.h>
#include <MFRC522.h>

#define RST_PIN  9    //Pin 9 para el reset del RC522
#define SS_PIN  10   //Pin 10 para el SS (SDA) del RC522
MFRC522 mfrc522(SS_PIN, RST_PIN); //Creamos el objeto para el RC522

void setup() {
  Serial.begin(9600); //Iniciamos la comunicación  serial
  SPI.begin();        //Iniciamos el Bus SPI
  mfrc522.PCD_Init(); // Iniciamos  el MFRC522
  //Serial.println("Lectura del UID");
}

void loop() {

  int A=0;
  int B;
  // Revisamos si hay nuevas tarjetas  presentes
  if ( mfrc522.PICC_IsNewCardPresent())
        {  
      //Seleccionamos una tarjeta
            if ( mfrc522.PICC_ReadCardSerial())
            {
                  // Enviamos serialemente su UID
                  //Serial.print("Card UID:");
                  for (byte i = 0; i < mfrc522.uid.size; i++) {
                          Serial.print(mfrc522.uid.uidByte[i] < 0x10 ? " 0" : " ");
//                          Serial.print(mfrc522.uid.uidByte[i], DEC);
                          A=mfrc522.uid.uidByte[i], DEC;
                  }
               if (A==110){B=1; Serial.print(B);  delay (4400);
               B=0;} 
            
               else if (A==34){B=2; Serial.print(B); delay(2020);
               B=0;}
               
              Serial.print(B);
   
                  // Terminamos la lectura de la tarjeta  actual
                  mfrc522.PICC_HaltA();        
            }      
      
}
}
