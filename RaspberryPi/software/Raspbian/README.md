# Installation of Raspbian 

## I. Software

#### 1. Download Raspbian:
   https://www.raspberrypi.org/downloads/raspbian/
#### 2. Download Putty:
   http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html 
#### 3. Download RUFUS:
   https://rufus.akeo.ie/?locale=pl_PL 


## II. SSH Server

<OL>
<LI> Unpack file with Raspbian's image </LI>
<LI> Format microSD card </LI>
<LI><P> Use Rufus to install Raspbian on card. Use settings as in the picture below: </P>
<P> (Button in red frame is used to select the path to Raspbian's image.) </P>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/RaspberryPi/software/Raspbian/pictureRufus.png" alt="Pictrue" title=" " /></LI> 



<LI> Press "Start". </LI>
<LI> Open your memory card and create new file "ssh" in main folder. Make sure that it hasn't got filename extension. </LI>
<LI> Place the memory card in the Raspberry </LI>
<LI> Connect Raspberry with router using ethernet cable </LI>
<LI> Connect the supply to the Raspberry </LI>
<LI><P> Check Raspberry's IP address in router </P>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/RaspberryPi/software/Raspbian/pictureIP.png" alt="Pictrue" title=" " /></LI>
<LI> Run Putty </LI> 
<LI> In field Host Name - type Raspberry's IP address </LI>
<LI><P> Press "Open" </P>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/RaspberryPi/software/Raspbian/picturePutty.png" alt="Pictrue" title=" " /></LI>
<LI><P> Press "Yes" </P>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/RaspberryPi/software/Raspbian/picturePuttyAlert.png" alt="Pictrue" title=" " /></LI>
<LI><P> Default login: "pi" </P>
<P> Default password: "raspberry" </P></LI>

</OL>

