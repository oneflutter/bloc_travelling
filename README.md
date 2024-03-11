# bloc_travelling

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



/// ------------------------- BLOC DOCUMENT BY ME IN EASY LANGUAGE --------------------------- ///

Event --- ADD hote hai
State --- Emit hote hai
State(return me milte hai) --- Emit(nikalte, jate hai) hote hai,

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


