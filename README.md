# bloc_travelling

## Getting Started

# theme, parallax effect in scrolling

<img src="https://github.com/user-attachments/assets/74b9daa6-0dbb-45a6-965d-f67372dbe9e8" alt="image1" height="742" width="380">
<img src="https://github.com/user-attachments/assets/0fd339d8-22bd-4da8-ba7c-6f3d12128655" alt="image2" height="742" width="380">
<img src="https://github.com/user-attachments/assets/cb2c8e72-4016-44bf-947b-c5a1b524ffce" alt="image3" height="742" width="380">
<img src="https://github.com/user-attachments/assets/b5b8dea6-a959-4b84-9ebd-d2905f385ae0" alt="image4" height="742" width="380">
<img src="https://github.com/user-attachments/assets/eb9ba8dc-9a34-4ff0-82a1-4163232278d2" alt="image5" height="742" width="380">
<img src="https://github.com/user-attachments/assets/ef4f1562-a489-44f4-9d62-c1a0f0105ab0" alt="image6" height="742" width="380">
<img src="https://github.com/user-attachments/assets/2faf435a-36ab-4536-ab57-7d509bfc2b83" alt="image7" height="742" width="380">

<br><br> <!-- Adds two line breaks to create space -->

<h2>BLOC DOCUMENT BY ME IN EASY LANGUAGE</h2>

Event --- ADD hote hai

State --- Emit hote hai      --->>  [ State(return me milte hai) --- Emit(nikalte, jate hai) hote hai, ]


![image](https://github.com/user-attachments/assets/dafd8043-1235-4321-b907-a942e4a78c6c)


---->>> ui me user k interaction se event create hota hai or bloc me add hota hai, fir bloc us event ki requirement k 
        hisab se logic lagata hai (kam complete karta hai) or state emit karta hai(chodta hai) jo aek stream ki tarah kam karta hai.
        esliye yaha update karne k liye setstate or update or refresh methods ki requirement nahi hoti. 


1. three parts hote hai ----->>> bloc, states, events


-- jyare bloc initialise kariae tyare aek tene aek initial state aapvi pade.
-- On((event, emit) => null); -->> ON method check the events, konsa method aaya or konsa nahi aaya ye check karta hai.

-- IN bloc - je page par bloc use karel hoy ae page close thashe tyare aeni sathe bloc pan automatically close thy jay.(Good point about bloc)

-- but listen method bandh nahi hoga page close hone ke baad bhi vo chalta rahega, jo performance ko affect kar sakta hai.



BLOC BUILDER --- builder deta ta hai jo ui dikhata hai. -- only UI banane k liye

BLOC LISTENER --- listener - only snackbar vagera dikha sakte hai -- listen karta rahega but dikhayega nahi. -- only listen (task check karvane k liye).

BLOC CONSUMER --- listener with builder -- mixer of (Builder and Listener). --  need both listen and show UI.


bloc me event and state dono hi stream thi.




Bloc ka other part(chotta bhai) - CUBITS.

Cubits -- no event, only states but in place of events --> use functions.


Bloc limitation --  event add kiye binba state emit nahi kar sakte,  
BUT IN CUBIT -- without event state emit kar sakte hai so, most of extra code nahi karna padega, har bar event or state nahi banana padega.

BLOC --- har bar state emit kar ne k liye har bar event add karna padega, event bhejo to hi state emit hogi.



Bloc -- based on events
Cubit -- based on function


Cubit has the freedom to emit state so, it is best as compared to the bloc.


