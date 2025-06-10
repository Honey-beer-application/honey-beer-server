€
fD:\FON\master\Aplikacija\honey-beer-server\Services\ShoppingLocationService\ShoppingLocationService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )#
ShoppingLocationService) @
{ 
public 

class #
ShoppingLocationService (
:) *$
IShoppingLocationService+ C
{ 
private 
readonly &
ShoppingLocationRepository 3
_repository4 ?
;? @
public

 #
ShoppingLocationService

 &
(

& '&
ShoppingLocationRepository

' A

repository

B L
)

L M
=>

N P
_repository

Q \
=

] ^

repository

_ i
;

i j
public 
IEnumerable 
< 
ShoppingLocation +
>+ ,$
LoadAllShoppingLocations- E
(E F
)F G
=>H J
_repositoryK V
.V W$
LoadAllShoppingLocationsW o
(o p
)p q
;q r
} 
} ø
gD:\FON\master\Aplikacija\honey-beer-server\Services\ShoppingLocationService\IShoppingLocationService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )#
ShoppingLocationService) @
{ 
public 

	interface $
IShoppingLocationService -
{ 
public 
IEnumerable 
< 
ShoppingLocation +
>+ ,$
LoadAllShoppingLocations- E
(E F
)F G
;G H
} 
}		 æ
fD:\FON\master\Aplikacija\honey-beer-server\Services\SentCompanyEmailService\SentCompanyEmailService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )#
SentCompanyEmailService) @
{ 
public 

class #
SentCompanyEmailService (
:) *$
ISentCompanyEmailService+ C
{ 
private 
readonly &
SentCompanyEmailRepository 3
_repository4 ?
;? @
public

 #
SentCompanyEmailService

 &
(

& '&
SentCompanyEmailRepository

' A

repository

B L
)

L M
=>

N P
_repository

Q \
=

] ^

repository

_ i
;

i j
public 
bool 
	SaveEmail 
( 
SentCompanyEmail .
email/ 4
)4 5
=>6 8
_repository9 D
.D E
	SaveEmailE N
(N O
emailO T
)T U
;U V
} 
} û
gD:\FON\master\Aplikacija\honey-beer-server\Services\SentCompanyEmailService\ISentCompanyEmailService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )#
SentCompanyEmailService) @
{ 
public 

	interface $
ISentCompanyEmailService -
{ 
public 
bool 
	SaveEmail 
( 
SentCompanyEmail .
email/ 4
)4 5
;5 6
} 
}		 …
\D:\FON\master\Aplikacija\honey-beer-server\Services\ReservationService\ReservationService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
ReservationService) ;
{ 
public 

class 
ReservationService #
:$ %
IReservationService& 9
{ 
private 
readonly !
ReservationRepository .
_repository/ :
;: ;
public

 
ReservationService

 !
(

! "!
ReservationRepository

" 7

repository

8 B
)

B C
=>

D F
_repository

G R
=

S T

repository

U _
;

_ `
public 
IEnumerable 
< 
Reservation &
>& '
LoadAllReservations( ;
(; <
)< =
=>> @
_repositoryA L
.L M
LoadAllReservationsM `
(` a
)a b
;b c
public 
IEnumerable 
< 
Reservation &
>& '
SelectReservations( :
(: ;
Reservation; F
reservationG R
)R S
=>T V
_repositoryW b
.b c
SelectReservationsc u
(u v
reservation	v Å
)
Å Ç
;
Ç É
public 
bool 
SaveReservation #
(# $
Reservation$ /
reservation0 ;
); <
=>= ?
_repository@ K
.K L
SaveReservationL [
([ \
reservation\ g
)g h
;h i
} 
} ¶
]D:\FON\master\Aplikacija\honey-beer-server\Services\ReservationService\IReservationService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
ReservationService) ;
{ 
public 

	interface 
IReservationService (
{ 
public 
IEnumerable 
< 
Reservation &
>& '
LoadAllReservations( ;
(; <
)< =
;= >
public 
IEnumerable 
< 
Reservation &
>& '
SelectReservations( :
(: ;
Reservation; F
reservationG R
)R S
;S T
public		 
bool		 
SaveReservation		 #
(		# $
Reservation		$ /
reservation		0 ;
)		; <
;		< =
} 
} Ü
RD:\FON\master\Aplikacija\honey-beer-server\Services\QRCodeService\QRCodeService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
QRCodeService) 6
{ 
public 

class 
QRCodeService 
: 
IQRCodeService  .
{ 
private 
readonly 
QRCodeRepository )
_qrCodeRepository* ;
;; <
public

 
QRCodeService

 
(

 
QRCodeRepository

 -
qrCodeRepository

. >
)

> ?
=>

@ B
_qrCodeRepository

C T
=

U V
qrCodeRepository

W g
;

g h
public 
bool 

SaveQRCode 
( 
QRCode %
qrCode& ,
), -
=>. 0
_qrCodeRepository1 B
.B C

SaveQRCodeC M
(M N
qrCodeN T
)T U
;U V
} 
} Ó
SD:\FON\master\Aplikacija\honey-beer-server\Services\QRCodeService\IQRCodeService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
QRCodeService) 6
{ 
public 

	interface 
IQRCodeService #
{ 
public 
bool 

SaveQRCode 
( 
QRCode %
qrCode& ,
), -
;- .
} 
}		 ¡

XD:\FON\master\Aplikacija\honey-beer-server\Services\PromotionService\PromotionService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
PromotionService) 9
{ 
public 

class 
PromotionService !
:" #
IPromotionService$ 5
{ 
private 
readonly 
PromotionRepository ,
_repository- 8
;8 9
public

 
PromotionService

 
(

  
PromotionRepository

  3

repository

4 >
)

> ?
=>

@ B
_repository

C N
=

O P

repository

Q [
;

[ \
public 
IEnumerable 
< 
Event  
>  !
LoadAllPromotions" 3
(3 4
)4 5
=>6 8
_repository9 D
.D E
LoadAllPromotionsE V
(V W
)W X
;X Y
public 
IEnumerable 
< 
EventLocation (
>( )%
LoadAllPromotionLocations* C
(C D
)D E
=>F H
_repositoryI T
.T U%
LoadAllPromotionLocationsU n
(n o
)o p
;p q
} 
} À
YD:\FON\master\Aplikacija\honey-beer-server\Services\PromotionService\IPromotionService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
PromotionService) 9
{ 
public 

	interface 
IPromotionService &
{ 
public 
IEnumerable 
< 
Event  
>  !
LoadAllPromotions" 3
(3 4
)4 5
;5 6
public 
IEnumerable 
< 
EventLocation (
>( )%
LoadAllPromotionLocations* C
(C D
)D E
;E F
}		 
}

 ¯
TD:\FON\master\Aplikacija\honey-beer-server\Services\ProductService\ProductService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
ProductService) 7
{ 
public 

class 
ProductService 
:  !
IProductService" 1
{ 
private 
readonly 
ProductRespository +
_repository, 7
;7 8
public

 
ProductService

 
(

 
ProductRespository

 0

repository

1 ;
)

; <
=>

= ?
_repository

@ K
=

L M

repository

N X
;

X Y
public 
IEnumerable 
< 
Product "
>" #
GetAllProducts$ 2
(2 3
)3 4
=>5 7
_repository8 C
.C D
GetAllProductsD R
(R S
)S T
;T U
} 
} à
UD:\FON\master\Aplikacija\honey-beer-server\Services\ProductService\IProductService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
ProductService) 7
{ 
public 

	interface 
IProductService $
{ 
public 
IEnumerable 
< 
Product "
>" #
GetAllProducts$ 2
(2 3
)3 4
;4 5
} 
}		 ß
`D:\FON\master\Aplikacija\honey-beer-server\Services\PersonalEmailService\PersonalEmailService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( ) 
PersonalEmailService) =
{ 
public 

class  
PersonalEmailService %
:& '!
IPersonalEmailService( =
{ 
private 
readonly #
PersonalEmailRepository 0
_repository1 <
;< =
public

  
PersonalEmailService

 #
(

# $#
PersonalEmailRepository

$ ;

repository

< F
)

F G
=>

H J
_repository

K V
=

W X

repository

Y c
;

c d
public 
bool 
	SendEmail 
( 
SentPersonalEmail /
email0 5
)5 6
=>7 9
_repository: E
.E F
	SendEmailF O
(O P
emailP U
)U V
;V W
} 
} ì
aD:\FON\master\Aplikacija\honey-beer-server\Services\PersonalEmailService\IPersonalEmailService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( ) 
PersonalEmailService) =
{ 
public 

	interface !
IPersonalEmailService *
{ 
public 
bool 
	SendEmail 
( 
SentPersonalEmail /
email0 5
)5 6
;6 7
} 
}		 ´

OD:\FON\master\Aplikacija\honey-beer-server\Services\OfferSerice\OfferService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
OfferSerice) 4
{ 
public 

class 
OfferService 
: 
IOfferService  -
{ 
private 
readonly 
OfferRepository (
_offerRepository) 9
;9 :
public

 
OfferService

 
(

 
OfferRepository

 +
offerRepository

, ;
)

; <
=>

= ?
_offerRepository

@ P
=

Q R
offerRepository

S b
;

b c
public 
IEnumerable 
< 
Offer  
>  !
GetAllOffers" .
(. /
)/ 0
=>1 3
_offerRepository4 D
.D E
GetAllOffersE Q
(Q R
)R S
;S T
public 
bool 
CreateOffer 
(  
OfferByCompany  .
offerByCompany/ =
)= >
=>? A
_offerRepositoryB R
.R S
CreateOfferS ^
(^ _
offerByCompany_ m
)m n
;n o
} 
} û
PD:\FON\master\Aplikacija\honey-beer-server\Services\OfferSerice\IOfferService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
OfferSerice) 4
{ 
public 

	interface 
IOfferService "
{ 
public 
IEnumerable 
< 
Offer  
>  !
GetAllOffers" .
(. /
)/ 0
;0 1
public		 
bool		 
CreateOffer		 
(		  
OfferByCompany		  .
offerByCompany		/ =
)		= >
;		> ?
}

 
} Ê
bD:\FON\master\Aplikacija\honey-beer-server\Services\OfferByCompanyService\OfferByCompanyService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )!
OfferByCompanyService) >
{ 
public 

class !
OfferByCompanyService &
:' ("
IOfferByCompanyService( >
{ 
private 
readonly $
OfferByCompanyRepository 1
_repository2 =
;= >
public

 !
OfferByCompanyService

 $
(

$ %$
OfferByCompanyRepository

% =

repository

> H
)

H I
=>

J L
_repository

M X
=

Y Z

repository

[ e
;

e f
public 
IEnumerable 
< 
OfferByCompany )
>) *!
GetAllOffersByCompany+ @
(@ A
)A B
=>C E
_repositoryF Q
.Q R!
GetAllOffersByCompanyR g
(g h
)h i
;i j
public 
bool 
SaveOfferByCompany &
(& '
OfferByCompany' 5
offerByCompany6 D
)D E
=>F H
_repositoryI T
.T U
SaveOfferByCompanyU g
(g h
offerByCompanyh v
)v w
;w x
public 
bool  
UpdateOfferByCompany (
(( )
OfferByCompany) 7
offerByCompany8 F
)F G
=>H J
_repositoryK V
.V W 
UpdateOfferByCompanyW k
(k l
offerByCompanyl z
)z {
;{ |
public 
OfferByCompany 
LoadOfferByCompany 0
(0 1
long1 5
id6 8
)8 9
=>: <
_repository= H
.H I
LoadOfferByCompanyI [
([ \
id\ ^
)^ _
;_ `
} 
} ©
cD:\FON\master\Aplikacija\honey-beer-server\Services\OfferByCompanyService\IOfferByCompanyService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )!
OfferByCompanyService) >
{ 
public 

	interface "
IOfferByCompanyService +
{ 
public 
IEnumerable 
< 
OfferByCompany )
>) *!
GetAllOffersByCompany+ @
(@ A
)A B
;B C
public 
bool 
SaveOfferByCompany &
(& '
OfferByCompany' 5
offerByCompany6 D
)D E
;E F
public		 
bool		  
UpdateOfferByCompany		 (
(		( )
OfferByCompany		) 7
offerByCompany		8 F
)		F G
;		G H
public

 
OfferByCompany

 
LoadOfferByCompany

 0
(

0 1
long

1 5
id

6 8
)

8 9
;

9 :
} 
} ®

TD:\FON\master\Aplikacija\honey-beer-server\Services\MeetingService\MeetingService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
MeetingService) 7
{ 
public 

class 
MeetingService 
:  !
IMeetingService" 1
{ 
private 
readonly 
MeetingRepository *
_repository+ 6
;6 7
public

 
MeetingService

 
(

 
MeetingRepository

 /

repository

0 :
)

: ;
=>

< >
_repository

? J
=

K L

repository

M W
;

W X
public 
bool 
UpdateMeeting !
(! "
Meeting" )
meeting* 1
)1 2
=>3 5
_repository6 A
.A B
UpdateMeetingB O
(O P
meetingP W
)W X
;X Y
public 
IEnumerable 
< 
Meeting "
>" #$
LoadAllAvailableMeetings$ <
(< =
)= >
=>? A
_repositoryB M
.M N$
LoadAllAvailableMeetingsN f
(f g
)g h
;h i
} 
} ™
UD:\FON\master\Aplikacija\honey-beer-server\Services\MeetingService\IMeetingService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
MeetingService) 7
{ 
public 

	interface 
IMeetingService $
{ 
public 
bool 
UpdateMeeting !
(! "
Meeting" )
meeting* 1
)1 2
;2 3
public 
IEnumerable 
< 
Meeting "
>" #$
LoadAllAvailableMeetings$ <
(< =
)= >
;> ?
}		 
}

 ´
VD:\FON\master\Aplikacija\honey-beer-server\Services\LocationService\LocationService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
LocationService) 8
{ 
public 

class 
LocationService  
:! "
ILocationService# 3
{ 
private 
readonly 
LocationRepository +
_locationRepository, ?
;? @
public

 
LocationService

 
(

 
LocationRepository

 1
locationRepository

2 D
)

D E
=>

F H
_locationRepository

I \
=

] ^
locationRepository

_ q
;

q r
public 
IEnumerable 
< 
Location #
># $
LoadAllLocations% 5
(5 6
)6 7
=>8 :
_locationRepository; N
.N O
LoadAllLocationsO _
(_ `
)` a
;a b
} 
} è
WD:\FON\master\Aplikacija\honey-beer-server\Services\LocationService\ILocationService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
LocationService) 8
{ 
public 

	interface 
ILocationService %
{ 
public 
IEnumerable 
< 
Location #
># $
LoadAllLocations% 5
(5 6
)6 7
;7 8
} 
}		 Ë
OD:\FON\master\Aplikacija\honey-beer-server\Services\FormService\IFormService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
FormService) 4
{ 
public 

	interface 
IFormService !
{ 
public 
bool 

CreateForm 
( 
Event $
	eventForm% .
). /
;/ 0
} 
}		 ›
ND:\FON\master\Aplikacija\honey-beer-server\Services\FormService\FormService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
FormService) 4
{ 
public 

class 
FormService 
: 
IFormService +
{ 
private 
readonly 
FormRepository '
_repository( 3
;3 4
public

 
FormService

 
(

 
FormRepository

 )

repository

* 4
)

4 5
=>

6 8
_repository

9 D
=

E F

repository

G Q
;

Q R
public 
bool 

CreateForm 
( 
Event $
	eventForm% .
). /
=>0 2
_repository3 >
.> ?

Createform? I
(I J
	eventFormJ S
)S T
;T U
} 
} ˝
QD:\FON\master\Aplikacija\honey-beer-server\Services\EventService\IEventService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
EventService) 5
{ 
public 

	interface 
IEventService "
{ 
public 
IEnumerable 
< 
Event  
>  !
LoadAllEvents" /
(/ 0
)0 1
;1 2
} 
}		 ‚
PD:\FON\master\Aplikacija\honey-beer-server\Services\EventService\EventService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
EventService) 5
{ 
public 

class 
EventService 
: 
IEventService  -
{ 
private 
readonly 
EventRepository (
_repository) 4
;4 5
public

 
EventService

 
(

 
EventRepository

 +

repository

, 6
)

6 7
=>

8 :
_repository

; F
=

G H

repository

I S
;

S T
public 
IEnumerable 
< 
Event  
>  !
LoadAllEvents" /
(/ 0
)0 1
=>2 4
_repository5 @
.@ A
LoadAllEventsA N
(N O
)O P
;P Q
} 
} è
WD:\FON\master\Aplikacija\honey-beer-server\Services\DiscountService\IDiscountService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
DiscountService) 8
{ 
public 

	interface 
IDiscountService %
{ 
public 
IEnumerable 
< 
Discount #
># $
LoadAllDiscounts% 5
(5 6
)6 7
;7 8
} 
}		 ë
VD:\FON\master\Aplikacija\honey-beer-server\Services\DiscountService\DiscountService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
DiscountService) 8
{ 
public 

class 
DiscountService  
:! "
IDiscountService# 3
{ 
private 
readonly 
DiscountRepository +
_repository, 7
;7 8
public

 
DiscountService

 
(

 
DiscountRepository

 1

repository

2 <
)

< =
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
IEnumerable 
< 
Discount #
># $
LoadAllDiscounts% 5
(5 6
)6 7
=>8 :
_repository; F
.F G
LoadAllDiscountsG W
(W X
)X Y
;Y Z
} 
} î
WD:\FON\master\Aplikacija\honey-beer-server\Services\CustomerService\ICustomerService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
CustomerService) 8
{ 
public 

	interface 
ICustomerService %
{ 
public 
IEnumerable 
< 
Customer #
># $
GetAllCustomers% 4
(4 5
)5 6
;6 7
public 
Customer 
CreateCustomer &
(& '
Customer' /
customer0 8
)8 9
;9 :
public		 
bool		 
DeleteCustomer		 "
(		" #
Customer		# +
customer		, 4
)		4 5
;		5 6
public

 
bool

 
SaveAllVotes

  
(

  !
List

! %
<

% &
CustomerAnswer

& 4
>

4 5
votes

6 ;
)

; <
;

< =
} 
} ®
VD:\FON\master\Aplikacija\honey-beer-server\Services\CustomerService\CustomerService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
CustomerService) 8
{ 
public 

class 
CustomerService  
:! "
ICustomerService# 3
{ 
private 
readonly 
CustomerRepository +
_repository, 7
;7 8
public

 
CustomerService

 
(

 
CustomerRepository

 1

repository

2 <
)

< =
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
IEnumerable 
< 
Customer #
># $
GetAllCustomers% 4
(4 5
)5 6
=>7 9
_repository: E
.E F
GetAllCustomersF U
(U V
)V W
;W X
public 
Customer 
CreateCustomer &
(& '
Customer' /
customer0 8
)8 9
=>: <
_repository= H
.H I
CreateCustomerI W
(W X
customerX `
)` a
;a b
public 
bool 
DeleteCustomer "
(" #
Customer# +
customer, 4
)4 5
=>6 8
_repository: E
.E F
DeleteCustomerF T
(T U
customerU ]
)] ^
;^ _
public 
bool 
SaveAllVotes  
(  !
List! %
<% &
CustomerAnswer& 4
>4 5
votes6 ;
); <
=>= ?
_repository@ K
.K L
SaveAllVotesL X
(X Y
votesY ^
)^ _
;_ `
} 
} è
UD:\FON\master\Aplikacija\honey-beer-server\Services\CompanyService\ICompanyService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
CompanyService) 7
{ 
public 

	interface 
ICompanyService $
{ 
public 
bool 
CreateCompany !
(! "
Company" )
company* 1
)1 2
;2 3
public 
bool 
DeleteCompany !
(! "
Company" )
company* 1
)1 2
;2 3
}		 
}

 ì
TD:\FON\master\Aplikacija\honey-beer-server\Services\CompanyService\CompanyService.cs
	namespace 	!
honey_beer_server_app
 
.  
Services  (
.( )
CompanyService) 7
{ 
public 

class 
CompanyService 
:  !
ICompanyService" 1
{ 
private 
readonly 
CompanyRepository *
_repository+ 6
;6 7
public		 
CompanyService		 
(		 
CompanyRepository		 /

repository		0 :
)		: ;
{

 	
_repository 
= 

repository $
;$ %
} 	
public 
virtual 
bool 
CreateCompany )
() *
Company* 1
company2 9
)9 :
{ 	
return 
_repository 
. 
CreateCompany ,
(, -
company- 4
)4 5
;5 6
} 	
public 
virtual 
bool 
DeleteCompany )
() *
Company* 1
company2 9
)9 :
{ 	
return 
_repository 
. 
DeleteCompany ,
(, -
company- 4
)4 5
;5 6
} 	
} 
} ê
UD:\FON\master\Aplikacija\honey-beer-server\Repositories\ShoppingLocationRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class &
ShoppingLocationRepository +
{ 
private		 
readonly		 
	DBContext		 "
_context		# +
;		+ ,
public &
ShoppingLocationRepository )
() *
	DBContext* 3
context4 ;
); <
=>= ?
_context@ H
=I J
contextK R
;R S
public 
IEnumerable 
< 
ShoppingLocation +
>+ ,$
LoadAllShoppingLocations- E
(E F
)F G
{ 	
return 
from 
shoppingLocation (
in) +
_context, 4
.4 5
ShoppingLocation5 E
join 
company 
in  "
_context# +
.+ ,
Company, 3
on 
shoppingLocation &
.& '
PIB' *
equals+ 1
company2 9
.9 :
PIB: =
where 
( 
from 
productInLocation 0
in1 3
_context4 <
.< =
ProductInLocation= N
where 
productInLocation  1
.1 2
ShoppingLocationId2 D
==E G
shoppingLocationH X
.X Y
ShoppingLocationIdY k
&&l n
productInLocation	o Ä
.
Ä Å
PIB
Å Ñ
==
Ö á
shoppingLocation
à ò
.
ò ô
PIB
ô ú
select  
productInLocation! 2
.2 3
ShoppingLocationId3 E
)E F
.F G
CountG L
(L M
)M N
>O P
$numQ R
select 
new 
ShoppingLocation .
(. /
)/ 0
{ 
PIB 
= 
shoppingLocation -
.- .
PIB. 1
,1 2
Location 
=  !
shoppingLocation" 2
.2 3
Location3 ;
,; <
ShoppingLocationId )
=* +
shoppingLocation, <
.< =
ShoppingLocationId= O
,O P
ProductsInLocation )
=* +
(, -
from- 1
product2 9
in: <
_context= E
.E F
ProductF M
join- 1
productInLocation2 C
inD F
_contextG O
.O P
ProductInLocationP a
on, .
product/ 6
.6 7
	ProductId7 @
equalsA G
productInLocationH Y
.Y Z
	ProductIdZ c
where- 2
productInLocation3 D
.D E
ShoppingLocationIdE W
==X Z
shoppingLocation[ k
.k l
ShoppingLocationIdl ~
&&	 Å
productInLocation
Ç ì
.
ì î
PIB
î ó
==
ò ö
shoppingLocation
õ ´
.
´ ¨
PIB
¨ Ø
select- 3
new4 7
Product8 ?
(? @
)@ A
{- .
	ProductId  1 :
=  ; <
product  = D
.  D E
	ProductId  E N
,  N O
Description!!1 <
=!!= >
product!!? F
.!!F G
Description!!G R
,!!R S
Name""1 5
=""6 7
product""8 ?
.""? @
Name""@ D
}##- .
)##. /
.##/ 0
ToList##0 6
(##6 7
)##7 8
}$$ 
;$$ 
}%% 	
}&& 
}'' ›
UD:\FON\master\Aplikacija\honey-beer-server\Repositories\SentCompanyEmailRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class &
SentCompanyEmailRepository +
{ 
private		 
readonly		 
	DBContext		 "
_context		# +
;		+ ,
public &
SentCompanyEmailRepository )
() *
	DBContext* 3
context4 ;
); <
=>= ?
_context@ H
=I J
contextK R
;R S
public 
bool 
	SaveEmail 
( 
SentCompanyEmail .
email/ 4
)4 5
{ 	!
IDbContextTransaction !
transaction" -
=. /
_context0 8
.8 9
Database9 A
.A B
BeginTransactionB R
(R S
)S T
;T U
try 
{ 
_context 
. 
SentCompanyEmail )
.) *
Add* -
(- .
email. 3
)3 4
;4 5
_context 
. 
SaveChanges $
($ %
)% &
;& '
transaction 
. 
Commit "
(" #
)# $
;$ %
return 
true 
; 
} 
catch 
( 
	Exception 
) 
{ 
transaction 
. 
Rollback $
($ %
)% &
;& '
throw 
; 
} 
} 	
} 
} Ω1
PD:\FON\master\Aplikacija\honey-beer-server\Repositories\ReservationRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class !
ReservationRepository &
{		 
private

 
readonly

 
	DBContext

 "
_context

# +
;

+ ,
public !
ReservationRepository $
($ %
	DBContext% .
context/ 6
)6 7
=>8 :
_context; C
=D E
contextF M
;M N
public 
IEnumerable 
< 
Reservation &
>& '
LoadAllReservations( ;
(; <
)< =
{ 	
return 
_context 
. 
Reservation '
.' (
Include( /
(/ 0
reservation0 ;
=>< >
reservation? J
.J K
ProductInstanceK Z
)Z [
.[ \
Include\ c
(c d
reservationd o
=>p r
reservations ~
.~ 
CompanyInstance	 é
)
é è
;
è ê
} 	
public 
IEnumerable 
< 
Reservation &
>& '
SelectReservations( :
(: ;
Reservation; F
reservationG R
)R S
{ 	

IQueryable 
< 
Reservation "
>" #
result$ *
=+ ,
_context- 5
.5 6
Reservation6 A
.A B
IncludeB I
(I J
reservationJ U
=>V X
reservationY d
.d e
ProductInstancee t
)t u
.u v
Includev }
(} ~
reservation	~ â
=>
ä å
reservation
ç ò
.
ò ô
CompanyInstance
ô ®
)
® ©
;
© ™
if 
( 
reservation 
. 
PIB 
>=  "
$num# +
&&, .
reservation/ :
.: ;
PIB; >
<=? A
$numB J
)J K
result 
= 
_context !
.! "
Reservation" -
.- .
Where. 3
(3 4
r4 5
=>6 8
r9 :
.: ;
PIB; >
==? A
reservationB M
.M N
PIBN Q
)Q R
;R S
if 
( 
reservation 
. 
	ProductId %
>& '
$num( )
)) *
result 
= 
result 
.  
Where  %
(% &
r& '
=>( *
r+ ,
., -
	ProductId- 6
==7 9
reservation: E
.E F
	ProductIdF O
)O P
;P Q
if 
( 
reservation 
. 
IsAmountValid )
() *
)* +
)+ ,
result 
= 
result 
.  
Where  %
(% &
r& '
=>( *
r+ ,
., -
Amount- 3
==4 6
reservation7 B
.B C
AmountC I
)I J
;J K
if   
(   
reservation   
.   
IsDeliveryValid   +
(  + ,
)  , -
&&  . 0
reservation  1 <
.  < =
Delivery  = E
!=  E G
null  G K
)  K L
result!! 
=!! 
result!! 
.!!  
Where!!  %
(!!% &
r!!& '
=>!!( *
r!!+ ,
.!!, -
Delivery!!- 5
!=!!6 8
null!!9 =
&&!!> @
DateTime!!A I
.!!I J
Compare!!J Q
(!!Q R
(!!R S
DateTime!!S [
)!![ \
r!!\ ]
.!!] ^
Delivery!!^ f
,!!f g
(!!h i
DateTime!!i q
)!!q r
reservation!!r }
.!!} ~
Delivery	!!~ Ü
)
!!Ü á
==
!!à ä
$num
!!ã å
)
!!å ç
;
!!ç é
return## 
result## 
;## 
}$$ 	
public&& 
bool&& 
SaveReservation&& #
(&&# $
Reservation&&$ /
reservation&&0 ;
)&&; <
{'' 	
if(( 
((( 
!(( 
reservation(( 
.(( 
IsReservationValid(( /
(((/ 0
)((0 1
)((1 2
return)) 
false)) 
;)) !
IDbContextTransaction++ !
transaction++" -
=++. /
_context++0 8
.++8 9
Database++9 A
.++A B
BeginTransaction++B R
(++R S
)++S T
;++T U
try,, 
{-- 
if.. 
(.. 
reservation.. 
...  
ProductInstance..  /
!=..0 2
null..3 7
)..7 8
reservation..9 D
...D E
ProductInstance..E T
=..U V
null..W [
;..[ \
if// 
(// 
reservation// 
.//  
CompanyInstance//  /
!=//0 2
null//3 7
)//7 8
reservation//9 D
.//D E
CompanyInstance//E T
=//U V
null//W [
;//[ \
_context00 
.00 
Reservation00 $
.00$ %
Add00% (
(00( )
reservation00) 4
)004 5
;005 6
_context11 
.11 
SaveChanges11 $
(11$ %
)11% &
;11& '
transaction22 
.22 
Commit22 "
(22" #
)22# $
;22$ %
return33 
true33 
;33 
}44 
catch55 
(55 
	Exception55 
)55 
{66 
transaction77 
.77 
Rollback77 $
(77$ %
)77% &
;77& '
throw88 
;88 
}99 
}:: 	
};; 
}<<  
KD:\FON\master\Aplikacija\honey-beer-server\Repositories\QRCodeRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class 
QRCodeRepository !
{ 
private		 
readonly		 
	DBContext		 "
_context		# +
;		+ ,
public 
QRCodeRepository 
(  
	DBContext  )
context* 1
)1 2
=>3 5
_context6 >
=? @
contextA H
;H I
public 
bool 

SaveQRCode 
( 
QRCode %
qrCode& ,
), -
{ 	!
IDbContextTransaction !

transation" ,
=- .
_context/ 7
.7 8
Database8 @
.@ A
BeginTransactionA Q
(Q R
)R S
;S T
try 
{ 
qrCode 
. 
QRCodeId 
=  !
(" #
from# '
qrCod( -
in. 0
_context1 9
.9 :
QRCode: @
whereA F
qrCodG L
.L M
CodeM Q
.Q R
EqualsR X
(X Y
qrCodeY _
._ `
Code` d
)d e
selectf l
qrCodm r
.r s
QRCodeIds {
){ |
.| }
First	} Ç
(
Ç É
)
É Ñ
;
Ñ Ö
qrCode 
. %
ScannedByCustomerInstance 0
=1 2
new3 6
ScannedByCustomer7 H
{ 
QRCodeId 
= 
qrCode %
.% &
QRCodeId& .
,. /

CustomerId 
=  
qrCode! '
.' (
	ScannedBy( 1
.1 2

CustomerId2 <
} 
; 
_context 
. 
ScannedByCustomer *
.* +
Add+ .
(. /
qrCode/ 5
.5 6%
ScannedByCustomerInstance6 O
)O P
;P Q
_context 
. 
SaveChanges $
($ %
)% &
;& '

transation 
. 
Commit !
(! "
)" #
;# $
return 
true 
; 
} 
catch 
( 
	Exception 
) 
{ 

transation 
. 
Rollback #
(# $
)$ %
;% &
throw   
;   
}!! 
}"" 	
}## 
}$$ ¥4
ND:\FON\master\Aplikacija\honey-beer-server\Repositories\PromotionRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class 
PromotionRepository $
{ 
private 
readonly 
	DBContext "
_context# +
;+ ,
public

 
PromotionRepository

 "
(

" #
	DBContext

# ,
context

- 4
)

4 5
=>

6 8
_context

9 A
=

B C
context

D K
;

K L
public 
IEnumerable 
< 
Event  
>  !
LoadAllPromotions" 3
(3 4
)4 5
{ 	
return 
from 
cEvent 
in !
_context" *
.* +
Event+ 0
join 
	eventType !
in" $
_context% -
.- .
	EventType. 7
on8 :
cEvent; A
.A B
EventTypeIdB M
equalsN T
	eventTypeU ^
.^ _
EventTypeId_ j
where 
DateTime !
.! "
Compare" )
() *
cEvent* 0
.0 1
	BeginDate1 :
,: ;
DateTime< D
.D E
NowE H
)H I
<=J L
$numM N
&&O Q
DateTime !
.! "
Compare" )
() *
cEvent* 0
.0 1
EndDate1 8
,8 9
DateTime: B
.B C
NowC F
)F G
>=H J
$numK L
&&M O
	eventTypeP Y
.Y Z
NameZ ^
.^ _
Equals_ e
(e f
$strf q
)q r
select 
new 
Event #
(# $
)$ %
{ 
EventId 
=  
cEvent! '
.' (
EventId( /
,/ 0
CreationDate #
=$ %
cEvent& ,
., -
CreationDate- 9
,9 :
Description "
=# $
cEvent% +
.+ ,
Description, 7
,7 8
	BeginDate  
=! "
cEvent# )
.) *
	BeginDate* 3
,3 4
EndDate 
=  
cEvent! '
.' (
EndDate( /
,/ 0
EventTypeId "
=# $
cEvent% +
.+ ,
EventTypeId, 7
,7 8
EventLocations %
=& '
(( )
from) -
location. 6
in7 9
_context: B
.B C
EventLocationC P
whereQ V
locationW _
._ `
EventId` g
==h j
cEventk q
.q r
EventIdr y
select	z Ä
location
Å â
)
â ä
.
ä ã
ToList
ã ë
(
ë í
)
í ì
,
ì î
Title 
= 
cEvent %
.% &
Title& +
,+ ,
EventTypeInstance (
=) *
	eventType+ 4
} 
; 
} 	
public   
IEnumerable   
<   
EventLocation   (
>  ( )%
LoadAllPromotionLocations  * C
(  C D
)  D E
{!! 	
return"" 
from"" 
eventLocation"" %
in""& (
_context"") 1
.""1 2
EventLocation""2 ?
join## 
cEvent## 
in##  "
_context### +
.##+ ,
Event##, 1
on$$ 
eventLocation$$ $
.$$$ %
EventId$$% ,
equals$$- 3
cEvent$$4 :
.$$: ;
EventId$$; B
join%% 
	eventType%% "
in%%# %
_context%%& .
.%%. /
	EventType%%/ 8
on&& 
cEvent&& 
.&& 
EventTypeId&& )
equals&&* 0
	eventType&&1 :
.&&: ;
EventTypeId&&; F
where'' 
DateTime'' "
.''" #
Compare''# *
(''* +
cEvent''+ 1
.''1 2
	BeginDate''2 ;
,''; <
DateTime''= E
.''E F
Now''F I
)''I J
<=''K M
$num''N O
&&''P R
DateTime(( "
.((" #
Compare((# *
(((* +
cEvent((+ 1
.((1 2
EndDate((2 9
,((9 :
DateTime((; C
.((C D
Now((D G
)((G H
>=((I K
$num((L M
&&((N P
	eventType((Q Z
.((Z [
Name(([ _
.((_ `
Equals((` f
(((f g
$str((g r
)((r s
select)) 
new)) 
EventLocation)) ,
()), -
)))- .
{** 
EventId++ 
=++  !
eventLocation++" /
.++/ 0
EventId++0 7
,++7 8
EventLocationId,, '
=,,( )
eventLocation,,* 7
.,,7 8
EventLocationId,,8 G
,,,G H
Location--  
=--! "
eventLocation--# 0
.--0 1
Location--1 9
,--9 :
EventInstance.. %
=..& '
new..( +
Event.., 1
(..1 2
)..2 3
{// 
EventId00 #
=00$ %
cEvent00& ,
.00, -
EventId00- 4
,004 5
	BeginDate11 %
=11& '
cEvent11( .
.11. /
	BeginDate11/ 8
,118 9
CreationDate22 (
=22) *
cEvent22+ 1
.221 2
CreationDate222 >
,22> ?
Description33 '
=33( )
cEvent33* 0
.330 1
Description331 <
,33< =
EndDate44 #
=44$ %
cEvent44& ,
.44, -
EndDate44- 4
,444 5
Title55 !
=55" #
cEvent55$ *
.55* +
Title55+ 0
,550 1
EventTypeId66 '
=66( )
cEvent66* 0
.660 1
EventTypeId661 <
,66< =
EventTypeInstance77 -
=77. /
new770 3
	EventType774 =
(77= >
)77> ?
{88 
EventTypeId99  +
=99, -
	eventType99. 7
.997 8
EventTypeId998 C
,99C D
Name::  $
=::% &
	eventType::' 0
.::0 1
Name::1 5
};; 
}<< 
,<< 
}== 
;== 
}>> 	
}?? 
}@@ É
MD:\FON\master\Aplikacija\honey-beer-server\Repositories\ProductRespository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class 
ProductRespository #
{ 
private 
readonly 
	DBContext "
_context# +
;+ ,
public

 
ProductRespository

 !
(

! "
	DBContext

" +
context

, 3
)

3 4
=>

5 7
_context

8 @
=

A B
context

C J
;

J K
public 
IEnumerable 
< 
Product "
>" #
GetAllProducts$ 2
(2 3
)3 4
{ 	
return 
from 
product 
in  "
_context# +
.+ ,
Product, 3
select 
new 
Product %
(% &
)& '
{ 
	ProductId  
=! "
product# *
.* +
	ProductId+ 4
,4 5
Name 
= 
product %
.% &
Name& *
,* +
Description "
=# $
product% ,
., -
Description- 8
,8 9
OfferInstance $
=% &
_context' /
./ 0
Offer0 5
.5 6
Where6 ;
(; <
offer< A
=>B D
offerE J
.J K
	ProductIdK T
==U W
productX _
._ `
	ProductId` i
)i j
.j k
ToListk q
(q r
)r s
} 
; 
} 	
} 
} ©
RD:\FON\master\Aplikacija\honey-beer-server\Repositories\PersonalEmailRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class #
PersonalEmailRepository (
{		 
private

 
readonly

 
	DBContext

 "
_context

# +
;

+ ,
public #
PersonalEmailRepository &
(& '
	DBContext' 0
context1 8
)8 9
=>: <
_context= E
=F G
contextH O
;O P
public 
bool 
	SendEmail 
( 
SentPersonalEmail /
email0 5
)5 6
{ 	!
IDbContextTransaction !
transaction" -
=. /
_context0 8
.8 9
Database9 A
.A B
BeginTransactionB R
(R S
)S T
;T U
try 
{ 
if 
( 
! 
_context 
. 
PersonalEmail +
.+ ,
Any, /
(/ 0
e0 1
=>2 4
e5 6
.6 7
Email7 <
.< =
Equals= C
(C D
emailD I
.I J
EmailJ O
)O P
)P Q
)Q R
_context 
. 
PersonalEmail *
.* +
Add+ .
(. /
email/ 4
.4 5!
PersonalEmailInstance5 J
)J K
;K L
_context 
. 
SentPersonalEmail *
.* +
Add+ .
(. /
email/ 4
)4 5
;5 6
_context 
. 
SaveChanges $
($ %
)% &
;& '
transaction 
. 
Commit "
(" #
)# $
;$ %
return 
true 
; 
} 
catch 
( 
	Exception 
) 
{ 
transaction 
. 
Rollback $
($ %
)% &
;& '
throw 
; 
}   
}!! 	
}"" 
}## ‡+
JD:\FON\master\Aplikacija\honey-beer-server\Repositories\OfferRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class 
OfferRepository  
{		 
private

 
readonly

 
	DBContext

 "
_context

# +
;

+ ,
public 
OfferRepository 
( 
	DBContext (
context) 0
)0 1
=>2 4
_context5 =
=> ?
context@ G
;G H
public 
IEnumerable 
< 
Offer  
>  !
GetAllOffers" .
(. /
)/ 0
{ 	
return 
from 
product 
in  "
_context# +
.+ ,
Product, 3
join 
offer 
in  
_context! )
.) *
Offer* /
on 
product 
. 
	ProductId '
equals( .
offer/ 4
.4 5
	ProductId5 >
where 
! 
( 
from 
o  !
in" $
_context% -
.- .
OfferByCompany. <
select= C
oD E
.E F
OfferIdF M
)M N
.N O
AnyO R
(R S
offS V
=>W Y
offZ ]
==^ `
offera f
.f g
OfferIdg n
)n o
select 
new 
Offer #
(# $
)$ %
{ 
	ProductId  
=! "
offer# (
.( )
	ProductId) 2
,2 3
OfferId 
=  
offer! &
.& '
OfferId' .
,. /
Amount 
= 
offer  %
.% &
Amount& ,
,, -
	BeginDate  
=! "
offer# (
.( )
	BeginDate) 2
,2 3
EndDate 
=  
offer! &
.& '
EndDate' .
,. /
ProductInstance &
=' (
new) ,
Product- 4
(4 5
)5 6
{ 
	ProductId $
=% &
product' .
.. /
	ProductId/ 8
,8 9
Name 
=  !
product" )
.) *
Name* .
,. /
Description &
=' (
product) 0
.0 1
Description1 <
}   
}!! 
;!! 
}"" 	
public$$ 
bool$$ 
CreateOffer$$ 
($$  
OfferByCompany$$  .
offer$$/ 4
)$$4 5
{%% 	
if&& 
(&& 
offer&& 
.&& 
OfferInstance&& #
==&&$ &
null&&' +
||&&, .
!&&/ 0
offer&&0 5
.&&5 6
OfferInstance&&6 C
.&&C D
IsOfferValid&&D P
(&&P Q
)&&Q R
)&&R S
return'' 
false'' 
;'' !
IDbContextTransaction)) !
transaction))" -
=)). /
_context))0 8
.))8 9
Database))9 A
.))A B
BeginTransaction))B R
())R S
)))S T
;))T U
try** 
{++ 
if,, 
(,, 
offer,, 
.,, 
OfferInstance,, '
.,,' (
ProductInstance,,( 7
!=,,8 :
null,,; ?
),,? @
offer,,A F
.,,F G
OfferInstance,,G T
.,,T U
ProductInstance,,U d
=,,e f
null,,g k
;,,k l
_context-- 
.-- 
Offer-- 
.-- 
Add-- "
(--" #
offer--# (
.--( )
OfferInstance--) 6
)--6 7
;--7 8
_context.. 
... 
SaveChanges.. $
(..$ %
)..% &
;..& '
if// 
(// 
offer// 
.// 
CompanyInstance// )
!=//* ,
null//- 1
)//1 2
{00 
offer11 
.11 
OfferId11 !
=11" #
offer11$ )
.11) *
OfferInstance11* 7
.117 8
OfferId118 ?
;11? @
offer22 
.22 
OfferInstance22 '
=22( )
null22* .
;22. /
offer33 
.33 
PIB33 
=33 
offer33  %
.33% &
CompanyInstance33& 5
.335 6
PIB336 9
;339 :
offer44 
.44 
CompanyInstance44 )
=44* +
null44, 0
;440 1
_context55 
.55 
OfferByCompany55 +
.55+ ,
Add55, /
(55/ 0
offer550 5
)555 6
;556 7
_context66 
.66 
SaveChanges66 (
(66( )
)66) *
;66* +
}77 
transaction99 
.99 
Commit99 "
(99" #
)99# $
;99$ %
return:: 
true:: 
;:: 
};; 
catch<< 
(<< 
	Exception<< 
)<< 
{== 
transaction>> 
.>> 
Rollback>> $
(>>$ %
)>>% &
;>>& '
throw?? 
;?? 
}@@ 
}AA 	
}BB 
}CC ÉQ
SD:\FON\master\Aplikacija\honey-beer-server\Repositories\OfferByCompanyRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class $
OfferByCompanyRepository )
{		 
private

 
readonly

 
	DBContext

 "
_context

# +
;

+ ,
public $
OfferByCompanyRepository '
(' (
	DBContext( 1
context2 9
)9 :
=>; =
_context> F
=G H
contextI P
;P Q
public 
IEnumerable 
< 
OfferByCompany )
>) *!
GetAllOffersByCompany+ @
(@ A
)A B
{ 	
return 
from 
obc 
in 
_context '
.' (
OfferByCompany( 6
join 
offer 
in  
_context! )
.) *
Offer* /
on 
new 
{ 
obc  
.  !
	ProductId! *
,* +
obc, /
./ 0
OfferId0 7
}8 9
equals: @
newA D
{E F
offerG L
.L M
	ProductIdM V
,V W
offerX ]
.] ^
OfferId^ e
}f g
join 
product 
in  "
_context# +
.+ ,
Product, 3
on4 6
offer7 <
.< =
	ProductId= F
equalsG M
productN U
.U V
	ProductIdV _
select 
new 
OfferByCompany ,
(, -
)- .
{ 
PIB 
= 
obc  
.  !
PIB! $
,$ %
	ProductId  
=! "
obc# &
.& '
	ProductId' 0
,0 1
OfferId 
=  
obc! $
.$ %
OfferId% ,
,, -
CompanyInstance &
=' (
null) -
,- .
OfferInstance $
=% &
new' *
Offer+ 0
(0 1
)1 2
{ 
	ProductId $
=% &
offer' ,
., -
	ProductId- 6
,6 7
OfferId "
=# $
offer% *
.* +
OfferId+ 2
,2 3
Amount !
=" #
offer$ )
.) *
Amount* 0
,0 1
	BeginDate $
=% &
offer' ,
., -
	BeginDate- 6
,6 7
EndDate   "
=  # $
offer  % *
.  * +
EndDate  + 2
,  2 3
ProductInstance!! *
=!!+ ,
new!!- 0
Product!!1 8
(!!8 9
)!!9 :
{"" 
	ProductId## (
=##) *
product##+ 2
.##2 3
	ProductId##3 <
,##< =
Name$$ #
=$$$ %
product$$& -
.$$- .
Name$$. 2
,$$2 3
Description%% *
=%%+ ,
product%%- 4
.%%4 5
Description%%5 @
}&& 
}'' 
}(( 
;(( 
})) 	
public** 
bool** 
SaveOfferByCompany** &
(**& '
OfferByCompany**' 5
offerByCompany**6 D
)**D E
{++ 	
if,, 
(,, 
offerByCompany,, 
.,, 
OfferInstance,, ,
==,,- /
null,,0 4
||,,5 7
!,,8 9
offerByCompany,,9 G
.,,G H
OfferInstance,,H U
.,,U V
IsOfferValid,,V b
(,,b c
),,c d
),,d e
return-- 
false-- 
;-- !
IDbContextTransaction// !
transaction//" -
=//. /
_context//0 8
.//8 9
Database//9 A
.//A B
BeginTransaction//B R
(//R S
)//S T
;//T U
try00 
{11 
_context22 
.22 
Offer22 
.22 
Add22 "
(22" #
offerByCompany22# 1
.221 2
OfferInstance222 ?
)22? @
;22@ A
_context33 
.33 
SaveChanges33 $
(33$ %
)33% &
;33& '
offerByCompany44 
.44 
OfferId44 &
=44' (
offerByCompany44) 7
.447 8
OfferInstance448 E
.44E F
OfferId44F M
;44M N
offerByCompany55 
.55 
OfferInstance55 ,
=55- .
null55/ 3
;553 4
_context66 
.66 
OfferByCompany66 '
.66' (
Add66( +
(66+ ,
offerByCompany66, :
)66: ;
;66; <
_context77 
.77 
SaveChanges77 $
(77$ %
)77% &
;77& '
transaction88 
.88 
Commit88 "
(88" #
)88# $
;88$ %
return99 
true99 
;99 
}:: 
catch;; 
(;; 
	Exception;; 
);; 
{<< 
transaction== 
.== 
Rollback== $
(==$ %
)==% &
;==& '
throw>> 
;>> 
}?? 
}@@ 	
publicBB 
boolBB  
UpdateOfferByCompanyBB (
(BB( )
OfferByCompanyBB) 7
offerByCompanyBB8 F
)BBF G
{CC 	
ifDD 
(DD 
offerByCompanyDD 
.DD 
OfferInstanceDD ,
==DD, .
nullDD/ 3
||DD4 6
!DD7 8
offerByCompanyDD8 F
.DDF G
OfferInstanceDDG T
.DDT U
IsOfferValidDDU a
(DDa b
)DDb c
)DDc d
returnEE 
falseEE 
;EE 
ifGG 
(GG 
offerByCompanyGG 
.GG 
OfferInstanceGG ,
.GG, -
ProductInstanceGG- <
!=GG= ?
nullGG@ D
)GGD E
offerByCompanyHH 
.HH 
OfferInstanceHH ,
.HH, -
ProductInstanceHH- <
=HH= >
nullHH? C
;HHC D!
IDbContextTransactionJJ !
transactionJJ" -
=JJ. /
_contextJJ0 8
.JJ8 9
DatabaseJJ9 A
.JJA B
BeginTransactionJJB R
(JJR S
)JJS T
;JJT U
tryKK 
{LL 
_contextMM 
.MM 
OfferMM 
.MM 
UpdateMM %
(MM% &
offerByCompanyMM& 4
.MM4 5
OfferInstanceMM5 B
)MMB C
;MMC D
_contextNN 
.NN 
SaveChangesNN $
(NN$ %
)NN% &
;NN& '
transactionOO 
.OO 
CommitOO "
(OO" #
)OO# $
;OO$ %
returnPP 
truePP 
;PP 
}QQ 
catchRR 
(RR 
	ExceptionRR 
)RR 
{SS 
transactionTT 
.TT 
RollbackTT $
(TT$ %
)TT% &
;TT& '
throwUU 
;UU 
}VV 
}WW 	
publicYY 
OfferByCompanyYY 
LoadOfferByCompanyYY 0
(YY1 2
longYY2 6
idYY7 9
)YY9 :
{ZZ 	
return[[ 
([[ 
from[[ 
offerByCompany[[ '
in[[( *
_context[[+ 3
.[[3 4
OfferByCompany[[4 B
join\\ 
offer\\ 
in\\ !
_context\\" *
.\\* +
Offer\\+ 0
on]] 
new]] 
{]] 
offerByCompany]] +
.]]+ ,
OfferId]], 3
,]]3 4
offerByCompany]]5 C
.]]C D
	ProductId]]D M
}]]N O
equals]]P V
new]]W Z
{]][ \
offer]]] b
.]]b c
OfferId]]c j
,]]j k
offer]]l q
.]]q r
	ProductId]]r {
}]]| }
join^^ 
product^^  
in^^! #
_context^^$ ,
.^^, -
Product^^- 4
on^^5 7
offer^^8 =
.^^= >
	ProductId^^> G
equals^^H N
product^^O V
.^^V W
	ProductId^^W `
where__ 
offerByCompany__ (
.__( )
OfferId__) 0
==__1 3
id__4 6
select`` 
new`` 
OfferByCompany`` -
(``- .
)``. /
{aa 
PIBbb 
=bb 
offerByCompanybb ,
.bb, -
PIBbb- 0
,bb0 1
	ProductIdcc !
=cc" #
offerByCompanycc$ 2
.cc2 3
	ProductIdcc3 <
,cc< =
OfferIddd 
=dd  !
offerByCompanydd" 0
.dd0 1
OfferIddd1 8
,dd8 9
OfferInstanceee %
=ee& '
newee( +
Offeree, 1
(ee1 2
)ee2 3
{ff 
OfferIdgg #
=gg$ %
offerByCompanygg& 4
.gg4 5
OfferIdgg5 <
,gg< =
	ProductIdhh %
=hh& '
producthh( /
.hh/ 0
	ProductIdhh0 9
,hh9 :
Amountii "
=ii# $
offerii% *
.ii* +
Amountii+ 1
,ii1 2
	BeginDatejj %
=jj& '
offerjj( -
.jj- .
	BeginDatejj. 7
,jj7 8
EndDatekk #
=kk$ %
offerkk& +
.kk+ ,
EndDatekk, 3
,kk3 4
ProductInstancell +
=ll, -
newll. 1
Productll2 9
(ll9 :
)ll: ;
{mm 
	ProductIdnn  )
=nn* +
productnn, 3
.nn3 4
	ProductIdnn4 =
,nn= >
Nameoo  $
=oo% &
productoo' .
.oo. /
Nameoo/ 3
,oo3 4
Descriptionpp  +
=pp, -
productpp. 5
.pp5 6
Descriptionpp6 A
,ppA B
}qq 
}rr 
}ss 
)ss 
.ss 
Firstss 
(ss 
)ss 
;ss 
}tt 	
}uu 
}vv é
LD:\FON\master\Aplikacija\honey-beer-server\Repositories\MeetingRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class 
MeetingRepository "
{ 
private		 
readonly		 
	DBContext		 "
_context		# +
;		+ ,
public 
MeetingRepository  
(  !
	DBContext! *
context+ 2
)2 3
=>4 6
_context7 ?
=@ A
contextB I
;I J
public 
bool 
UpdateMeeting !
(! "
Meeting" )
meeting* 1
)1 2
{ 	!
IDbContextTransaction !
transaction" -
=. /
_context0 8
.8 9
Database9 A
.A B
BeginTransactionB R
(R S
)S T
;T U
try 
{ 
meeting 
. 
CompanyInstance '
=( )
null* .
;. /
_context 
. 
Update 
(  
meeting  '
)' (
;( )
_context 
. 
SaveChanges $
($ %
)% &
;& '
transaction 
. 
Commit "
(" #
)# $
;$ %
return 
true 
; 
} 
catch 
( 
	Exception 
) 
{ 
transaction 
. 
Rollback $
($ %
)% &
;& '
throw 
; 
} 
} 	
public 
IEnumerable 
< 
Meeting "
>" #$
LoadAllAvailableMeetings$ <
(< =
)= >
{   	
return!! 
from!! 
meeting!! 
in!!  "
_context!!# +
.!!+ ,
Meeting!!, 3
join"" 
	companyDB"" !
in## 
_context## 
.## 
Company## &
on##' )
meeting##* 1
.##1 2
PIB##2 5
equals##6 <
	companyDB##= F
.##F G
PIB##G J
from$$ 
c$$ 
in$$ 
_context$$ %
.$$% &
Company$$& -
.$$- .
DefaultIfEmpty$$. <
($$< =
)$$= >
where%% 
c%% 
==%% 
null%% "
&&%%# %
DateTime%%& .
.%%. /
Compare%%/ 6
(%%6 7
DateTime%%7 ?
.%%? @
Now%%@ C
.%%C D
AddDays%%D K
(%%K L
$num%%L M
)%%M N
,%%N O
meeting%%P W
.%%W X
	StartTime%%X a
)%%a b
<=%%c e
$num%%f g
select&& 
new&& 
Meeting&& %
(&&% &
)&&& '
{'' 
	MeetingId((  
=((! "
meeting((# *
.((* +
	MeetingId((+ 4
,((4 5
	StartTime))  
=))! "
meeting))# *
.))* +
	StartTime))+ 4
,))4 5
EndTime** 
=**  
meeting**! (
.**( )
EndTime**) 0
,**0 1
Subject++ 
=++  
meeting++! (
.++( )
Subject++) 0
,++0 1
Location,, 
=,,  !
meeting,," )
.,,) *
Location,,* 2
,,,2 3
CompanyInstance-- &
=--' (
c--) *
}.. 
;.. 
}// 	
}11 
}22 ‰
MD:\FON\master\Aplikacija\honey-beer-server\Repositories\LocationRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class 
LocationRepository #
{ 
private 
readonly 
	DBContext "
_context# +
;+ ,
public

 
LocationRepository

 !
(

! "
	DBContext

" +
context

, 3
)

3 4
=>

5 7
_context

8 @
=

A B
context

C J
;

J K
public 
IEnumerable 
< 
Location #
># $
LoadAllLocations% 5
(5 6
)6 7
=>8 :
_context; C
.C D
LocationD L
;L M
} 
} §C
ID:\FON\master\Aplikacija\honey-beer-server\Repositories\FormRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class 
FormRepository 
{ 
private		 
readonly		 
	DBContext		 "
_context		# +
;		+ ,
public 
FormRepository 
( 
	DBContext '
context( /
)/ 0
=>1 3
_context4 <
== >
context? F
;F G
public 
bool 

Createform 
( 
Event $
	eventForm% .
). /
{ 	!
IDbContextTransaction !
transaction" -
=. /
_context0 8
.8 9
Database9 A
.A B
BeginTransactionB R
(R S
)S T
;T U
try 
{ 
Form 
form 
= 
new 
(  !
)! "
;" #
_context 
. 
Form 
. 
Add !
(! "
form" &
)& '
;' (
	eventForm 
. 
EventTypeInstance +
=, -
null. 2
;2 3
List 
< 
Question 
> 
? 
	questions  )
=* +
	eventForm, 5
.5 6
	Questions6 ?
;? @
	eventForm 
. 
	Questions #
=$ %
null& *
;* +
_context 
. 
Event 
. 
Add "
(" #
	eventForm# ,
), -
;- .
_context 
. 
SaveChanges $
($ %
)% &
;& '
	questions 
? 
. 
ForEach "
(" #
question# +
=>, .
{ 
QuestionType  
questionType! -
=. /
question0 8
.8 9 
QuestionTypeInstance9 M
;M N
question 
.  
QuestionTypeInstance 1
=2 3
null4 8
;8 9
question 
. 
EventId $
=% &
	eventForm' 0
.0 1
EventId1 8
;8 9
_context 
. 
Question %
.% &
Add& )
() *
question* 2
)2 3
;3 4
_context 
. 
SaveChanges (
(( )
)) *
;* +
question   
.   
Answers   $
.  $ %
ForEach  % ,
(  , -
answer  - 3
=>  4 6
{!! 
answer"" 
."" 
EventId"" &
=""' (
	eventForm"") 2
.""2 3
EventId""3 :
;"": ;
answer## 
.## 

QuestionId## )
=##* +
question##, 4
.##4 5

QuestionId##5 ?
;##? @
_context$$  
.$$  !
Answer$$! '
.$$' (
Add$$( +
($$+ ,
answer$$, 2
)$$2 3
;$$3 4
_context%%  
.%%  !
SaveChanges%%! ,
(%%, -
)%%- .
;%%. /
CustomerAnswer&& &
ca&&' )
=&&* +
new&&, /
CustomerAnswer&&0 >
(&&> ?
)&&? @
;&&@ A
ca'' 
.'' 
AnswerId'' #
=''$ %
answer''& ,
.'', -
AnswerId''- 5
;''5 6
ca(( 
.(( 

QuestionId(( %
=((& '
question((( 0
.((0 1

QuestionId((1 ;
;((; <
ca)) 
.)) 
EventId)) "
=))# $
	eventForm))% .
.)). /
EventId))/ 6
;))6 7
ca** 
.** 
FormId** !
=**" #
form**$ (
.**( )
FormId**) /
;**/ 0
ca++ 
.++ 
Form++ 
=++  !
form++" &
;++& '
ca,, 
.,, 
Date,, 
=,,  !
DateTime,," *
.,,* +
Now,,+ .
;,,. /
_context--  
.--  !
CustomerAnswer--! /
.--/ 0
Add--0 3
(--3 4
ca--4 6
)--6 7
;--7 8
_context..  
...  !
SaveChanges..! ,
(.., -
)..- .
;... /
if// 
(// 
questionType// (
.//( )
Name//) -
.//- .
Equals//. 4
(//4 5
$str//5 ;
)//; <
)//< =
{00 
ca11 
.11 
TextCustomerAnswer11 1
=112 3
new114 7
TextCustomerAnswer118 J
(11J K
)11K L
;11L M
ca22 
.22 
TextCustomerAnswer22 1
.221 2
Text222 6
=227 8
answer229 ?
.22? @
Value22@ E
;22E F
ca33 
.33 
TextCustomerAnswer33 1
.331 2
EventId332 9
=33: ;
	eventForm33< E
.33E F
EventId33F M
;33M N
ca44 
.44 
TextCustomerAnswer44 1
.441 2
AnswerId442 :
=44; <
answer44= C
.44C D
AnswerId44D L
;44L M
ca55 
.55 
TextCustomerAnswer55 1
.551 2

QuestionId552 <
=55= >
question55? G
.55G H

QuestionId55H R
;55R S
ca66 
.66 
TextCustomerAnswer66 1
.661 2
FormId662 8
=669 :
form66; ?
.66? @
FormId66@ F
;66F G
ca77 
.77 
Form77 #
=77$ %
form77& *
;77* +
ca88 
.88 
Answer88 %
=88& '
answer88( .
;88. /
ca99 
.99 

CustomerId99 )
=99* +
answer99, 2
.992 3
CustomerAnswers993 B
?99B C
[99C D
$num99D E
]99E F
.99F G

CustomerId99G Q
;99Q R
ca:: 
.:: 
Customer:: '
=::( )
answer::* 0
.::0 1
CustomerAnswers::1 @
?::@ A
[::A B
$num::B C
]::C D
.::D E
Customer::E M
;::M N
if;; 
(;;  
answer;;  &
.;;& '
CustomerAnswers;;' 6
!=;;7 9
null;;: >
);;> ?
{;;@ A
answer<<  &
.<<& '
CustomerAnswers<<' 6
[<<6 7
$num<<7 8
]<<8 9
.<<9 :
EventId<<: A
=<<B C
	eventForm<<D M
.<<M N
EventId<<N U
;<<U V
ca==  "
.==" #
EventId==# *
===+ ,
answer==- 3
.==3 4
CustomerAnswers==4 C
[==C D
$num==D E
]==E F
.==F G
EventId==G N
;==N O
}>> 
_context?? $
.??$ %
TextCustomerAnswer??% 7
.??7 8
Add??8 ;
(??; <
ca??< >
.??> ?
TextCustomerAnswer??? Q
)??Q R
;??R S
_context@@ $
.@@$ %
SaveChanges@@% 0
(@@0 1
)@@1 2
;@@2 3
}AA 
}CC 
)CC 
;CC 
}DD 
)DD 
;DD 
	eventFormEE 
?EE 
.EE 
	QuestionsEE $
?EE$ %
.EE% &
ForEachEE& -
(EE- .
qEE. /
=>EE0 2
qEE3 4
.EE4 5 
QuestionTypeInstanceEE5 I
=EEJ K
nullEEL P
)EEP Q
;EEQ R
_contextFF 
.FF 
SaveChangesFF $
(FF$ %
)FF% &
;FF& '
transactionGG 
.GG 
CommitGG "
(GG" #
)GG# $
;GG$ %
returnHH 
trueHH 
;HH 
}II 
catchJJ 
(JJ 
	ExceptionJJ 
)JJ 
{KK 
transactionLL 
.LL 
RollbackLL $
(LL$ %
)LL% &
;LL& '
throwMM 
;MM 
}NN 
}OO 	
}PP 
}QQ Ç'
JD:\FON\master\Aplikacija\honey-beer-server\Repositories\EventRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class 
EventRepository  
{ 
private 
readonly 
	DBContext "
_context# +
;+ ,
public

 
EventRepository

 
(

 
	DBContext

 (
context

) 0
)

0 1
=>

2 4
_context

5 =
=

> ?
context

@ G
;

G H
public 
IEnumerable 
< 
Event  
>  !
LoadAllEvents" /
(/ 0
)0 1
{ 	
return 
from 
e 
in 
_context %
.% &
Event& +
join 
	eventType !
in" $
_context% -
.- .
	EventType. 7
on 
e 
. 
EventTypeId #
equals$ *
	eventType+ 4
.4 5
EventTypeId5 @
where 
	eventType "
." #
Name# '
.' (
Equals( .
(. /
$str/ 7
)7 8
&&9 ;
DateTime< D
.D E
CompareE L
(L M
eM N
.N O
	BeginDateO X
,X Y
DateTimeZ b
.b c
Nowc f
)f g
<=h j
$numk l
&&m o
DateTimep x
.x y
Compare	y Ä
(
Ä Å
e
Å Ç
.
Ç É
EndDate
É ä
,
ä ã
DateTime
å î
.
î ï
Now
ï ò
)
ò ô
>=
ö ú
$num
ù û
select 
new 
Event #
(# $
)$ %
{ 
CreationDate #
=$ %
e& '
.' (
CreationDate( 4
,4 5
Description "
=# $
e% &
.& '
Description' 2
,2 3
EventId 
=  
e! "
." #
EventId# *
,* +
EventTypeId "
=# $
e% &
.& '
EventTypeId' 2
,2 3
Title 
= 
e  
.  !
Title! &
,& '
	Questions  
=! "
(# $
from$ (
question) 1
in2 4
_context5 =
.= >
Question> F
join$ (
questionType) 5
in6 8
_context9 A
.A B
QuestionTypeB N
onO Q
questionR Z
.Z [
QuestionTypeId[ i
equalsj p
questionTypeq }
.} ~
QuestionTypeId	~ å
select$ *
new+ .
Question/ 7
(7 8
)8 9
{$ %

QuestionId( 2
=3 4
question5 =
.= >

QuestionId> H
,H I
EventId( /
=0 1
question2 :
.: ;
EventId; B
,B C
QuestionTypeId( 6
=7 8
question9 A
.A B
QuestionTypeIdB P
,P Q 
QuestionTypeInstance  ( <
=  = >
new  ? B
QuestionType  C O
(  O P
)  P Q
{!!( )
QuestionTypeId"", :
=""; <
questionType""= I
.""I J
QuestionTypeId""J X
,""X Y
Name##, 0
=##1 2
questionType##3 ?
.##? @
Name##@ D
}$$( )
,$$) *
Text%%( ,
=%%- .
question%%/ 7
.%%7 8
Text%%8 <
,%%< =
Answers&&( /
=&&0 1
_context&&2 :
.&&: ;
Answer&&; A
.&&A B
Where&&B G
(&&G H
answer&&H N
=>&&O Q
answer&&R X
.&&X Y

QuestionId&&Y c
==&&d f
question&&g o
.&&o p

QuestionId&&p z
&&&&{ }
answer	&&~ Ñ
.
&&Ñ Ö
EventId
&&Ö å
==
&&ç è
question
&&ê ò
.
&&ò ô
EventId
&&ô †
)
&&† °
.
&&° ¢
ToList
&&¢ ®
(
&&® ©
)
&&© ™
}''$ %
)''% &
.''& '
ToList''' -
(''- .
)''. /
,''/ 0
EventTypeInstance(( (
=(() *
new((+ .
	EventType((/ 8
(((8 9
)((9 :
{)) 
EventTypeId** &
=**' (
	eventType**) 2
.**2 3
EventTypeId**3 >
,**> ?
Name++ 
=++  !
	eventType++" +
.+++ ,
Name++, 0
},, 
,,, 
}-- 
;-- 
}.. 	
}// 
}00 ÷
MD:\FON\master\Aplikacija\honey-beer-server\Repositories\DiscountRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class 
DiscountRepository #
{ 
private		 
readonly		 
	DBContext		 "
_context		# +
;		+ ,
public 
DiscountRepository !
(! "
	DBContext" +
	dbContext, 5
)5 6
{ 	
_context 
= 
	dbContext  
;  !
} 	
public 
IEnumerable 
< 
Discount #
># $
LoadAllDiscounts% 5
(5 6
)6 7
{ 	
return 
from 
discount  
in! #
_context$ ,
., -
Discount- 5
join 
shoppingLocation (
in) +
_context, 4
.4 5
ShoppingLocation5 E
on 
discount 
. 
ShoppingLocationId 1
equals2 8
shoppingLocation9 I
.I J
ShoppingLocationIdJ \
join 
product 
in  "
_context# +
.+ ,
Product, 3
on4 6
discount7 ?
.? @
	ProductId@ I
equalsJ P
productQ X
.X Y
	ProductIdY b
join 
company 
in  "
_context# +
.+ ,
Company, 3
on4 6
shoppingLocation7 G
.G H
PIBH K
equalsL R
companyS Z
.Z [
PIB[ ^
select 
new 
Discount &
(& '
)' (
{ 
PIB 
= 
discount %
.% &
PIB& )
,) *
	ProductId  
=! "
discount# +
.+ ,
	ProductId, 5
,5 6
	BeginDate  
=! "
discount# +
.+ ,
	BeginDate, 5
,5 6
EndDate 
=  
discount! )
.) *
EndDate* 1
,1 2

Percentage !
=" #
discount$ ,
., -

Percentage- 7
,7 8
ProductInstance &
=' (
new) ,
Product- 4
(4 5
)5 6
{ 
	ProductId   $
=  % &
product  ' .
.  . /
	ProductId  / 8
,  8 9
Description!! &
=!!' (
product!!) 0
.!!0 1
Description!!1 <
,!!< =
Name"" 
=""  !
product""" )
."") *
Name""* .
}## 
,## 
ShoppingLocationId$$ )
=$$* +
discount$$, 4
.$$4 5
ShoppingLocationId$$5 G
,$$G H$
ShoppingLocationInstance%% /
=%%0 1
new%%2 5
ShoppingLocation%%6 F
(%%F G
)%%G H
{&& 
ShoppingLocationId'' -
=''. /
shoppingLocation''0 @
.''@ A
ShoppingLocationId''A S
,''S T
Location(( #
=(($ %
shoppingLocation((& 6
.((6 7
Location((7 ?
,((? @
PIB)) 
=))  
shoppingLocation))! 1
.))1 2
PIB))2 5
,))5 6
CompanyInstance** *
=**+ ,
new**- 0
Company**1 8
(**8 9
)**9 :
{++ 
Email,, $
=,,% &
company,,' .
.,,. /
Email,,/ 4
,,,4 5
Name-- #
=--$ %
company--& -
.--- .
Name--. 2
,--2 3
PIB.. "
=..# $
company..% ,
..., -
PIB..- 0
}// 
}00 
}11 
;11 
}22 	
}33 
}44 Â:
ND:\FON\master\Aplikacija\honey-beer-server\Repositories\DBContext\DBContext.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
., -
DBContextNamespace- ?
{ 
public 

class 
	DBContext 
: 
	DbContext &
{ 
public		 
	DBContext		 
(		 
DbContextOptions		 )
<		) *
	DBContext		* 3
>		3 4
options		5 <
)		< =
:		> ?
base		@ D
(		D E
options		E L
)		L M
{

 	
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder 
. 
Entity 
<  
QRCode  &
>& '
(' (
)( )
. 
HasIndex 
( 
x 
=> 
x  
.  !
Code! %
)% &
. 
IsUnique 
( 
) 
; 
modelBuilder 
. 
Entity 
<  

QRCodeType  *
>* +
(+ ,
), -
. 
HasIndex 
( 
x 
=> 
x  
.  !
QRCodeTypeName! /
)/ 0
. 
IsUnique 
( 
) 
; 
modelBuilder 
. 
Entity 
<  
Company  '
>' (
(( )
)) *
.* +
Property+ 3
(3 4
x4 5
=>6 8
x9 :
.: ;
PIB; >
)> ?
. 
ValueGeneratedNever #
(# $
)$ %
;% &
} 	
public 
DbSet 
< 
Event 
> 
Event !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DbSet 
< 
Answer 
> 
Answer #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DbSet 
< 
Company 
> 
Company %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DbSet 
< 
CustomerAnswer #
># $
CustomerAnswer% 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
DbSet 
< 
Customer 
> 
Customer '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DbSet 
< 
Discount 
> 
Discount '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DbSet 
< 
	EventType 
> 
	EventType  )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DbSet 
< 
Form 
> 
Form 
{  !
get" %
;% &
set' *
;* +
}, -
public   
DbSet   
<   
Location   
>   
Location   '
{  ( )
get  * -
;  - .
set  / 2
;  2 3
}  4 5
public!! 
DbSet!! 
<!! 
OfferByCompany!! #
>!!# $
OfferByCompany!!% 3
{!!4 5
get!!6 9
;!!9 :
set!!; >
;!!> ?
}!!@ A
public"" 
DbSet"" 
<"" 
Offer"" 
>"" 
Offer"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
public## 
DbSet## 
<## 
Product## 
>## 
Product## %
{##& '
get##( +
;##+ ,
set##- 0
;##0 1
}##2 3
public$$ 
DbSet$$ 
<$$ 
QRCode$$ 
>$$ 
QRCode$$ #
{$$$ %
get$$& )
;$$) *
set$$+ .
;$$. /
}$$0 1
public%% 
DbSet%% 
<%% 
Question%% 
>%% 
Question%% '
{%%( )
get%%* -
;%%- .
set%%/ 2
;%%2 3
}%%4 5
public&& 
DbSet&& 
<&& 
QuestionType&& !
>&&! "
QuestionType&&# /
{&&0 1
get&&2 5
;&&5 6
set&&7 :
;&&: ;
}&&< =
public'' 
DbSet'' 
<'' 
Reservation''  
>''  !
Reservation''" -
{''. /
get''0 3
;''3 4
set''5 8
;''8 9
}'': ;
public(( 
DbSet(( 
<(( 
ShoppingLocation(( %
>((% &
ShoppingLocation((' 7
{((8 9
get((: =
;((= >
set((? B
;((B C
}((D E
public)) 
DbSet)) 
<)) 
TextCustomerAnswer)) '
>))' (
TextCustomerAnswer))) ;
{))< =
get))> A
;))A B
set))C F
;))F G
}))H I
public** 
DbSet** 
<** 
Meeting** 
>** 
Meeting** %
{**& '
get**( +
;**+ ,
set**- 0
;**0 1
}**2 3
public++ 
DbSet++ 
<++ 
SentCompanyEmail++ %
>++% &
SentCompanyEmail++' 7
{++8 9
get++: =
;++= >
set++? B
;++B C
}++D E
public,, 
DbSet,, 
<,, 
EventLocation,, "
>,," #
EventLocation,,$ 1
{,,2 3
get,,4 7
;,,7 8
set,,9 <
;,,< =
},,> ?
public-- 
DbSet-- 
<-- 
PersonalEmail-- "
>--" #
PersonalEmail--$ 1
{--2 3
get--4 7
;--7 8
set--9 <
;--< =
}--> ?
public.. 
DbSet.. 
<.. 
SentPersonalEmail.. &
>..& '
SentPersonalEmail..( 9
{..: ;
get..< ?
;..? @
set..A D
;..D E
}..F G
public// 
DbSet// 
<// 
ProductInLocation// &
>//& '
ProductInLocation//( 9
{//: ;
get//< ?
;//? @
set//A D
;//D E
}//F G
public00 
DbSet00 
<00 
ScannedByCustomer00 &
>00& '
ScannedByCustomer00( 9
{00: ;
get00< ?
;00? @
set00A D
;00D E
}00F G
public11 
DbSet11 
<11 

QRCodeType11 
>11  

QRCodeType11! +
{11, -
get11. 1
;111 2
set113 6
;116 7
}118 9
}22 
}33 Î(
MD:\FON\master\Aplikacija\honey-beer-server\Repositories\CustomerRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public 

class 
CustomerRepository #
{		 
private

 
readonly

 
	DBContext

 "
_context

# +
;

+ ,
public 
CustomerRepository !
(! "
	DBContext" +
context, 3
)3 4
{ 	
_context 
= 
context 
; 
} 	
public 
IEnumerable 
< 
Customer #
># $
GetAllCustomers% 4
(4 5
)5 6
{ 	
return 
_context 
. 
Customer $
.$ %
Include% ,
(, -
customer- 5
=>6 8
customer9 A
.A B!
PersonalEmailInstanceB W
)W X
.X Y
ToArrayY `
(` a
)a b
;b c
} 	
public 
Customer 
CreateCustomer &
(& '
Customer' /
customer0 8
)8 9
{ 	
using !
IDbContextTransaction '
transaction( 3
=4 5
_context6 >
.> ?
Database? G
.G H
BeginTransactionH X
(X Y
)Y Z
;Z [
try 
{ 
_context 
. 
Customer !
.! "
Add" %
(% &
customer& .
). /
;/ 0
_context 
. 
SaveChanges $
($ %
)% &
;& '
transaction 
. 
Commit "
(" #
)# $
;$ %
return 
customer 
;  
} 
catch   
(   
	Exception   
)   
{!! 
transaction"" 
."" 
Rollback"" $
(""$ %
)""% &
;""& '
throw## 
;## 
}$$ 
}%% 	
public'' 
bool'' 
DeleteCustomer'' "
(''" #
Customer''# +
customer'', 4
)''4 5
{(( 	
using)) !
IDbContextTransaction)) '
transaction))( 3
=))4 5
_context))6 >
.))> ?
Database))? G
.))G H
BeginTransaction))H X
())X Y
)))Y Z
;))Z [
bool** 
deleted** 
=** 
false**  
;**  !
try++ 
{,, 
_context-- 
.-- 
Customer-- !
.--! "
Remove--" (
(--( )
customer--) 1
)--1 2
;--2 3
_context.. 
... 
PersonalEmail.. &
...& '
Remove..' -
(..- .
customer... 6
...6 7!
PersonalEmailInstance..7 L
)..L M
;..M N
transaction// 
.// 
Commit// "
(//" #
)//# $
;//$ %
deleted00 
=00 
true00 
;00 
}11 
catch22 
(22 
	Exception22 
)22 
{33 
transaction44 
.44 
Rollback44 $
(44$ %
)44% &
;44& '
throw55 
;55 
}66 
_context77 
.77 
SaveChanges77  
(77  !
)77! "
;77" #
return88 
deleted88 
;88 
}99 	
public;; 
bool;; 
SaveAllVotes;;  
(;;  !
List;;! %
<;;% &
CustomerAnswer;;& 4
>;;4 5
votes;;6 ;
);;; <
{<< 	!
IDbContextTransaction== !
transaction==" -
===. /
_context==0 8
.==8 9
Database==9 A
.==A B
BeginTransaction==B R
(==R S
)==S T
;==T U
bool?? 
saved?? 
=?? 
false?? 
;?? 
try@@ 
{AA 
votesBB 
.BB 
ForEachBB 
(BB 
voteBB "
=>BB# %
_contextBB& .
.BB. /
CustomerAnswerBB/ =
.BB= >
AddBB> A
(BBA B
voteBBB F
)BBF G
)BBH I
;BBI J
_contextCC 
.CC 
SaveChangesCC $
(CC$ %
)CC% &
;CC& '
transactionDD 
.DD 
CommitDD "
(DD" #
)DD# $
;DD$ %
savedEE 
=EE 
trueEE 
;EE 
}FF 
catchGG 
(GG 
	ExceptionGG 
)GG 
{HH 
transactionII 
.II 
RollbackII $
(II$ %
)II% &
;II& '
throwJJ 
;JJ 
}KK 
returnLL 
savedLL 
;LL 
}MM 	
}NN 
}OO π
LD:\FON\master\Aplikacija\honey-beer-server\Repositories\CompanyRepository.cs
	namespace 	!
honey_beer_server_app
 
.  
Repositories  ,
{ 
public		 

class		 
CompanyRepository		 "
{

 
private 
readonly 
	DBContext "
_context# +
;+ ,
public 
CompanyRepository  
(  !
	DBContext! *
context+ 2
)2 3
{ 	
_context 
= 
context 
; 
} 	
public 
bool 
CreateCompany !
(! "
Company" )
company* 1
)1 2
{ 	
if 
( 
! 
_context 
. 
Company !
.! "
Where" '
(' (
c( )
=>* ,
c- .
.. /
PIB/ 2
==3 5
company6 =
.= >
PIB> A
)A B
.B C
IsNullOrEmptyC P
(P Q
)Q R
)R S
throw 
new 
	Exception #
(# $
$str$ H
)H I
;I J
bool 
created 
= 
false  
;  !!
IDbContextTransaction !
transaction" -
=. /
_context0 8
.8 9
Database9 A
.A B
BeginTransactionB R
(R S
)S T
;T U
try 
{ 
_context 
. 
Company  
.  !
Add! $
($ %
company% ,
), -
;- .
_context 
. 
SaveChanges $
($ %
)% &
;& '
transaction 
. 
Commit "
(" #
)# $
;$ %
created 
= 
true 
; 
} 
catch 
( 
	Exception 
) 
{   
_context!! 
.!! 
SaveChanges!! $
(!!$ %
)!!% &
;!!& '
transaction"" 
."" 
Rollback"" $
(""$ %
)""% &
;""& '
throw## 
;## 
}$$ 
_context%% 
.%% 
SaveChanges%%  
(%%  !
)%%! "
;%%" #
return'' 
created'' 
;'' 
}(( 	
public)) 
bool)) 
DeleteCompany)) !
())! "
Company))" )
company))* 1
)))1 2
{** 	
bool++ 
deleted++ 
=++ 
false++  
;++  !!
IDbContextTransaction,, !
transaction,," -
=,,. /
_context,,0 8
.,,8 9
Database,,9 A
.,,A B
BeginTransaction,,B R
(,,R S
),,S T
;,,T U
try-- 
{.. 
_context// 
.// 
Company//  
.//  !
Remove//! '
(//' (
company//( /
)/// 0
;//0 1
_context00 
.00 
SaveChanges00 $
(00$ %
)00% &
;00& '
transaction11 
.11 
Commit11 "
(11" #
)11# $
;11$ %
deleted22 
=22 
true22 
;22 
}33 
catch44 
(44 
	Exception44 
)44 
{55 
transaction66 
.66 
Rollback66 $
(66$ %
)66% &
;66& '
throw77 
;77 
}88 
return99 
deleted99 
;99 
}:: 	
};; 
}<< »Q
5D:\FON\master\Aplikacija\honey-beer-server\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
string 
server 
= 
builder 
. 
Configuration %
[% &
$str& R
]R S
;S T
builder 
. 
Services 
. 
AddDbContext 
< 
	DBContext '
>' (
(( )
opt) ,
=>- /
opt0 3
.3 4
UseSqlServer4 @
(@ A
serverA G
)G H
)H I
;I J
builder 
. 
Services 
. 
	AddScoped 
< 
CompanyRepository ,
>, -
(- .
). /
;/ 0
builder 
. 
Services 
. 
	AddScoped 
< 
CustomerRepository -
>- .
(. /
)/ 0
;0 1
builder   
.   
Services   
.   
	AddScoped   
<   
DiscountRepository   -
>  - .
(  . /
)  / 0
;  0 1
builder!! 
.!! 
Services!! 
.!! 
	AddScoped!! 
<!! 
EventRepository!! *
>!!* +
(!!+ ,
)!!, -
;!!- .
builder"" 
."" 
Services"" 
."" 
	AddScoped"" 
<"" 
FormRepository"" )
>"") *
(""* +
)""+ ,
;"", -
builder## 
.## 
Services## 
.## 
	AddScoped## 
<## 
LocationRepository## -
>##- .
(##. /
)##/ 0
;##0 1
builder$$ 
.$$ 
Services$$ 
.$$ 
	AddScoped$$ 
<$$ 
MeetingRepository$$ ,
>$$, -
($$- .
)$$. /
;$$/ 0
builder%% 
.%% 
Services%% 
.%% 
	AddScoped%% 
<%% $
OfferByCompanyRepository%% 3
>%%3 4
(%%4 5
)%%5 6
;%%6 7
builder&& 
.&& 
Services&& 
.&& 
	AddScoped&& 
<&& 
OfferRepository&& *
>&&* +
(&&+ ,
)&&, -
;&&- .
builder'' 
.'' 
Services'' 
.'' 
	AddScoped'' 
<'' #
PersonalEmailRepository'' 2
>''2 3
(''3 4
)''4 5
;''5 6
builder(( 
.(( 
Services(( 
.(( 
	AddScoped(( 
<(( 
ProductRespository(( -
>((- .
(((. /
)((/ 0
;((0 1
builder)) 
.)) 
Services)) 
.)) 
	AddScoped)) 
<)) 
PromotionRepository)) .
>)). /
())/ 0
)))0 1
;))1 2
builder** 
.** 
Services** 
.** 
	AddScoped** 
<** 
QRCodeRepository** +
>**+ ,
(**, -
)**- .
;**. /
builder++ 
.++ 
Services++ 
.++ 
	AddScoped++ 
<++ !
ReservationRepository++ 0
>++0 1
(++1 2
)++2 3
;++3 4
builder,, 
.,, 
Services,, 
.,, 
	AddScoped,, 
<,, &
SentCompanyEmailRepository,, 5
>,,5 6
(,,6 7
),,7 8
;,,8 9
builder-- 
.-- 
Services-- 
.-- 
	AddScoped-- 
<-- &
ShoppingLocationRepository-- 5
>--5 6
(--6 7
)--7 8
;--8 9
builder.. 
... 
Services.. 
... 
	AddScoped.. 
<.. 
ICompanyService.. *
,..* +
CompanyService.., :
>..: ;
(..; <
)..< =
;..= >
builder// 
.// 
Services// 
.// 
	AddScoped// 
<// 
ICustomerService// +
,//+ ,
CustomerService//- <
>//< =
(//= >
)//> ?
;//? @
builder00 
.00 
Services00 
.00 
	AddScoped00 
<00 
IDiscountService00 +
,00+ ,
DiscountService00- <
>00< =
(00= >
)00> ?
;00? @
builder11 
.11 
Services11 
.11 
	AddScoped11 
<11 
IEventService11 (
,11( )
EventService11* 6
>116 7
(117 8
)118 9
;119 :
builder22 
.22 
Services22 
.22 
	AddScoped22 
<22 
IFormService22 '
,22' (
FormService22) 4
>224 5
(225 6
)226 7
;227 8
builder33 
.33 
Services33 
.33 
	AddScoped33 
<33 
ILocationService33 +
,33+ ,
LocationService33- <
>33< =
(33= >
)33> ?
;33? @
builder44 
.44 
Services44 
.44 
	AddScoped44 
<44 
IMeetingService44 *
,44* +
MeetingService44, :
>44: ;
(44; <
)44< =
;44= >
builder55 
.55 
Services55 
.55 
	AddScoped55 
<55 "
IOfferByCompanyService55 1
,551 2!
OfferByCompanyService553 H
>55H I
(55I J
)55J K
;55K L
builder66 
.66 
Services66 
.66 
	AddScoped66 
<66 
IOfferService66 (
,66( )
OfferService66* 6
>666 7
(667 8
)668 9
;669 :
builder77 
.77 
Services77 
.77 
	AddScoped77 
<77 !
IPersonalEmailService77 0
,770 1 
PersonalEmailService772 F
>77F G
(77G H
)77H I
;77I J
builder88 
.88 
Services88 
.88 
	AddScoped88 
<88 
IProductService88 *
,88* +
ProductService88, :
>88: ;
(88; <
)88< =
;88= >
builder99 
.99 
Services99 
.99 
	AddScoped99 
<99 
IPromotionService99 ,
,99, -
PromotionService99. >
>99> ?
(99? @
)99@ A
;99A B
builder:: 
.:: 
Services:: 
.:: 
	AddScoped:: 
<:: 
IQRCodeService:: )
,::) *
QRCodeService::+ 8
>::8 9
(::9 :
)::: ;
;::; <
builder;; 
.;; 
Services;; 
.;; 
	AddScoped;; 
<;; 
IReservationService;; .
,;;. /
ReservationService;;0 B
>;;B C
(;;C D
);;D E
;;;E F
builder<< 
.<< 
Services<< 
.<< 
	AddScoped<< 
<<< $
ISentCompanyEmailService<< 3
,<<3 4#
SentCompanyEmailService<<5 L
><<L M
(<<M N
)<<N O
;<<O P
builder== 
.== 
Services== 
.== 
	AddScoped== 
<== $
IShoppingLocationService== 3
,==3 4#
ShoppingLocationService==5 L
>==L M
(==M N
)==N O
;==O P
string>> 
myCors>> 
=>> 
$str>> #
;>># $
builder?? 
.?? 
Services?? 
.?? 
AddCors?? 
(?? 
options??  
=>??  "
options??" )
.??) *
	AddPolicy??* 3
(??3 4
name??4 8
:??8 9
myCors??: @
,??@ A
policy??B H
=>??I K
{??L M
policy@@ 

.@@
 
WithOrigins@@ 
(@@ 
$str@@ .
)@@. /
.@@/ 0
AllowAnyMethod@@0 >
(@@> ?
)@@? @
.@@@ A
AllowAnyHeader@@A O
(@@O P
)@@P Q
;@@Q R
policyAA 

.AA
 
WithOriginsAA 
(AA 
$strAA A
)AAA B
.AAB C
AllowAnyMethodAAC Q
(AAQ R
)AAR S
.AAS T
AllowAnyHeaderAAT b
(AAb c
)AAc d
;AAd e
}BB 
)BB 
)BB 
;BB 
varDD 
appDD 
=DD 	
builderDD
 
.DD 
BuildDD 
(DD 
)DD 
;DD 
ifGG 
(GG 
appGG 
.GG 
EnvironmentGG 
.GG 
IsDevelopmentGG !
(GG! "
)GG" #
)GG# $
{HH 
appII 
.II 

UseSwaggerII 
(II 
)II 
;II 
appJJ 
.JJ 
UseSwaggerUIJJ 
(JJ 
)JJ 
;JJ 
}KK 
appMM 
.MM 
UseCorsMM 
(MM 
myCorsMM 
)MM 
;MM 
appNN 
.NN 
UseHttpsRedirectionNN 
(NN 
)NN 
;NN 
appPP 
.PP 
UseAuthorizationPP 
(PP 
)PP 
;PP 
appRR 
.RR 
MapControllersRR 
(RR 
)RR 
;RR 
appTT 
.TT 
RunTT 
(TT 
)TT 	
;TT	 
Ç

_D:\FON\master\Aplikacija\honey-beer-server\Models\Validation\OfferEndDateValidationAttribute.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
.& '

Validation' 1
{ 
public 

class +
OfferEndDateValidationAttribute 0
:1 2
ValidationAttribute3 F
{ 
	protected 
override 
ValidationResult +
?+ ,
IsValid- 4
(4 5
object5 ;
?; <
value= B
,B C
ValidationContextD U
validationContextV g
)g h
{ 	
return

 
value

 
!=

 
null

 
&&

 !
DateTime

" *
.

* +
Compare

+ 2
(

2 3
(

3 4
DateTime

4 <
)

< =
value

> C
,

C D
DateTime

E M
.

M N
Now

N Q
)

Q R
>

S T
$num

U V
?

W X
ValidationResult

Y i
.

i j
Success

j q
:

r s
new

t w
ValidationResult	

x à
(


à â
$str


â ∫
)


∫ ª
;


ª º
} 	
} 
} ﬁ	
ZD:\FON\master\Aplikacija\honey-beer-server\Models\Validation\MeetingValidationAttribute.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
.& '

Validation' 1
{ 
public 

class &
MeetingValidationAttribute +
:, -
ValidationAttribute. A
{ 
	protected 
override 
ValidationResult +
?+ ,
IsValid- 4
(4 5
object5 ;
?; <
value= B
,B C
ValidationContextD U
validationContextV g
)g h
{		 	
return

 
value

 
!=

 
null

 
&&

  "
(

# $
(

$ %
DateTime

% -
)

- .
value

/ 4
-

5 6
DateTime

7 ?
.

? @
Now

@ C
)

C D
.

D E
Days

E I
>=

J L
$num

M N
?

N O
ValidationResult

P `
.

` a
Success

a h
:

i j
new

k n
ValidationResult

o 
(	

 Ä
$str


Ä ±
)


± ≤
;


≤ ≥
} 	
} 
} î
GD:\FON\master\Aplikacija\honey-beer-server\Models\TextCustomerAnswer.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str !
)! "
]" #
[		 

PrimaryKey		 
(		 
nameof		 
(		 
EventId		 
)		 
,		  
nameof		! '
(		' (

QuestionId		( 2
)		2 3
,		3 4
nameof		5 ;
(		; <
AnswerId		< D
)		D E
,		E F
nameof		G M
(		M N
FormId		N T
)		T U
)		U V
]		V W
public

 

class

 
TextCustomerAnswer

 #
{ 
[ 	
Key	 
, 
Column 
( 
$str 
)  
,  !

ForeignKey" ,
(, -
nameof- 3
(3 4
CustomerAnswer4 B
.B C
EventIdC J
)J K
)K L
]L M
public 
long 
EventId 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
[ 	
Key	 
, 
Column 
( 
$str "
)" #
,# $

ForeignKey% /
(/ 0
nameof0 6
(6 7
CustomerAnswer7 E
.E F

QuestionIdF P
)P Q
)Q R
]R S
public 
long 

QuestionId 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$num/ 0
;0 1
[ 	
Key	 
, 
Column 
( 
$str  
)  !
,! "

ForeignKey# -
(- .
nameof. 4
(4 5
CustomerAnswer5 C
.C D
AnswerIdD L
)L M
)M N
]N O
public 
long 
AnswerId 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
$num- .
;. /
[ 	
Key	 
, 
Column 
( 
$str 
) 
,  

ForeignKey! +
(+ ,
nameof, 2
(2 3
CustomerAnswer3 A
.A B
FormIdB H
)H I
)I J
]J K
public 
long 
FormId 
{ 
get  
;  !
set" %
;% &
}' (
=) *
$num+ ,
;, -
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
[ 	

JsonIgnore	 
] 
public 
CustomerAnswer *
?* +"
CustomerAnswerInstance, B
{C D
getE H
;H I
setJ M
;M N
}O P
=Q R
newS V
CustomerAnswerW e
(e f
)f g
;g h
}!! 
}"" ı
ED:\FON\master\Aplikacija\honey-beer-server\Models\ShoppingLocation.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str 
) 
]  
[		 

PrimaryKey		 
(		 
nameof		 
(		 
PIB		 
)		 
,		 
nameof		 #
(		# $
ShoppingLocationId		$ 6
)		6 7
)		7 8
]		8 9
public

 

class

 
ShoppingLocation

 !
{ 
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
CompanyInstance  /
)/ 0
)0 1
,1 2
Column3 9
(9 :
$str: ?
)? @
,@ A
RangeB G
(G H
minimumH O
:O P
$numQ Y
,Y Z
maximum[ b
:b c
$numd l
,l m
ErrorMessagen z
={ |
$str	} ê
)
ê ë
]
ë í
public 
long 
PIB 
{ 
get 
; 
set "
;" #
}$ %
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
, 
Column 
( 
$str *
)* +
]+ ,
public 
long 
ShoppingLocationId &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
string/ 5
.5 6
Empty6 ;
;; <
[ 	

JsonIgnore	 
] 
public 
List 
< 
Discount 
> 
	Discounts '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
new8 ;
List< @
<@ A
DiscountA I
>I J
(J K
)K L
;L M
public 
Company 
CompanyInstance &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
new7 :
Company; B
(B C
)C D
;D E
[ 	

JsonIgnore	 
] 
public 
List 
< 
ProductInLocation %
>% &&
ProductsInLocationInstance' A
{B C
getD G
;G H
setI L
;L M
}N O
=P Q
newR U
ListV Z
<Z [
ProductInLocation[ l
>l m
(m n
)n o
;o p
[   	
	NotMapped  	 
]   
public!! 
List!! 
<!! 
Product!! 
>!! 
ProductsInLocation!! /
{!!0 1
get!!2 5
;!!5 6
set!!7 :
;!!: ;
}!!< =
=!!> ?
new!!@ C
List!!D H
<!!H I
Product!!I P
>!!P Q
(!!Q R
)!!R S
;!!S T
}"" 
}## …
FD:\FON\master\Aplikacija\honey-beer-server\Models\SentPersonalEmail.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[		 
Table		 

(		
 
$str		  
)		  !
]		! "
[

 

PrimaryKey

 
(

 
nameof

 
(

 
Email

 
)

 
,

 
nameof

 $
(

$ %
SentPersonalEmailId

% 8
)

8 9
)

9 :
]

: ;
public 

class 
SentPersonalEmail "
{ 
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  !
PersonalEmailInstance  5
)5 6
)6 7
,7 8
Column9 ?
(? @
$str@ G
)G H
]H I
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
, 
Column 
( 
$str -
)- .
]. /
public 
long 
SentPersonalEmailId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
$num8 9
;9 :
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
)  
]  !
public 
DateTime 
DateAndTime #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
DateTime4 <
.< =
Now= @
;@ A
public 
bool $
IsSentPersonalEmailValid ,
(, -
)- .
{ 	
Regex 
_emailRegex 
= 
new  #
(# $
$str$ 8
)8 9
;9 :
return 
_emailRegex 
. 
IsMatch &
(& '
Email' ,
), -
;- .
} 	
public 
PersonalEmail !
PersonalEmailInstance 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
=A B
newC F
PersonalEmailG T
(T U
)U V
;V W
} 
}   Ã
ED:\FON\master\Aplikacija\honey-beer-server\Models\SentCompanyEmail.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[		 
Table		 

(		
 
$str		 
)		  
]		  !
[

 

PrimaryKey

 
(

 
nameof

 
(

 
PIB

 
)

 
,

 
nameof

 #
(

# $
SentCompanyEmailId

$ 6
)

6 7
)

7 8
]

8 9
public 

class 
SentCompanyEmail !
{ 
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
CompanyInstance  /
)/ 0
)0 1
,1 2
Column3 9
(9 :
$str: ?
)? @
,@ A
RangeB G
(G H
minimumH O
:O P
$numQ Y
,Y Z
maximum[ b
:b c
$numd l
,l m
ErrorMessagen z
={ |
$str	} ê
)
ê ë
]
ë í
public 
long 
PIB 
{ 
get 
; 
set "
;" #
}$ %
=& '
$num( )
;) *
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
, 
Column 
( 
$str ,
), -
]- .
public 
long 
SentCompanyEmailId &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
$num7 8
;8 9
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
)  
]  !
public 
DateTime 
DateAndTime #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
DateTime4 <
.< =
Now= @
;@ A
[ 	

JsonIgnore	 
] 
public 
Company 
? 
CompanyInstance '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} –
FD:\FON\master\Aplikacija\honey-beer-server\Models\ScannedByCustomer.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str 
) 
] 
[ 

PrimaryKey 
( 
nameof 
( 
QRCodeId 
)  
,  !
nameof! '
(' (

CustomerId( 2
)2 3
)3 4
]4 5
[		 
Index		 

(		
 
nameof		 
(		 
QRCodeId		 
)		 
,		 
IsUnique		 %
=		& '
true		' +
)		+ ,
]		, -
[

 
Index

 

(


 
nameof

 
(

 

CustomerId

 
)

 
,

 
IsUnique

 &
=

' (
false

( -
)

- .
]

. /
public 

class 
ScannedByCustomer "
{ 
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
QRCode  &
.& '
QRCodeId' /
)/ 0
)0 1
]1 2
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
QRCodeId 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
$num- .
;. /
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Customer  (
.( )

CustomerId) 3
)3 4
)4 5
]5 6
[ 	
Column	 
( 
$str 
) 
] 
public 
long 

CustomerId 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$num/ 0
;0 1
} 
} ‘#
@D:\FON\master\Aplikacija\honey-beer-server\Models\Reservation.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str 
) 
] 
[		 

PrimaryKey		 
(		 
nameof		 
(		 
ReservationId		 $
)		$ %
,		% &
nameof		' -
(		- .
	ProductId		. 7
)		7 8
,		8 9
nameof		: @
(		@ A
PIB		A D
)		D E
)		E F
]		F G
public

 

class

 
Reservation

 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
, 
Column 
( 
$str %
)% &
]& '
public 
long 
ReservationId !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
$num2 3
;3 4
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Product  '
)' (
)( )
]) *
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
	ProductId 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$num. /
;/ 0
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Company  '
)' (
)( )
]) *
[ 	
Column	 
( 
$str 
) 
, 
Range 
( 
minimum %
:% &
$num' /
,/ 0
maximum1 8
:8 9
$num: B
,B C
ErrorMessageD P
=Q R
$strS f
)f g
]g h
public 
long 
PIB 
{ 
get 
; 
set "
;" #
}$ %
=& '
$num( )
;) *
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
int 
Amount 
{ 
get 
;  
set! $
;$ %
}& '
=( )
$num* +
;+ ,
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
DateTime 
? 
Delivery !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Product 
? 
ProductInstance '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	

JsonIgnore	 
] 
public 
Company 
? 
CompanyInstance '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
IsAmountValid !
(! "
)" #
{   	
return!! 
this!! 
.!! 
Amount!! 
>!!  
$num!!! "
;!!" #
}"" 	
public## 
bool## 
IsDeliveryValid## #
(### $
)##$ %
{$$ 	
return%% 
Delivery%% 
!=%% 
null%% #
&&%%$ &
DateTime%%' /
.%%/ 0
Compare%%0 7
(%%7 8
DateTime%%8 @
.%%@ A
Now%%A D
,%%D E
(%%F G
DateTime%%G O
)%%O P
Delivery%%P X
)%%X Y
<=%%Z \
$num%%] ^
;%%^ _
}&& 	
public(( 
bool(( 
IsReservationValid(( &
(((& '
)((' (
{)) 	
return** 
IsDeliveryValid** "
(**" #
)**# $
&&**% '
IsAmountValid**( 5
(**5 6
)**6 7
;**7 8
}++ 	
},, 
}.. ˝	
AD:\FON\master\Aplikacija\honey-beer-server\Models\QuestionType.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str 
) 
] 
[ 

PrimaryKey 
( 
nameof 
( 
QuestionTypeId %
)% &
)& '
]' (
public		 

class		 
QuestionType		 
{

 
[ 	
Key	 
] 
[ 	
Column	 
( 
$str "
)" #
]# $
public 
long 
QuestionTypeId "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
$num3 4
;4 5
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
} 
} ø
=D:\FON\master\Aplikacija\honey-beer-server\Models\Question.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[		 
Table		 

(		
 
$str		 
)		 
]		 
[

 

PrimaryKey

 
(

 
nameof

 
(

 
EventId

 
)

 
,

  
nameof

! '
(

' (

QuestionId

( 2
)

2 3
)

3 4
]

4 5
public 

class 
Question 
{ 
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Event  %
)% &
)& '
,' (
Column) /
(/ 0
$str0 :
): ;
]; <
public 
long 
EventId 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
, 
Column 
( 
$str "
)" #
]# $
public 
long 

QuestionId 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$num/ 0
;0 1
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
[ 	
Required	 
] 
[ 	

ForeignKey	 
( 
nameof 
( 
QuestionType '
)' (
)( )
]) *
[ 	
Column	 
( 
$str "
)" #
]# $
public 
long 
QuestionTypeId "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
$num3 4
;4 5
public 
QuestionType  
QuestionTypeInstance 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
newA D
QuestionTypeE Q
(Q R
)R S
;S T
[!! 	

JsonIgnore!!	 
]!! 
public"" 
Event"" 
?"" 
EventInstance"" #
{""$ %
get""& )
;"") *
set""+ .
;"". /
}""0 1
[%% 	
	NotMapped%%	 
]%% 
public&& 
List&& 
<&& 
Answer&& 
>&& 
Answers&& #
{&&$ %
get&&& )
;&&) *
set&&+ .
;&&. /
}&&0 1
=&&2 3
new&&4 7
List&&8 <
<&&< =
Answer&&= C
>&&C D
(&&D E
)&&E F
;&&F G
}'' 
}(( ˇ	
?D:\FON\master\Aplikacija\honey-beer-server\Models\QRCodeType.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str 
) 
] 
[ 

PrimaryKey 
( 
nameof 
( 
QRCodeTypeId #
)# $
)$ %
]% &
public		 

class		 

QRCodeType		 
{

 
[ 	
Key	 
] 
[ 	
Column	 
( 
$str !
)! "
]" #
public 
long 
QRCodeTypeId  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
$num1 2
;2 3
[ 	
Required	 
] 
[ 	
Column	 
( 
$str #
)# $
]$ %
public 
string 
QRCodeTypeName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
} 
} ò
;D:\FON\master\Aplikacija\honey-beer-server\Models\QRCode.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[		 
Table		 

(		
 
$str		 
)		 
]		 
public

 

class

 
QRCode

 
{ 
[ 	
Key	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
QRCodeId 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
$num- .
;. /
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Code 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
[ 	
Required	 
, 

ForeignKey 
( 
nameof $
($ %

QRCodeType% /
./ 0
QRCodeTypeId0 <
)< =
)= >
]> ?
[ 	
Column	 
( 
$str !
)! "
]" #
public 
long 
QRCodeTypeId  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
$num1 2
;2 3
[ 	
	NotMapped	 
] 
[ 	

JsonIgnore	 
] 
public 
Form 
? 
Form 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

JsonIgnore	 
] 
public 

QRCodeType 
? 
QRCodeTypeInstance -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
[   	

JsonIgnore  	 
]   
public!! 
ScannedByCustomer!!  
?!!  !%
ScannedByCustomerInstance!!" ;
{!!< =
get!!> A
;!!A B
set!!C F
;!!F G
}!!H I
[## 	
	NotMapped##	 
]## 
public$$ 
Customer$$ 
	ScannedBy$$ !
{$$" #
get$$$ '
;$$' (
set$$) ,
;$$, -
}$$. /
=$$0 1
new$$2 5
Customer$$6 >
($$> ?
)$$? @
;$$@ A
}%% 
}&& ‡
FD:\FON\master\Aplikacija\honey-beer-server\Models\ProductInLocation.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str  
)  !
]! "
[ 

PrimaryKey 
( 
nameof 
( 
PIB 
) 
, 
nameof "
(" #
ShoppingLocationId# 5
)5 6
,6 7
nameof7 =
(= >
	ProductId> G
)G H
)H I
]I J
public		 

class		 
ProductInLocation		 "
{

 
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
( 
ShoppingLocation /
./ 0
PIB0 3
)3 4
)4 5
]5 6
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
PIB 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
( 
ShoppingLocation /
./ 0
ShoppingLocationId0 B
)B C
)C D
]D E
[ 	
Column	 
( 
$str &
)& '
]' (
public 
long 
ShoppingLocationId &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
( 
Product &
.& '
	ProductId' 0
)0 1
)1 2
]2 3
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
	ProductId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
ShoppingLocation $
ShoppingLocationInstance  8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
newI L
ShoppingLocationM ]
(] ^
)^ _
;_ `
[ 	
	NotMapped	 
] 
public 
Product 
ProductInstance &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
new7 :
Product; B
(B C
)C D
;D E
} 
} ˆ
<D:\FON\master\Aplikacija\honey-beer-server\Models\Product.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[		 
Table		 

(		
 
$str		 
)		 
]		 
[

 

PrimaryKey

 
(

 
nameof

 
(

 
	ProductId

  
)

  !
)

! "
]

" #
public 

class 
Product 
{ 
[ 	
Key	 
] 
[ 	
Column	 
( 
$str 
) 
, 
DatabaseGenerated 0
(0 1#
DatabaseGeneratedOption1 H
.H I
IdentityI Q
)Q R
]R S
public 
long 
	ProductId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
string2 8
.8 9
Empty9 >
;> ?
[ 	
	NotMapped	 
] 
[ 	

JsonIgnore	 
] 
public 
List 
< 
Reservation 
>  
?  !
Reservations" .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
[ 	
	NotMapped	 
] 
[   	

JsonIgnore  	 
]   
public!! 
List!! 
<!! 
Discount!! 
>!! 
?!! 
	Discounts!! (
{!!) *
get!!+ .
;!!. /
set!!0 3
;!!3 4
}!!5 6
["" 	

JsonIgnore""	 
]"" 
public## 
List## 
<## 
Offer## 
>## 
?## 
OfferInstance## )
{##* +
get##, /
;##/ 0
set##1 4
;##4 5
}##6 7
public$$ 
List$$ 
<$$ 
ProductInLocation$$ %
>$$% &
?$$& '
LocationsForProduct$$( ;
{$$< =
get$$> A
;$$A B
set$$C F
;$$F G
}$$H I
}%% 
}&& ë
BD:\FON\master\Aplikacija\honey-beer-server\Models\PersonalEmail.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[		 
Table		 

(		
 
$str		 
)		 
]		 
[

 

PrimaryKey

 
(

 
nameof

 
(

 
Email

 
)

 
)

 
]

 
public 

class 
PersonalEmail 
{ 
[ 	
Key	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
} 
} ´
CD:\FON\master\Aplikacija\honey-beer-server\Models\OfferByCompany.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str 
) 
] 
[ 

PrimaryKey 
( 
nameof 
( 
PIB 
) 
, 
nameof "
(" #
	ProductId# ,
), -
,- .
nameof. 4
(4 5
OfferId5 <
)< =
)= >
]> ?
public		 

class		 
OfferByCompany		 
{

 
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
CompanyInstance  /
)/ 0
)0 1
,1 2
Range3 8
(8 9
minimum9 @
:@ A
$numB J
,J K
maximumL S
:S T
$numU ]
,] ^
ErrorMessage_ k
=l m
$str	n Å
)
Å Ç
]
Ç É
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
PIB 
{ 
get 
; 
set "
;" #
}$ %
=& '
$num( )
;) *
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Offer  %
.% &
	ProductId& /
)/ 0
)0 1
]1 2
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
	ProductId 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$num. /
;/ 0
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Offer  %
.% &
OfferId& -
)- .
). /
]/ 0
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
OfferId 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
public 
Company 
? 
CompanyInstance '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
Offer 
? 
OfferInstance #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
}   ≠ 
:D:\FON\master\Aplikacija\honey-beer-server\Models\Offer.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[		 
Table		 

(		
 
$str		 
)		 
]		 
[

 

PrimaryKey

 
(

 
nameof

 
(

 
	ProductId

  
)

  !
,

! "
nameof

# )
(

) *
OfferId

* 1
)

1 2
)

2 3
]

3 4
public 

class 
Offer 
{ 
[ 	
Key	 
] 
[ 	

ForeignKey	 
( 
nameof 
( 
ProductInstance *
)* +
)+ ,
], -
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
	ProductId 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$num. /
;/ 0
[ 	
Key	 
, 
Column 
( 
$str 
)  
,  !
DatabaseGenerated" 3
(3 4#
DatabaseGeneratedOption4 K
.K L
IdentityL T
)T U
]U V
public 
long 
OfferId 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
, 
Range  
(  !
$num! "
," #
int# &
.& '
MaxValue' /
,/ 0
ErrorMessage0 <
== >
$str? ]
)] ^
]^ _
public 
int 
Amount 
{ 
get 
;  
set! $
;$ %
}& '
=( )
$num* +
;+ ,
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
DateTime 
	BeginDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
DateTime2 :
.: ;
Now; >
;> ?
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
, "
OfferEndDateValidation 3
]3 4
public 
DateTime 
EndDate 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
DateTime0 8
.8 9
Now9 <
;< =
public"" 
Product"" 
?"" 
ProductInstance"" '
{""( )
get""* -
;""- .
set""/ 2
;""2 3
}""4 5
[$$ 	

JsonIgnore$$	 
]$$ 
public%% 
List%% 
<%% 
OfferByCompany%% "
>%%" #
?%%# $
OffersByCompanies%%% 6
{%%7 8
get%%9 <
;%%< =
set%%> A
;%%A B
}%%C D
public&& 
bool&& 
IsOfferValid&&  
(&&  !
)&&! "
{'' 	
return(( $
IsBeginDateBeforeEndDate(( +
(((+ ,
)((, -
;((- .
})) 	
private,, 
bool,, $
IsBeginDateBeforeEndDate,, -
(,,- .
),,. /
{-- 	
int.. 
result.. 
=.. 
DateTime.. !
...! "
Compare.." )
(..) *
	BeginDate..* 3
,..3 4
EndDate..5 <
)..< =
;..= >
return// 
result// 
<// 
$num// 
;// 
}00 	
}22 
}33 ›
<D:\FON\master\Aplikacija\honey-beer-server\Models\Meeting.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{		 
[

 
Table

 

(


 
$str

 
)

 
]

 
[ 

PrimaryKey 
( 
nameof 
( 
	MeetingId  
)  !
)! "
]" #
public 

class 
Meeting 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
, 
Column 
( 
$str !
)! "
]" #
public 
long 
	MeetingId 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$num. /
;/ 0
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
[ 	
Required	 
, 
MeetingValidation #
]# $
[ 	
Column	 
( 
$str 
) 
] 
public 
DateTime 
	StartTime !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
DateTime2 :
.: ;
Now; >
;> ?
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
DateTime 
EndTime 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
DateTime0 8
.8 9
Now9 <
;< =
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public   
string   
Location   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
=  - .
string  / 5
.  5 6
Empty  6 ;
;  ; <
["" 	

ForeignKey""	 
("" 
nameof"" 
("" 
CompanyInstance"" *
)""* +
)""+ ,
,"", -
Range"". 3
(""3 4
minimum""4 ;
:""; <
$num""= E
,""E F
maximum""G N
:""N O
$num""P X
,""X Y
ErrorMessage""Z f
=""g h
$str""i |
)""| }
]""} ~
[## 	
Column##	 
(## 
$str## 
)## 
]## 
public$$ 
long$$ 
?$$ 
PIB$$ 
{$$ 
get$$ 
;$$ 
set$$  #
;$$# $
}$$% &
[&& 	

JsonIgnore&&	 
]&& 
public'' 
Company'' 
?'' 
CompanyInstance'' '
{''( )
get''* -
;''- .
set''/ 2
;''2 3
}''4 5
}(( 
})) ≠
=D:\FON\master\Aplikacija\honey-beer-server\Models\Location.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str 
) 
] 
public		 

class		 
Location		 
{

 
[ 	
Key	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
long 

LocationId 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
)  
]  !
public 
string 
LocationName "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
string3 9
.9 :
Empty: ?
;? @
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Phone 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
} 
} å
9D:\FON\master\Aplikacija\honey-beer-server\Models\Form.cs
	namespace		 	!
honey_beer_server_app		
 
.		  
Models		  &
{

 
[ 
Table 

(
 
$str 
) 
] 
[ 

PrimaryKey 
( 
nameof 
( 
FormId 
) 
) 
]  
public 

class 
Form 
{ 
[ 	
Key	 
, 
Column 
( 
$str 
) 
]  
public 
long 
FormId 
{ 
get  
;  !
set" %
;% &
}' (
=) *
$num+ ,
;, -
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
)  
]  !
public 
DateTime 
CreationDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
DateTime5 =
.= >
Now> A
;A B
[ 	

ForeignKey	 
( 
nameof 
( 
QRCodeInstance )
)) *
)* +
]+ ,
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
? 
QRCodeId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	

JsonIgnore	 
] 
public 
QRCode 
? 
QRCodeInstance %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[   	

JsonIgnore  	 
]   
public!! 
List!! 
<!! 
CustomerAnswer!! "
>!!" #
?!!# $
CustomerAnswers!!% 4
{!!5 6
get!!7 :
;!!: ;
set!!< ?
;!!? @
}!!A B
}"" 
}## Ï
>D:\FON\master\Aplikacija\honey-beer-server\Models\EventType.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[		 
Table		 

(		
 
$str		 
)		 
]		 
public

 

class

 
	EventType

 
{ 
[ 	
Key	 
, 
Column 
( 
$str $
)$ %
,% &
DatabaseGenerated' 8
(8 9#
DatabaseGeneratedOption9 P
.P Q
IdentityQ Y
)Y Z
]Z [
public 
long 
EventTypeId 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
[ 	
	NotMapped	 
] 
[ 	

JsonIgnore	 
] 
public 
List 
< 
Event 
> 
? 
Events "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ®
BD:\FON\master\Aplikacija\honey-beer-server\Models\EventLocation.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str 
) 
] 
[ 

PrimaryKey 
( 
nameof 
( 
EventId 
) 
,  
nameof! '
(' (
EventLocationId( 7
)7 8
)8 9
]9 :
public		 

class		 
EventLocation		 
{

 
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Event  %
.% &
EventId& -
)- .
). /
]/ 0
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
EventId 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Key	 
] 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Column	 
( 
$str #
)# $
]$ %
public 
long 
EventLocationId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
string/ 5
.5 6
Empty6 ;
;; <
public 
Event 
EventInstance "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
new3 6
Event7 <
(< =
)= >
;> ?
} 
} ‹
:D:\FON\master\Aplikacija\honey-beer-server\Models\Event.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str 
) 
] 
[		 

PrimaryKey		 
(		 
nameof		 
(		 
EventId		 
)		 
)		  
]		  !
public

 

class

 
Event

 
{ 
[ 	
Key	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
EventId 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$str, .
;. /
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
$str2 4
;4 5
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
)  
]  !
public 
DateTime 
CreationDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
DateTime5 =
.= >
Now> A
;A B
[ 	
Column	 
( 
$str 
) 
] 
public 
DateTime 
	BeginDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
DateTime2 :
.: ;
Now; >
;> ?
[ 	
Column	 
( 
$str 
) 
] 
public   
DateTime   
EndDate   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
=  . /
DateTime  0 8
.  8 9
Now  9 <
;  < =
["" 	
Required""	 
]"" 
[## 	

ForeignKey##	 
(## 
nameof## 
(## 
EventTypeInstance## ,
)##, -
)##- .
]##. /
[$$ 	
Column$$	 
($$ 
$str$$ 
)$$  
]$$  !
public%% 
long%% 
EventTypeId%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
=%%. /
$num%%0 1
;%%1 2
public)) 
	EventType)) 
?)) 
EventTypeInstance)) +
{)), -
get)). 1
;))1 2
set))3 6
;))6 7
}))8 9
public,, 
List,, 
<,, 
Question,, 
>,, 
?,, 
	Questions,, (
{,,) *
get,,+ .
;,,. /
set,,0 3
;,,3 4
},,5 6
public.. 
List.. 
<.. 
EventLocation.. !
>..! "
?.." #
EventLocations..$ 2
{..3 4
get..5 8
;..8 9
set..: =
;..= >
}..? @
}// 
}00 ö
=D:\FON\master\Aplikacija\honey-beer-server\Models\Discount.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str 
) 
] 
[		 

PrimaryKey		 
(		 
nameof		 
(		 
PIB		 
)		 
,		 
nameof		 #
(		# $
ShoppingLocationId		$ 6
)		6 7
,		7 8
nameof		9 ?
(		? @
	ProductId		@ I
)		I J
)		J K
]		K L
public

 

class

 
Discount

 
{ 
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
( 
ShoppingLocation /
)/ 0
)0 1
,1 2
Column3 9
(9 :
$str: ?
)? @
,@ A
RangeB G
(G H
minimumH O
:O P
$numQ Y
,Y Z
maximum[ b
:b c
$numd l
,l m
ErrorMessagen z
={ |
$str	} ê
)
ê ë
]
ë í
public 
long 
PIB 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
( 
ShoppingLocation /
)/ 0
)0 1
,1 2
Column3 9
(9 :
$str: P
)P Q
]Q R
public 
long 
ShoppingLocationId &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Product  '
)' (
)( )
,) *
Column+ 1
(1 2
$str2 >
)> ?
]? @
public 
long 
	ProductId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
int 

Percentage 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
DateTime 
	BeginDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
DateTime 
EndDate 
{  !
get" %
;% &
set' *
;* +
}, -
public 
ShoppingLocation $
ShoppingLocationInstance  8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
newI L
ShoppingLocationM ]
(] ^
)^ _
;_ `
public 
Product 
ProductInstance &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
new7 :
Product; B
(B C
)C D
;D E
}   
}!! ˚$
CD:\FON\master\Aplikacija\honey-beer-server\Models\CustomerAnswer.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[ 
Table 

(
 
$str 
) 
] 
[		 

PrimaryKey		 
(		 
nameof		 
(		 
EventId		 
)		 
,		  
nameof		  &
(		& '

QuestionId		' 1
)		1 2
,		2 3
nameof		3 9
(		9 :
AnswerId		: B
)		B C
,		C D
nameof		E K
(		K L
FormId		L R
)		R S
)		S T
]		T U
public

 

class

 
CustomerAnswer

 
{ 
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Models  &
.& '
Answer' -
.- .
EventId. 5
)5 6
)6 7
,7 8
Column9 ?
(? @
$str@ J
)J K
]K L
public 
long 
EventId 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Models  &
.& '
Answer' -
.- .

QuestionId. 8
)8 9
)9 :
,: ;
Column< B
(B C
$strC P
)P Q
]Q R
public 
long 

QuestionId 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$num/ 0
;0 1
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Models  &
.& '
Answer' -
.- .
AnswerId. 6
)6 7
)7 8
,8 9
Column: @
(@ A
$strA L
)L M
]M N
public 
long 
AnswerId 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
$num- .
;. /
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Models  &
.& '
Form' +
)+ ,
), -
,- .
Column/ 5
(5 6
$str6 ?
)? @
]@ A
public 
long 
FormId 
{ 
get  
;  !
set" %
;% &
}' (
=) *
$num+ ,
;, -
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
DateTime- 5
.5 6
Now6 9
;9 :
[ 	

ForeignKey	 
( 
nameof 
( 
Models !
.! "
Customer" *
)* +
)+ ,
], -
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
? 

CustomerId 
{  !
get" %
;% &
set' *
;* +
}, -
[   	

JsonIgnore  	 
]   
public!! 
Answer!! 
?!! 
Answer!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
[## 	

JsonIgnore##	 
]## 
public$$ 
Form$$ 
?$$ 
Form$$ 
{$$ 
get$$ 
;$$  
set$$! $
;$$$ %
}$$& '
[&& 	

JsonIgnore&&	 
]&& 
public'' 
Customer'' 
?'' 
Customer'' !
{''" #
get''$ '
;''' (
set'') ,
;'', -
}''. /
[)) 	

JsonIgnore))	 
,)) 
	NotMapped)) 
])) 
public** 
TextCustomerAnswer** !
?**! "
TextCustomerAnswer**# 5
{**6 7
get**8 ;
;**; <
set**= @
;**@ A
}**B C
},, 
}-- ®
=D:\FON\master\Aplikacija\honey-beer-server\Models\Customer.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{		 
[

 
Table

 

(


 
$str

 
)

 
]

 
[ 
Index 

(
 
nameof 
( 

CustomerId 
) 
) 
] 
public 

class 
Customer 
{ 
[ 	
Key	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
long 

CustomerId 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$num/ 0
;0 1
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
, 
StringLength )
() *
maximumLength* 7
:7 8
$num9 ;
,; <
ErrorMessage= I
=J K
$strL |
)| }
]} ~
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
string/ 5
.5 6
Empty6 ;
;; <
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
[ 	
Required	 
] 
[ 	

ForeignKey	 
( 
nameof 
( !
PersonalEmailInstance 0
)0 1
)1 2
]2 3
[ 	
Column	 
( 
$str 
) 
, 
RegularExpression +
(+ ,
pattern, 3
:3 4
$str5 F
,F G
ErrorMessageH T
=U V
$strW w
)w x
]x y
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$str, .
;. /
public!! 
PersonalEmail!! !
PersonalEmailInstance!! 2
{!!3 4
get!!5 8
;!!8 9
set!!: =
;!!= >
}!!? @
=!!A B
new!!C F
PersonalEmail!!G T
(!!T U
)!!U V
;!!V W
[## 	

JsonIgnore##	 
]## 
public$$ 
ScannedByCustomer$$  
?$$  !%
ScannedByCustomerInstance$$" ;
{$$< =
get$$> A
;$$A B
set$$C F
;$$F G
}$$H I
}&& 
}'' ∂!
<D:\FON\master\Aplikacija\honey-beer-server\Models\Company.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[		 
Table		 

(		
 
$str		 
)		 
]		 
[

 
Index

 

(


 
nameof

 
(

 
PIB

 
)

 
)

 
]

 
public 

class 
Company 
{ 
[ 	
Key	 
] 
[ 	
Column	 
( 
$str 
) 
, 
Range 
( 
minimum %
:% &
$num& .
,. /
maximum0 7
:7 8
$num8 @
,@ A
ErrorMessageA M
=N O
$strP c
)c d
]d e
public 
long 
PIB 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
$str+ -
;- .
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
, 
RegularExpression +
(+ ,
pattern, 3
:3 4
$str5 F
,F G
ErrorMessageH T
=U V
$strW r
)r s
]s t
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$str, .
;. /
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$str/ 1
;1 2
[ 	
	NotMapped	 
] 
[ 	

JsonIgnore	 
] 
public 
List 
< 
Reservation 
>  
Reservations! -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
new> A
(B C
)C D
;D E
[ 	

JsonIgnore	 
] 
public 
List 
< 
OfferByCompany "
>" #
OffersByCompanies$ 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
=D E
newF I
(J K
)K L
;L M
[ 	
	NotMapped	 
] 
[   	

JsonIgnore  	 
]   
public!! 
List!! 
<!! 
ShoppingLocation!! $
>!!$ %
ShoppingLocations!!& 7
{!!8 9
get!!: =
;!!= >
set!!? B
;!!B C
}!!D E
=!!F G
new!!H K
(!!K L
)!!L M
;!!M N
["" 	
	NotMapped""	 
]"" 
[## 	

JsonIgnore##	 
]## 
public$$ 
List$$ 
<$$ 
Meeting$$ 
>$$ 
meetings$$ %
{$$& '
get$$( +
;$$+ ,
set$$- 0
;$$0 1
}$$2 3
=$$4 5
new$$6 9
($$: ;
)$$; <
;$$< =
[%% 	
	NotMapped%%	 
]%% 
[&& 	

JsonIgnore&&	 
]&& 
public'' 
List'' 
<'' 
SentCompanyEmail'' $
>''$ %
sentCompanyEmails''& 7
{''8 9
get'': =
;''= >
set''? B
;''B C
}''D E
=''F G
new''H K
(''L M
)''M N
;''N O
}(( 
})) ù
;D:\FON\master\Aplikacija\honey-beer-server\Models\Answer.cs
	namespace 	!
honey_beer_server_app
 
.  
Models  &
{ 
[		 
Table		 

(		
 
$str		 
)		 
]		 
[

 

PrimaryKey

 
(

 
nameof

 
(

 
EventId

 
)

 
,

  
nameof

! '
(

' (

QuestionId

( 2
)

2 3
,

3 4
nameof

5 ;
(

; <
AnswerId

< D
)

D E
)

E F
]

F G
[ 
Index 

(
 
nameof 
( 
AnswerId 
) 
) 
] 
public 

class 
Answer 
{ 
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Question  (
)( )
)) *
,* +
Column, 2
(2 3
$str3 =
)= >
]> ?
public 
long 
EventId 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
[ 	
Key	 
, 

ForeignKey 
( 
nameof 
(  
Question  (
)( )
)) *
,* +
Column, 2
(2 3
$str3 @
)@ A
]A B
public 
long 

QuestionId 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$num/ 0
;0 1
[ 	
Key	 
] 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Column	 
( 
$str 
) 
] 
public 
long 
AnswerId 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
$num- .
;. /
[ 	
Required	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$str, .
;. /
[ 	
	NotMapped	 
] 
[ 	

JsonIgnore	 
] 
public 
List 
< 
CustomerAnswer "
>" #
?# $
CustomerAnswers% 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
[!! 	

JsonIgnore!!	 
]!! 
public"" 
Question"" 
?"" 
EventQuestion"" &
{""' (
get"") ,
;"", -
set"". 1
;""1 2
}""3 4
}## 
}$$ ¸$
lD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230923183549_CreatingFixedTextCustomerAnswerTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class 0
$CreatingFixedTextCustomerAnswerTable =
:> ?
	Migration@ I
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str ,
,, -
columns 
: 
table 
=> !
new" %
{ 
event_id 
= 
table $
.$ %
Column% +
<+ ,
long, 0
>0 1
(1 2
type2 6
:6 7
$str8 @
,@ A
nullableB J
:J K
falseL Q
)Q R
,R S
question_id 
=  !
table" '
.' (
Column( .
<. /
long/ 3
>3 4
(4 5
type5 9
:9 :
$str; C
,C D
nullableE M
:M N
falseO T
)T U
,U V
	answer_id 
= 
table  %
.% &
Column& ,
<, -
long- 1
>1 2
(2 3
type3 7
:7 8
$str9 A
,A B
nullableC K
:K L
falseM R
)R S
,S T
form_id 
= 
table #
.# $
Column$ *
<* +
long+ /
>/ 0
(0 1
type1 5
:5 6
$str7 ?
,? @
nullableA I
:I J
falseK P
)P Q
,Q R
text 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
nullableG O
:O P
falseQ V
)V W
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% >
,> ?
x@ A
=>B D
newE H
{I J
xK L
.L M
event_idM U
,U V
xW X
.X Y
question_idY d
,d e
xf g
.g h
	answer_idh q
,q r
xs t
.t u
form_idu |
}} ~
)~ 
;	 Ä
table 
. 

ForeignKey $
($ %
name 
: 
$str	 †
,
† °
columns 
:  
x! "
=># %
new& )
{* +
x, -
.- .
event_id. 6
,6 7
x8 9
.9 :
question_id: E
,E F
xG H
.H I
	answer_idI R
,R S
xT U
.U V
form_idV ]
}^ _
,_ `
principalTable &
:& '
$str( 9
,9 :
principalColumns (
:( )
new* -
[- .
]. /
{0 1
$str2 <
,< =
$str> K
,K L
$strM X
,X Y
$strZ c
}d e
)e f
;f g
} 
) 
; 
migrationBuilder!! 
.!! 
CreateIndex!! (
(!!( )
name"" 
:"" 
$str	"" ò
,
""ò ô
table## 
:## 
$str## -
,##- .
columns$$ 
:$$ 
new$$ 
[$$ 
]$$ 
{$$  
$str$$! +
,$$+ ,
$str$$- :
,$$: ;
$str$$< G
,$$G H
$str$$I R
}$$S T
)$$T U
;$$U V
}%% 	
	protected(( 
override(( 
void(( 
Down((  $
((($ %
MigrationBuilder((% 5
migrationBuilder((6 F
)((F G
{)) 	
migrationBuilder** 
.** 
	DropTable** &
(**& '
name++ 
:++ 
$str++ ,
)++, -
;++- .
},, 	
}-- 
}.. ˘/
gD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230923180559_DroppingTextCustomerAnswerTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class +
DroppingTextCustomerAnswerTable 8
:9 :
	Migration; D
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str ,
), -
;- .
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str ,
,, -
columns 
: 
table 
=> !
new" %
{ 
event_id 
= 
table $
.$ %
Column% +
<+ ,
long, 0
>0 1
(1 2
type2 6
:6 7
$str8 @
,@ A
nullableB J
:J K
falseL Q
)Q R
,R S
question_id 
=  !
table" '
.' (
Column( .
<. /
long/ 3
>3 4
(4 5
type5 9
:9 :
$str; C
,C D
nullableE M
:M N
falseO T
)T U
,U V
	answer_id 
= 
table  %
.% &
Column& ,
<, -
long- 1
>1 2
(2 3
type3 7
:7 8
$str9 A
,A B
nullableC K
:K L
falseM R
)R S
,S T
form_id 
= 
table #
.# $
Column$ *
<* +
long+ /
>/ 0
(0 1
type1 5
:5 6
$str7 ?
,? @
nullableA I
:I J
falseK P
)P Q
,Q R)
CustomerAnswerInstanceEventId 1
=2 3
table4 9
.9 :
Column: @
<@ A
longA E
>E F
(F G
typeG K
:K L
$strM U
,U V
nullableW _
:_ `
truea e
)e f
,f g,
 CustomerAnswerInstanceQuestionId 4
=5 6
table7 <
.< =
Column= C
<C D
longD H
>H I
(I J
typeJ N
:N O
$strP X
,X Y
nullableZ b
:b c
trued h
)h i
,i j*
CustomerAnswerInstanceAnswerId 2
=3 4
table5 :
.: ;
Column; A
<A B
longB F
>F G
(G H
typeH L
:L M
$strN V
,V W
nullableX `
:` a
trueb f
)f g
,g h(
CustomerAnswerInstanceFormId 0
=1 2
table3 8
.8 9
Column9 ?
<? @
long@ D
>D E
(E F
typeF J
:J K
$strL T
,T U
nullableV ^
:^ _
true` d
)d e
,e f
text   
=   
table    
.    !
Column  ! '
<  ' (
string  ( .
>  . /
(  / 0
type  0 4
:  4 5
$str  6 E
,  E F
nullable  G O
:  O P
false  Q V
)  V W
}!! 
,!! 
constraints"" 
:"" 
table"" "
=>""# %
{## 
table$$ 
.$$ 

PrimaryKey$$ $
($$$ %
$str$$% >
,$$> ?
x$$@ A
=>$$B D
new$$E H
{$$I J
x$$K L
.$$L M
event_id$$M U
,$$U V
x$$W X
.$$X Y
question_id$$Y d
,$$d e
x$$f g
.$$g h
	answer_id$$h q
,$$q r
x$$s t
.$$t u
form_id$$u |
}$$} ~
)$$~ 
;	$$ Ä
table%% 
.%% 

ForeignKey%% $
(%%$ %
name&& 
:&& 
$str	&& †
,
&&† °
columns'' 
:''  
x''! "
=>''# %
new''& )
{''* +
x'', -
.''- .)
CustomerAnswerInstanceEventId''. K
,''K L
x''M N
.''N O,
 CustomerAnswerInstanceQuestionId''O o
,''o p
x''q r
.''r s+
CustomerAnswerInstanceAnswerId	''s ë
,
''ë í
x
''ì î
.
''î ï*
CustomerAnswerInstanceFormId
''ï ±
}
''≤ ≥
,
''≥ ¥
principalTable(( &
:((& '
$str((( 9
,((9 :
principalColumns)) (
:))( )
new))* -
[))- .
])). /
{))0 1
$str))2 <
,))< =
$str))> K
,))K L
$str))M X
,))X Y
$str))Z c
}))d e
)))e f
;))f g
}** 
)** 
;** 
migrationBuilder,, 
.,, 
CreateIndex,, (
(,,( )
name-- 
:-- 
$str	-- ò
,
--ò ô
table.. 
:.. 
$str.. -
,..- .
columns// 
:// 
new// 
[// 
]// 
{//  
$str//! @
,//@ A
$str//B d
,//d e
$str	//f Ü
,
//Ü á
$str
//à ¶
}
//ß ®
)
//® ©
;
//© ™
}00 	
}11 
}22 ˘/
gD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230923174643_CreatingTextCustomerAnswerTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class +
CreatingTextCustomerAnswerTable 8
:9 :
	Migration; D
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str ,
,, -
columns 
: 
table 
=> !
new" %
{ 
event_id 
= 
table $
.$ %
Column% +
<+ ,
long, 0
>0 1
(1 2
type2 6
:6 7
$str8 @
,@ A
nullableB J
:J K
falseL Q
)Q R
,R S
question_id 
=  !
table" '
.' (
Column( .
<. /
long/ 3
>3 4
(4 5
type5 9
:9 :
$str; C
,C D
nullableE M
:M N
falseO T
)T U
,U V
	answer_id 
= 
table  %
.% &
Column& ,
<, -
long- 1
>1 2
(2 3
type3 7
:7 8
$str9 A
,A B
nullableC K
:K L
falseM R
)R S
,S T
form_id 
= 
table #
.# $
Column$ *
<* +
long+ /
>/ 0
(0 1
type1 5
:5 6
$str7 ?
,? @
nullableA I
:I J
falseK P
)P Q
,Q R
text 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
nullableG O
:O P
falseQ V
)V W
,W X)
CustomerAnswerInstanceEventId 1
=2 3
table4 9
.9 :
Column: @
<@ A
longA E
>E F
(F G
typeG K
:K L
$strM U
,U V
nullableW _
:_ `
truea e
)e f
,f g,
 CustomerAnswerInstanceQuestionId 4
=5 6
table7 <
.< =
Column= C
<C D
longD H
>H I
(I J
typeJ N
:N O
$strP X
,X Y
nullableZ b
:b c
trued h
)h i
,i j*
CustomerAnswerInstanceAnswerId 2
=3 4
table5 :
.: ;
Column; A
<A B
longB F
>F G
(G H
typeH L
:L M
$strN V
,V W
nullableX `
:` a
trueb f
)f g
,g h(
CustomerAnswerInstanceFormId 0
=1 2
table3 8
.8 9
Column9 ?
<? @
long@ D
>D E
(E F
typeF J
:J K
$strL T
,T U
nullableV ^
:^ _
true` d
)d e
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% >
,> ?
x@ A
=>B D
newE H
{I J
xK L
.L M
event_idM U
,U V
xW X
.X Y
question_idY d
,d e
xf g
.g h
	answer_idh q
,q r
xs t
.t u
form_idu |
}} ~
)~ 
;	 Ä
table 
. 

ForeignKey $
($ %
name 
: 
$str	 †
,
† °
columns   
:    
x  ! "
=>  # %
new  & )
{  * +
x  , -
.  - .)
CustomerAnswerInstanceEventId  . K
,  K L
x  M N
.  N O,
 CustomerAnswerInstanceQuestionId  O o
,  o p
x  q r
.  r s+
CustomerAnswerInstanceAnswerId	  s ë
,
  ë í
x
  ì î
.
  î ï*
CustomerAnswerInstanceFormId
  ï ±
}
  ≤ ≥
,
  ≥ ¥
principalTable!! &
:!!& '
$str!!( 9
,!!9 :
principalColumns"" (
:""( )
new""* -
[""- .
]"". /
{""0 1
$str""2 <
,""< =
$str""> K
,""K L
$str""M X
,""X Y
$str""Z c
}""d e
)""e f
;""f g
}## 
)## 
;## 
migrationBuilder%% 
.%% 
CreateIndex%% (
(%%( )
name&& 
:&& 
$str	&& ò
,
&&ò ô
table'' 
:'' 
$str'' -
,''- .
columns(( 
:(( 
new(( 
[(( 
](( 
{((  
$str((! @
,((@ A
$str((B d
,((d e
$str	((f Ü
,
((Ü á
$str
((à ¶
}
((ß ®
)
((® ©
;
((© ™
})) 	
	protected,, 
override,, 
void,, 
Down,,  $
(,,$ %
MigrationBuilder,,% 5
migrationBuilder,,6 F
),,F G
{-- 	
migrationBuilder.. 
... 
	DropTable.. &
(..& '
name// 
:// 
$str// ,
)//, -
;//- .
}00 	
}11 
}22 ß
fD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230923173610_RemovingTextCutomerAnswerTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class *
RemovingTextCutomerAnswerTable 7
:8 9
	Migration: C
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str ,
), -
;- .
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str ,
,, -
columns 
: 
table 
=> !
new" %
{ 
event_id 
= 
table $
.$ %
Column% +
<+ ,
long, 0
>0 1
(1 2
type2 6
:6 7
$str8 @
,@ A
nullableB J
:J K
falseL Q
)Q R
,R S
question_id 
=  !
table" '
.' (
Column( .
<. /
long/ 3
>3 4
(4 5
type5 9
:9 :
$str; C
,C D
nullableE M
:M N
falseO T
)T U
,U V
	answer_id 
= 
table  %
.% &
Column& ,
<, -
long- 1
>1 2
(2 3
type3 7
:7 8
$str9 A
,A B
nullableC K
:K L
falseM R
)R S
,S T
form_id 
= 
table #
.# $
Column$ *
<* +
long+ /
>/ 0
(0 1
type1 5
:5 6
$str7 ?
,? @
nullableA I
:I J
falseK P
)P Q
,Q R
text 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
nullableG O
:O P
falseQ V
)V W
} 
, 
constraints 
: 
table "
=># %
{ 
table   
.   

PrimaryKey   $
(  $ %
$str  % >
,  > ?
x  @ A
=>  B D
new  E H
{  I J
x  K L
.  L M
event_id  M U
,  U V
x  W X
.  X Y
question_id  Y d
,  d e
x  f g
.  g h
	answer_id  h q
,  q r
x  s t
.  t u
form_id  u |
}  } ~
)  ~ 
;	   Ä
}!! 
)!! 
;!! 
}"" 	
}## 
}$$ Î
dD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230807164314_RemovingEventIdFromFormTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class (
RemovingEventIdFromFormTable 5
:6 7
	Migration8 A
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str  
,  !
table 
: 
$str 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	AddColumn &
<& '
long' +
>+ ,
(, -
name 
: 
$str  
,  !
table 
: 
$str 
, 
type 
: 
$str 
, 
nullable 
: 
false 
,  
defaultValue 
: 
$num  
)  !
;! "
} 	
} 
} Î+
pD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230807163147_RemovingColumnsInTextCustomerAnswerTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class 4
(RemovingColumnsInTextCustomerAnswerTable A
:B C
	MigrationD M
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
DropForeignKey +
(+ ,
name 
: 
$str	 ò
,
ò ô
table 
: 
$str -
)- .
;. /
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str	 ò
,
ò ô
table 
: 
$str -
)- .
;. /
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 6
,6 7
table 
: 
$str -
)- .
;. /
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 5
,5 6
table 
: 
$str -
)- .
;. /
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 4
,4 5
table 
: 
$str -
)- .
;. /
migrationBuilder!! 
.!! 

DropColumn!! '
(!!' (
name"" 
:"" 
$str"" 8
,""8 9
table## 
:## 
$str## -
)##- .
;##. /
}$$ 	
	protected'' 
override'' 
void'' 
Down''  $
(''$ %
MigrationBuilder''% 5
migrationBuilder''6 F
)''F G
{(( 	
migrationBuilder)) 
.)) 
	AddColumn)) &
<))& '
long))' +
>))+ ,
()), -
name** 
:** 
$str** 6
,**6 7
table++ 
:++ 
$str++ -
,++- .
type,, 
:,, 
$str,, 
,,, 
nullable-- 
:-- 
false-- 
,--  
defaultValue.. 
:.. 
$num..  
)..  !
;..! "
migrationBuilder00 
.00 
	AddColumn00 &
<00& '
long00' +
>00+ ,
(00, -
name11 
:11 
$str11 5
,115 6
table22 
:22 
$str22 -
,22- .
type33 
:33 
$str33 
,33 
nullable44 
:44 
false44 
,44  
defaultValue55 
:55 
$num55  
)55  !
;55! "
migrationBuilder77 
.77 
	AddColumn77 &
<77& '
long77' +
>77+ ,
(77, -
name88 
:88 
$str88 4
,884 5
table99 
:99 
$str99 -
,99- .
type:: 
::: 
$str:: 
,:: 
nullable;; 
:;; 
false;; 
,;;  
defaultValue<< 
:<< 
$num<<  
)<<  !
;<<! "
migrationBuilder>> 
.>> 
	AddColumn>> &
<>>& '
long>>' +
>>>+ ,
(>>, -
name?? 
:?? 
$str?? 8
,??8 9
table@@ 
:@@ 
$str@@ -
,@@- .
typeAA 
:AA 
$strAA 
,AA 
nullableBB 
:BB 
falseBB 
,BB  
defaultValueCC 
:CC 
$numCC  
)CC  !
;CC! "
migrationBuilderEE 
.EE 
CreateIndexEE (
(EE( )
nameFF 
:FF 
$str	FF ò
,
FFò ô
tableGG 
:GG 
$strGG -
,GG- .
columnsHH 
:HH 
newHH 
[HH 
]HH 
{HH  
$strHH! @
,HH@ A
$strHHB d
,HHd e
$str	HHf Ü
,
HHÜ á
$str
HHà ¶
}
HHß ®
)
HH® ©
;
HH© ™
migrationBuilderJJ 
.JJ 
AddForeignKeyJJ *
(JJ* +
nameKK 
:KK 
$str	KK ò
,
KKò ô
tableLL 
:LL 
$strLL -
,LL- .
columnsMM 
:MM 
newMM 
[MM 
]MM 
{MM  
$strMM! @
,MM@ A
$strMMB d
,MMd e
$str	MMf Ü
,
MMÜ á
$str
MMà ¶
}
MMß ®
,
MM® ©
principalTableNN 
:NN 
$strNN  1
,NN1 2
principalColumnsOO  
:OO  !
newOO" %
[OO% &
]OO& '
{OO( )
$strOO* 4
,OO4 5
$strOO6 C
,OOC D
$strOOE P
,OOP Q
$strOOR [
}OO\ ]
,OO] ^
onDeletePP 
:PP 
ReferentialActionPP +
.PP+ ,
CascadePP, 3
)PP3 4
;PP4 5
}QQ 	
}RR 
}SS ˜
lD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230803142116_ChangingTypeOfLocationInMeetingTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public		 

partial		 
class		 0
$ChangingTypeOfLocationInMeetingTable		 =
:		> ?
	Migration		@ I
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
AlterColumn (
<( )
string) /
>/ 0
(0 1
name 
: 
$str  
,  !
table 
: 
$str  
,  !
type 
: 
$str %
,% &
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
DateTime# +
)+ ,
,, -
oldType 
: 
$str $
)$ %
;% &
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
AlterColumn (
<( )
DateTime) 1
>1 2
(2 3
name 
: 
$str  
,  !
table 
: 
$str  
,  !
type 
: 
$str !
,! "
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
string# )
)) *
,* +
oldType   
:   
$str   (
)  ( )
;  ) *
}!! 	
}"" 
}## ©!
ZD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230803135305_addingMeetingTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public		 

partial		 
class		 
addingMeetingTable		 +
:		, -
	Migration		. 7
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
,  
columns 
: 
table 
=> !
new" %
{ 

meeting_id 
=  
table! &
.& '
Column' -
<- .
long. 2
>2 3
(3 4
type4 8
:8 9
$str: B
,B C
nullableD L
:L M
falseN S
)S T
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
subject 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
type3 7
:7 8
$str9 H
,H I
nullableJ R
:R S
falseT Y
)Y Z
,Z [

start_time 
=  
table! &
.& '
Column' -
<- .
DateTime. 6
>6 7
(7 8
type8 <
:< =
$str> I
,I J
nullableK S
:S T
falseU Z
)Z [
,[ \
end_time 
= 
table $
.$ %
Column% +
<+ ,
DateTime, 4
>4 5
(5 6
type6 :
:: ;
$str< G
,G H
nullableI Q
:Q R
falseS X
)X Y
,Y Z
location 
= 
table $
.$ %
Column% +
<+ ,
DateTime, 4
>4 5
(5 6
type6 :
:: ;
$str< G
,G H
nullableI Q
:Q R
falseS X
)X Y
,Y Z
pib 
= 
table 
.  
Column  &
<& '
long' +
>+ ,
(, -
type- 1
:1 2
$str3 ;
,; <
nullable= E
:E F
trueG K
)K L
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 1
,1 2
x3 4
=>5 7
x8 9
.9 :

meeting_id: D
)D E
;E F
table 
. 

ForeignKey $
($ %
name 
: 
$str 6
,6 7
column 
: 
x  !
=>" $
x% &
.& '
pib' *
,* +
principalTable   &
:  & '
$str  ( 1
,  1 2
principalColumn!! '
:!!' (
$str!!) .
)!!. /
;!!/ 0
}"" 
)"" 
;"" 
migrationBuilder$$ 
.$$ 
CreateIndex$$ (
($$( )
name%% 
:%% 
$str%% &
,%%& '
table&& 
:&& 
$str&&  
,&&  !
column'' 
:'' 
$str'' 
)'' 
;'' 
}(( 	
	protected++ 
override++ 
void++ 
Down++  $
(++$ %
MigrationBuilder++% 5
migrationBuilder++6 F
)++F G
{,, 	
migrationBuilder-- 
.-- 
	DropTable-- &
(--& '
name.. 
:.. 
$str.. 
)..  
;..  !
}// 	
}00 
}11 …
\D:\FON\master\Aplikacija\honey-beer-server\Migrations\20230803134024_droppingMeetingTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public		 

partial		 
class		  
droppingMeetingTable		 -
:		. /
	Migration		0 9
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str 
)  
;  !
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
,  
columns 
: 
table 
=> !
new" %
{ 
pib 
= 
table 
.  
Column  &
<& '
long' +
>+ ,
(, -
type- 1
:1 2
$str3 ;
,; <
nullable= E
:E F
falseG L
)L M
,M N

meeting_id 
=  
table! &
.& '
Column' -
<- .
long. 2
>2 3
(3 4
type4 8
:8 9
$str: B
,B C
nullableD L
:L M
falseN S
)S T
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
date_and_time !
=" #
table$ )
.) *
Column* 0
<0 1
DateTime1 9
>9 :
(: ;
type; ?
:? @
$strA L
,L M
nullableN V
:V W
falseX ]
)] ^
} 
, 
constraints 
: 
table "
=># %
{ 
table   
.   

PrimaryKey   $
(  $ %
$str  % 1
,  1 2
x  3 4
=>  5 7
new  8 ;
{  < =
x  > ?
.  ? @
pib  @ C
,  C D
x  E F
.  F G

meeting_id  G Q
}  R S
)  S T
;  T U
table!! 
.!! 

ForeignKey!! $
(!!$ %
name"" 
:"" 
$str"" 6
,""6 7
column## 
:## 
x##  !
=>##" $
x##% &
.##& '
pib##' *
,##* +
principalTable$$ &
:$$& '
$str$$( 1
,$$1 2
principalColumn%% '
:%%' (
$str%%) .
,%%. /
onDelete&&  
:&&  !
ReferentialAction&&" 3
.&&3 4
Cascade&&4 ;
)&&; <
;&&< =
}'' 
)'' 
;'' 
}(( 	
})) 
}** Î
bD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230803003157_CreatingEventLocationTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class &
CreatingEventLocationTable 3
:4 5
	Migration6 ?
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str &
,& '
columns 
: 
table 
=> !
new" %
{ 
event_id 
= 
table $
.$ %
Column% +
<+ ,
long, 0
>0 1
(1 2
type2 6
:6 7
$str8 @
,@ A
nullableB J
:J K
falseL Q
)Q R
,R S
event_location_id %
=& '
table( -
.- .
Column. 4
<4 5
long5 9
>9 :
(: ;
type; ?
:? @
$strA I
,I J
nullableK S
:S T
falseU Z
)Z [
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
location 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
falseU Z
)Z [
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 8
,8 9
x: ;
=>< >
new? B
{C D
xE F
.F G
event_idG O
,O P
xQ R
.R S
event_location_idS d
}e f
)f g
;g h
table 
. 

ForeignKey $
($ %
name 
: 
$str @
,@ A
column 
: 
x  !
=>" $
x% &
.& '
event_id' /
,/ 0
principalTable &
:& '
$str( /
,/ 0
principalColumn '
:' (
$str) 3
,3 4
onDelete  
:  !
ReferentialAction" 3
.3 4
Cascade4 ;
); <
;< =
} 
) 
; 
}   	
	protected## 
override## 
void## 
Down##  $
(##$ %
MigrationBuilder##% 5
migrationBuilder##6 F
)##F G
{$$ 	
migrationBuilder%% 
.%% 
	DropTable%% &
(%%& '
name&& 
:&& 
$str&& &
)&&& '
;&&' (
}'' 	
}(( 
})) Ü
bD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230803003005_RemovingEventLocationTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class &
RemovingEventLocationTable 3
:4 5
	Migration6 ?
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str &
)& '
;' (
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str &
,& '
columns 
: 
table 
=> !
new" %
{ 
event_id 
= 
table $
.$ %
Column% +
<+ ,
long, 0
>0 1
(1 2
type2 6
:6 7
$str8 @
,@ A
nullableB J
:J K
falseL Q
)Q R
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
location 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
falseU Z
)Z [
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 8
,8 9
x: ;
=>< >
x? @
.@ A
event_idA I
)I J
;J K
} 
) 
; 
}   	
}!! 
}"" É
cD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230802204305_FixingIndexInScannedByTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class '
FixingIndexInScannedByTable 4
:5 6
	Migration7 @
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str 0
,0 1
table 
: 
$str #
)# $
;$ %
migrationBuilder 
. 
CreateIndex (
(( )
name 
: 
$str 0
,0 1
table 
: 
$str #
,# $
column 
: 
$str $
)$ %
;% &
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str 0
,0 1
table 
: 
$str #
)# $
;$ %
migrationBuilder 
. 
CreateIndex (
(( )
name 
: 
$str 0
,0 1
table   
:   
$str   #
,  # $
column!! 
:!! 
$str!! $
,!!$ %
unique"" 
:"" 
true"" 
)"" 
;"" 
}## 	
}$$ 
}%% ∫
eD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230802203854_removingIndexInCreatedByTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class )
removingIndexInCreatedByTable 6
:7 8
	Migration9 B
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str 0
,0 1
table 
: 
$str #
)# $
;$ %
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str ;
,; <
table 
: 
$str #
)# $
;$ %
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str 0
,0 1
table 
: 
$str #
)# $
;$ %
migrationBuilder 
. 
CreateIndex (
(( )
name 
: 
$str 0
,0 1
table 
: 
$str #
,# $
column 
: 
$str $
,$ %
unique 
: 
true 
) 
; 
migrationBuilder 
. 
CreateIndex (
(( )
name   
:   
$str   0
,  0 1
table!! 
:!! 
$str!! #
,!!# $
column"" 
:"" 
$str"" $
,""$ %
unique## 
:## 
true## 
)## 
;## 
}$$ 	
	protected'' 
override'' 
void'' 
Down''  $
(''$ %
MigrationBuilder''% 5
migrationBuilder''6 F
)''F G
{(( 	
migrationBuilder)) 
.)) 
	DropIndex)) &
())& '
name** 
:** 
$str** 0
,**0 1
table++ 
:++ 
$str++ #
)++# $
;++$ %
migrationBuilder-- 
.-- 
	DropIndex-- &
(--& '
name.. 
:.. 
$str.. 0
,..0 1
table// 
:// 
$str// #
)//# $
;//$ %
migrationBuilder11 
.11 
CreateIndex11 (
(11( )
name22 
:22 
$str22 0
,220 1
table33 
:33 
$str33 #
,33# $
column44 
:44 
$str44 $
)44$ %
;44% &
migrationBuilder66 
.66 
CreateIndex66 (
(66( )
name77 
:77 
$str77 ;
,77; <
table88 
:88 
$str88 #
,88# $
columns99 
:99 
new99 
[99 
]99 
{99  
$str99! -
,99- .
$str99/ ;
}99< =
,99= >
unique:: 
::: 
true:: 
):: 
;:: 
migrationBuilder<< 
.<< 
CreateIndex<< (
(<<( )
name== 
:== 
$str== 0
,==0 1
table>> 
:>> 
$str>> #
,>># $
column?? 
:?? 
$str?? $
)??$ %
;??% &
}@@ 	
}AA 
}BB ÿ
tD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230802203317_ChangingCompositeKeyInScannedByCustomerTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class 8
,ChangingCompositeKeyInScannedByCustomerTable E
:F G
	MigrationH Q
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str 0
,0 1
table 
: 
$str #
)# $
;$ %
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str 0
,0 1
table 
: 
$str #
)# $
;$ %
migrationBuilder 
. 
CreateIndex (
(( )
name 
: 
$str 0
,0 1
table 
: 
$str #
,# $
column 
: 
$str $
)$ %
;% &
migrationBuilder 
. 
CreateIndex (
(( )
name 
: 
$str ;
,; <
table 
: 
$str #
,# $
columns 
: 
new 
[ 
] 
{  
$str! -
,- .
$str/ ;
}< =
,= >
unique 
: 
true 
) 
; 
migrationBuilder   
.   
CreateIndex   (
(  ( )
name!! 
:!! 
$str!! 0
,!!0 1
table"" 
:"" 
$str"" #
,""# $
column## 
:## 
$str## $
)##$ %
;##% &
}$$ 	
	protected'' 
override'' 
void'' 
Down''  $
(''$ %
MigrationBuilder''% 5
migrationBuilder''6 F
)''F G
{(( 	
migrationBuilder)) 
.)) 
	DropIndex)) &
())& '
name** 
:** 
$str** 0
,**0 1
table++ 
:++ 
$str++ #
)++# $
;++$ %
migrationBuilder-- 
.-- 
	DropIndex-- &
(--& '
name.. 
:.. 
$str.. ;
,..; <
table// 
:// 
$str// #
)//# $
;//$ %
migrationBuilder11 
.11 
	DropIndex11 &
(11& '
name22 
:22 
$str22 0
,220 1
table33 
:33 
$str33 #
)33# $
;33$ %
migrationBuilder55 
.55 
CreateIndex55 (
(55( )
name66 
:66 
$str66 0
,660 1
table77 
:77 
$str77 #
,77# $
column88 
:88 
$str88 $
,88$ %
unique99 
:99 
true99 
)99 
;99 
migrationBuilder;; 
.;; 
CreateIndex;; (
(;;( )
name<< 
:<< 
$str<< 0
,<<0 1
table== 
:== 
$str== #
,==# $
column>> 
:>> 
$str>> $
,>>$ %
unique?? 
:?? 
true?? 
)?? 
;?? 
}@@ 	
}AA 
}BB æ 
\D:\FON\master\Aplikacija\honey-beer-server\Migrations\20230730150650_AddingScannedByTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class  
AddingScannedByTable -
:. /
	Migration0 9
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str "
," #
columns 
: 
table 
=> !
new" %
{ 

qr_code_id 
=  
table! &
.& '
Column' -
<- .
long. 2
>2 3
(3 4
type4 8
:8 9
$str: B
,B C
nullableD L
:L M
falseN S
)S T
,T U

sutomer_id 
=  
table! &
.& '
Column' -
<- .
long. 2
>2 3
(3 4
type4 8
:8 9
$str: B
,B C
nullableD L
:L M
falseN S
)S T
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 4
,4 5
x6 7
=>8 :
new; >
{? @
xA B
.B C

qr_code_idC M
,M N
xO P
.P Q

sutomer_idQ [
}\ ]
)] ^
;^ _
table 
. 

ForeignKey $
($ %
name 
: 
$str A
,A B
column 
: 
x  !
=>" $
x% &
.& '

sutomer_id' 1
,1 2
principalTable &
:& '
$str( 2
,2 3
principalColumn '
:' (
$str) 6
,6 7
onDelete  
:  !
ReferentialAction" 3
.3 4
Cascade4 ;
); <
;< =
table 
. 

ForeignKey $
($ %
name 
: 
$str @
,@ A
column 
: 
x  !
=>" $
x% &
.& '

qr_code_id' 1
,1 2
principalTable   &
:  & '
$str  ( 1
,  1 2
principalColumn!! '
:!!' (
$str!!) 5
,!!5 6
onDelete""  
:""  !
ReferentialAction""" 3
.""3 4
Cascade""4 ;
)""; <
;""< =
}## 
)## 
;## 
migrationBuilder%% 
.%% 
CreateIndex%% (
(%%( )
name&& 
:&& 
$str&& 0
,&&0 1
table'' 
:'' 
$str'' #
,''# $
column(( 
:(( 
$str(( $
,(($ %
unique)) 
:)) 
true)) 
))) 
;)) 
migrationBuilder++ 
.++ 
CreateIndex++ (
(++( )
name,, 
:,, 
$str,, 0
,,,0 1
table-- 
:-- 
$str-- #
,--# $
column.. 
:.. 
$str.. $
,..$ %
unique// 
:// 
true// 
)// 
;// 
}00 	
	protected33 
override33 
void33 
Down33  $
(33$ %
MigrationBuilder33% 5
migrationBuilder336 F
)33F G
{44 	
migrationBuilder55 
.55 
	DropTable55 &
(55& '
name66 
:66 
$str66 "
)66" #
;66# $
}77 	
}88 
}99 ¨9
nD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230730144228_AddingScannedByTableAndQRCodeTypeTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class 2
&AddingScannedByTableAndQRCodeTypeTable ?
:@ A
	MigrationB K
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 
,  
table 
: 
$str  
)  !
;! "
migrationBuilder 
. 
AlterColumn (
<( )
string) /
>/ 0
(0 1
name 
: 
$str 
, 
table 
: 
$str  
,  !
type 
: 
$str %
,% &
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
string# )
)) *
,* +
oldType 
: 
$str (
)( )
;) *
migrationBuilder 
. 
	AddColumn &
<& '
long' +
>+ ,
(, -
name 
: 
$str '
,' (
table 
: 
$str  
,  !
type 
: 
$str 
, 
nullable 
: 
false 
,  
defaultValue 
: 
$num  
)  !
;! "
migrationBuilder   
.   
CreateTable   (
(  ( )
name!! 
:!! 
$str!! $
,!!$ %
columns"" 
:"" 
table"" 
=>"" !
new""" %
{## 
qr_code_type_id$$ #
=$$$ %
table$$& +
.$$+ ,
Column$$, 2
<$$2 3
long$$3 7
>$$7 8
($$8 9
type$$9 =
:$$= >
$str$$? G
,$$G H
nullable$$I Q
:$$Q R
false$$S X
)$$X Y
.%% 

Annotation%% #
(%%# $
$str%%$ 8
,%%8 9
$str%%: @
)%%@ A
,%%A B
qr_code_type_name&& %
=&&& '
table&&( -
.&&- .
Column&&. 4
<&&4 5
string&&5 ;
>&&; <
(&&< =
type&&= A
:&&A B
$str&&C R
,&&R S
nullable&&T \
:&&\ ]
false&&^ c
)&&c d
}'' 
,'' 
constraints(( 
:(( 
table(( "
=>((# %
{)) 
table** 
.** 

PrimaryKey** $
(**$ %
$str**% 6
,**6 7
x**8 9
=>**: <
x**= >
.**> ?
qr_code_type_id**? N
)**N O
;**O P
}++ 
)++ 
;++ 
migrationBuilder-- 
.-- 
CreateIndex-- (
(--( )
name.. 
:.. 
$str.. '
,..' (
table// 
:// 
$str//  
,//  !
column00 
:00 
$str00 
,00 
unique11 
:11 
true11 
)11 
;11 
migrationBuilder33 
.33 
CreateIndex33 (
(33( )
name44 
:44 
$str44 2
,442 3
table55 
:55 
$str55  
,55  !
column66 
:66 
$str66 )
)66) *
;66* +
migrationBuilder88 
.88 
CreateIndex88 (
(88( )
name99 
:99 
$str99 9
,999 :
table:: 
::: 
$str:: %
,::% &
column;; 
:;; 
$str;; +
,;;+ ,
unique<< 
:<< 
true<< 
)<< 
;<< 
migrationBuilder>> 
.>> 
AddForeignKey>> *
(>>* +
name?? 
:?? 
$str?? ?
,??? @
table@@ 
:@@ 
$str@@  
,@@  !
columnAA 
:AA 
$strAA )
,AA) *
principalTableBB 
:BB 
$strBB  .
,BB. /
principalColumnCC 
:CC  
$strCC! 2
,CC2 3
onDeleteDD 
:DD 
ReferentialActionDD +
.DD+ ,
CascadeDD, 3
)DD3 4
;DD4 5
}EE 	
	protectedHH 
overrideHH 
voidHH 
DownHH  $
(HH$ %
MigrationBuilderHH% 5
migrationBuilderHH6 F
)HHF G
{II 	
migrationBuilderJJ 
.JJ 
DropForeignKeyJJ +
(JJ+ ,
nameKK 
:KK 
$strKK ?
,KK? @
tableLL 
:LL 
$strLL  
)LL  !
;LL! "
migrationBuilderNN 
.NN 
	DropTableNN &
(NN& '
nameOO 
:OO 
$strOO $
)OO$ %
;OO% &
migrationBuilderQQ 
.QQ 
	DropIndexQQ &
(QQ& '
nameRR 
:RR 
$strRR '
,RR' (
tableSS 
:SS 
$strSS  
)SS  !
;SS! "
migrationBuilderUU 
.UU 
	DropIndexUU &
(UU& '
nameVV 
:VV 
$strVV 2
,VV2 3
tableWW 
:WW 
$strWW  
)WW  !
;WW! "
migrationBuilderYY 
.YY 

DropColumnYY '
(YY' (
nameZZ 
:ZZ 
$strZZ '
,ZZ' (
table[[ 
:[[ 
$str[[  
)[[  !
;[[! "
migrationBuilder]] 
.]] 
AlterColumn]] (
<]]( )
string]]) /
>]]/ 0
(]]0 1
name^^ 
:^^ 
$str^^ 
,^^ 
table__ 
:__ 
$str__  
,__  !
type`` 
:`` 
$str`` %
,``% &
nullableaa 
:aa 
falseaa 
,aa  

oldClrTypebb 
:bb 
typeofbb "
(bb" #
stringbb# )
)bb) *
,bb* +
oldTypecc 
:cc 
$strcc (
)cc( )
;cc) *
migrationBuilderee 
.ee 
	AddColumnee &
<ee& '
boolee' +
>ee+ ,
(ee, -
nameff 
:ff 
$strff 
,ff  
tablegg 
:gg 
$strgg  
,gg  !
typehh 
:hh 
$strhh 
,hh 
nullableii 
:ii 
falseii 
,ii  
defaultValuejj 
:jj 
falsejj #
)jj# $
;jj$ %
}kk 	
}ll 
}mm ≥
]D:\FON\master\Aplikacija\honey-beer-server\Migrations\20230730011203_ChangingLocationTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class !
ChangingLocationTable .
:/ 0
	Migration1 :
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str 
, 
table 
: 
$str !
,! "
type 
: 
$str %
,% &
nullable 
: 
false 
,  
defaultValue 
: 
$str  
)  !
;! "
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str 
, 
table 
: 
$str !
,! "
type 
: 
$str %
,% &
nullable 
: 
false 
,  
defaultValue 
: 
$str  
)  !
;! "
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name   
:   
$str   
,   
table!! 
:!! 
$str!! !
)!!! "
;!!" #
migrationBuilder## 
.## 

DropColumn## '
(##' (
name$$ 
:$$ 
$str$$ 
,$$ 
table%% 
:%% 
$str%% !
)%%! "
;%%" #
}&& 	
}'' 
}(( ·!
UD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230729231945_CreatingTable.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public 

partial 
class 
CreatingTable &
:' (
	Migration) 2
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str +
,+ ,
columns 
: 
table 
=> !
new" %
{ 
pib 
= 
table 
.  
Column  &
<& '
long' +
>+ ,
(, -
type- 1
:1 2
$str3 ;
,; <
nullable= E
:E F
falseG L
)L M
,M N 
shopping_location_id (
=) *
table+ 0
.0 1
Column1 7
<7 8
long8 <
>< =
(= >
type> B
:B C
$strD L
,L M
nullableN V
:V W
falseX ]
)] ^
,^ _

product_id 
=  
table! &
.& '
Column' -
<- .
long. 2
>2 3
(3 4
type4 8
:8 9
$str: B
,B C
nullableD L
:L M
falseN S
)S T
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% =
,= >
x? @
=>A C
newD G
{H I
xJ K
.K L
pibL O
,O P
xQ R
.R S 
shopping_location_idS g
,g h
xi j
.j k

product_idk u
}v w
)w x
;x y
table 
. 

ForeignKey $
($ %
name 
: 
$str I
,I J
column 
: 
x  !
=>" $
x% &
.& '

product_id' 1
,1 2
principalTable &
:& '
$str( 1
,1 2
principalColumn '
:' (
$str) 5
,5 6
onDelete  
:  !
ReferentialAction" 3
.3 4
Cascade4 ;
); <
;< =
table 
. 

ForeignKey $
($ %
name 
: 
$str a
,a b
columns   
:    
x  ! "
=>  # %
new  & )
{  * +
x  , -
.  - .
pib  . 1
,  1 2
x  3 4
.  4 5 
shopping_location_id  5 I
}  J K
,  K L
principalTable!! &
:!!& '
$str!!( ;
,!!; <
principalColumns"" (
:""( )
new""* -
[""- .
]"". /
{""0 1
$str""2 7
,""7 8
$str""9 O
}""P Q
,""Q R
onDelete##  
:##  !
ReferentialAction##" 3
.##3 4
Cascade##4 ;
)##; <
;##< =
}$$ 
)$$ 
;$$ 
migrationBuilder&& 
.&& 
CreateIndex&& (
(&&( )
name'' 
:'' 
$str'' 9
,''9 :
table(( 
:(( 
$str(( ,
,((, -
column)) 
:)) 
$str)) $
)))$ %
;))% &
}** 	
	protected-- 
override-- 
void-- 
Down--  $
(--$ %
MigrationBuilder--% 5
migrationBuilder--6 F
)--F G
{.. 	
migrationBuilder// 
.// 
	DropTable// &
(//& '
name00 
:00 
$str00 +
)00+ ,
;00, -
}11 	
}22 
}33 “¡
WD:\FON\master\Aplikacija\honey-beer-server\Migrations\20230729132310_CreatingClasses.cs
	namespace 	!
honey_beer_server_app
 
.  

Migrations  *
{ 
public		 

partial		 
class		 
CreatingClasses		 (
:		) *
	Migration		+ 4
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
,  
columns 
: 
table 
=> !
new" %
{ 
pib 
= 
table 
.  
Column  &
<& '
long' +
>+ ,
(, -
type- 1
:1 2
$str3 ;
,; <
nullable= E
:E F
falseG L
)L M
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
nullableG O
:O P
falseQ V
)V W
,W X
email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 F
,F G
nullableH P
:P Q
falseR W
)W X
,X Y
password 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
falseU Z
)Z [
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 1
,1 2
x3 4
=>5 7
x8 9
.9 :
pib: =
)= >
;> ?
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str &
,& '
columns 
: 
table 
=> !
new" %
{   
event_id!! 
=!! 
table!! $
.!!$ %
Column!!% +
<!!+ ,
long!!, 0
>!!0 1
(!!1 2
type!!2 6
:!!6 7
$str!!8 @
,!!@ A
nullable!!B J
:!!J K
false!!L Q
)!!Q R
."" 

Annotation"" #
(""# $
$str""$ 8
,""8 9
$str"": @
)""@ A
,""A B
location## 
=## 
table## $
.##$ %
Column##% +
<##+ ,
string##, 2
>##2 3
(##3 4
type##4 8
:##8 9
$str##: I
,##I J
nullable##K S
:##S T
false##U Z
)##Z [
}$$ 
,$$ 
constraints%% 
:%% 
table%% "
=>%%# %
{&& 
table'' 
.'' 

PrimaryKey'' $
(''$ %
$str''% 8
,''8 9
x'': ;
=>''< >
x''? @
.''@ A
event_id''A I
)''I J
;''J K
}(( 
)(( 
;(( 
migrationBuilder** 
.** 
CreateTable** (
(**( )
name++ 
:++ 
$str++ "
,++" #
columns,, 
:,, 
table,, 
=>,, !
new,," %
{-- 
event_type_id.. !
=.." #
table..$ )
...) *
Column..* 0
<..0 1
long..1 5
>..5 6
(..6 7
type..7 ;
:..; <
$str..= E
,..E F
nullable..G O
:..O P
false..Q V
)..V W
.// 

Annotation// #
(//# $
$str//$ 8
,//8 9
$str//: @
)//@ A
,//A B
name00 
=00 
table00  
.00  !
Column00! '
<00' (
string00( .
>00. /
(00/ 0
type000 4
:004 5
$str006 E
,00E F
nullable00G O
:00O P
false00Q V
)00V W
}11 
,11 
constraints22 
:22 
table22 "
=>22# %
{33 
table44 
.44 

PrimaryKey44 $
(44$ %
$str44% 4
,444 5
x446 7
=>448 :
x44; <
.44< =
event_type_id44= J
)44J K
;44K L
}55 
)55 
;55 
migrationBuilder77 
.77 
CreateTable77 (
(77( )
name88 
:88 
$str88  
,88  !
columns99 
:99 
table99 
=>99 !
new99" %
{:: 
location_id;; 
=;;  !
table;;" '
.;;' (
Column;;( .
<;;. /
long;;/ 3
>;;3 4
(;;4 5
type;;5 9
:;;9 :
$str;;; C
,;;C D
nullable;;E M
:;;M N
false;;O T
);;T U
.<< 

Annotation<< #
(<<# $
$str<<$ 8
,<<8 9
$str<<: @
)<<@ A
,<<A B
location_name== !
===" #
table==$ )
.==) *
Column==* 0
<==0 1
string==1 7
>==7 8
(==8 9
type==9 =
:=== >
$str==? N
,==N O
nullable==P X
:==X Y
false==Z _
)==_ `
}>> 
,>> 
constraints?? 
:?? 
table?? "
=>??# %
{@@ 
tableAA 
.AA 

PrimaryKeyAA $
(AA$ %
$strAA% 2
,AA2 3
xAA4 5
=>AA6 8
xAA9 :
.AA: ;
location_idAA; F
)AAF G
;AAG H
}BB 
)BB 
;BB 
migrationBuilderDD 
.DD 
CreateTableDD (
(DD( )
nameEE 
:EE 
$strEE &
,EE& '
columnsFF 
:FF 
tableFF 
=>FF !
newFF" %
{GG 
emailHH 
=HH 
tableHH !
.HH! "
ColumnHH" (
<HH( )
stringHH) /
>HH/ 0
(HH0 1
typeHH1 5
:HH5 6
$strHH7 F
,HHF G
nullableHHH P
:HHP Q
falseHHR W
)HHW X
}II 
,II 
constraintsJJ 
:JJ 
tableJJ "
=>JJ# %
{KK 
tableLL 
.LL 

PrimaryKeyLL $
(LL$ %
$strLL% 8
,LL8 9
xLL: ;
=>LL< >
xLL? @
.LL@ A
emailLLA F
)LLF G
;LLG H
}MM 
)MM 
;MM 
migrationBuilderOO 
.OO 
CreateTableOO (
(OO( )
namePP 
:PP 
$strPP 
,PP  
columnsQQ 
:QQ 
tableQQ 
=>QQ !
newQQ" %
{RR 

product_idSS 
=SS  
tableSS! &
.SS& '
ColumnSS' -
<SS- .
longSS. 2
>SS2 3
(SS3 4
typeSS4 8
:SS8 9
$strSS: B
,SSB C
nullableSSD L
:SSL M
falseSSN S
)SSS T
.TT 

AnnotationTT #
(TT# $
$strTT$ 8
,TT8 9
$strTT: @
)TT@ A
,TTA B
nameUU 
=UU 
tableUU  
.UU  !
ColumnUU! '
<UU' (
stringUU( .
>UU. /
(UU/ 0
typeUU0 4
:UU4 5
$strUU6 E
,UUE F
nullableUUG O
:UUO P
falseUUQ V
)UUV W
,UUW X
descriptionVV 
=VV  !
tableVV" '
.VV' (
ColumnVV( .
<VV. /
stringVV/ 5
>VV5 6
(VV6 7
typeVV7 ;
:VV; <
$strVV= L
,VVL M
nullableVVN V
:VVV W
falseVVX ]
)VV] ^
}WW 
,WW 
constraintsXX 
:XX 
tableXX "
=>XX# %
{YY 
tableZZ 
.ZZ 

PrimaryKeyZZ $
(ZZ$ %
$strZZ% 1
,ZZ1 2
xZZ3 4
=>ZZ5 7
xZZ8 9
.ZZ9 :

product_idZZ: D
)ZZD E
;ZZE F
}[[ 
)[[ 
;[[ 
migrationBuilder]] 
.]] 
CreateTable]] (
(]]( )
name^^ 
:^^ 
$str^^ 
,^^  
columns__ 
:__ 
table__ 
=>__ !
new__" %
{`` 

qr_code_idaa 
=aa  
tableaa! &
.aa& '
Columnaa' -
<aa- .
longaa. 2
>aa2 3
(aa3 4
typeaa4 8
:aa8 9
$straa: B
,aaB C
nullableaaD L
:aaL M
falseaaN S
)aaS T
.bb 

Annotationbb #
(bb# $
$strbb$ 8
,bb8 9
$strbb: @
)bb@ A
,bbA B
codecc 
=cc 
tablecc  
.cc  !
Columncc! '
<cc' (
stringcc( .
>cc. /
(cc/ 0
typecc0 4
:cc4 5
$strcc6 E
,ccE F
nullableccG O
:ccO P
falseccQ V
)ccV W
,ccW X
scanneddd 
=dd 
tabledd #
.dd# $
Columndd$ *
<dd* +
booldd+ /
>dd/ 0
(dd0 1
typedd1 5
:dd5 6
$strdd7 <
,dd< =
nullabledd> F
:ddF G
falseddH M
)ddM N
}ee 
,ee 
constraintsff 
:ff 
tableff "
=>ff# %
{gg 
tablehh 
.hh 

PrimaryKeyhh $
(hh$ %
$strhh% 1
,hh1 2
xhh3 4
=>hh5 7
xhh8 9
.hh9 :

qr_code_idhh: D
)hhD E
;hhE F
}ii 
)ii 
;ii 
migrationBuilderkk 
.kk 
CreateTablekk (
(kk( )
namell 
:ll 
$strll %
,ll% &
columnsmm 
:mm 
tablemm 
=>mm !
newmm" %
{nn 
question_type_idoo $
=oo% &
tableoo' ,
.oo, -
Columnoo- 3
<oo3 4
longoo4 8
>oo8 9
(oo9 :
typeoo: >
:oo> ?
$stroo@ H
,ooH I
nullableooJ R
:ooR S
falseooT Y
)ooY Z
.pp 

Annotationpp #
(pp# $
$strpp$ 8
,pp8 9
$strpp: @
)pp@ A
,ppA B
nameqq 
=qq 
tableqq  
.qq  !
Columnqq! '
<qq' (
stringqq( .
>qq. /
(qq/ 0
typeqq0 4
:qq4 5
$strqq6 E
,qqE F
nullableqqG O
:qqO P
falseqqQ V
)qqV W
}rr 
,rr 
constraintsss 
:ss 
tabless "
=>ss# %
{tt 
tableuu 
.uu 

PrimaryKeyuu $
(uu$ %
$struu% 7
,uu7 8
xuu9 :
=>uu; =
xuu> ?
.uu? @
question_type_iduu@ P
)uuP Q
;uuQ R
}vv 
)vv 
;vv 
migrationBuilderxx 
.xx 
CreateTablexx (
(xx( )
nameyy 
:yy 
$stryy 
,yy  
columnszz 
:zz 
tablezz 
=>zz !
newzz" %
{{{ 
pib|| 
=|| 
table|| 
.||  
Column||  &
<||& '
long||' +
>||+ ,
(||, -
type||- 1
:||1 2
$str||3 ;
,||; <
nullable||= E
:||E F
false||G L
)||L M
,||M N

meeting_id}} 
=}}  
table}}! &
.}}& '
Column}}' -
<}}- .
long}}. 2
>}}2 3
(}}3 4
type}}4 8
:}}8 9
$str}}: B
,}}B C
nullable}}D L
:}}L M
false}}N S
)}}S T
.~~ 

Annotation~~ #
(~~# $
$str~~$ 8
,~~8 9
$str~~: @
)~~@ A
,~~A B
date_and_time !
=" #
table$ )
.) *
Column* 0
<0 1
DateTime1 9
>9 :
(: ;
type; ?
:? @
$strA L
,L M
nullableN V
:V W
falseX ]
)] ^
}
ÄÄ 
,
ÄÄ 
constraints
ÅÅ 
:
ÅÅ 
table
ÅÅ "
=>
ÅÅ# %
{
ÇÇ 
table
ÉÉ 
.
ÉÉ 

PrimaryKey
ÉÉ $
(
ÉÉ$ %
$str
ÉÉ% 1
,
ÉÉ1 2
x
ÉÉ3 4
=>
ÉÉ5 7
new
ÉÉ8 ;
{
ÉÉ< =
x
ÉÉ> ?
.
ÉÉ? @
pib
ÉÉ@ C
,
ÉÉC D
x
ÉÉE F
.
ÉÉF G

meeting_id
ÉÉG Q
}
ÉÉR S
)
ÉÉS T
;
ÉÉT U
table
ÑÑ 
.
ÑÑ 

ForeignKey
ÑÑ $
(
ÑÑ$ %
name
ÖÖ 
:
ÖÖ 
$str
ÖÖ 6
,
ÖÖ6 7
column
ÜÜ 
:
ÜÜ 
x
ÜÜ  !
=>
ÜÜ" $
x
ÜÜ% &
.
ÜÜ& '
pib
ÜÜ' *
,
ÜÜ* +
principalTable
áá &
:
áá& '
$str
áá( 1
,
áá1 2
principalColumn
àà '
:
àà' (
$str
àà) .
,
àà. /
onDelete
ââ  
:
ââ  !
ReferentialAction
ââ" 3
.
ââ3 4
Cascade
ââ4 ;
)
ââ; <
;
ââ< =
}
ää 
)
ää 
;
ää 
migrationBuilder
åå 
.
åå 
CreateTable
åå (
(
åå( )
name
çç 
:
çç 
$str
çç *
,
çç* +
columns
éé 
:
éé 
table
éé 
=>
éé !
new
éé" %
{
èè 
pib
êê 
=
êê 
table
êê 
.
êê  
Column
êê  &
<
êê& '
long
êê' +
>
êê+ ,
(
êê, -
type
êê- 1
:
êê1 2
$str
êê3 ;
,
êê; <
nullable
êê= E
:
êêE F
false
êêG L
)
êêL M
,
êêM N#
sent_company_email_id
ëë )
=
ëë* +
table
ëë, 1
.
ëë1 2
Column
ëë2 8
<
ëë8 9
long
ëë9 =
>
ëë= >
(
ëë> ?
type
ëë? C
:
ëëC D
$str
ëëE M
,
ëëM N
nullable
ëëO W
:
ëëW X
false
ëëY ^
)
ëë^ _
.
íí 

Annotation
íí #
(
íí# $
$str
íí$ 8
,
íí8 9
$str
íí: @
)
íí@ A
,
ííA B
date_and_time
ìì !
=
ìì" #
table
ìì$ )
.
ìì) *
Column
ìì* 0
<
ìì0 1
DateTime
ìì1 9
>
ìì9 :
(
ìì: ;
type
ìì; ?
:
ìì? @
$str
ììA L
,
ììL M
nullable
ììN V
:
ììV W
false
ììX ]
)
ìì] ^
}
îî 
,
îî 
constraints
ïï 
:
ïï 
table
ïï "
=>
ïï# %
{
ññ 
table
óó 
.
óó 

PrimaryKey
óó $
(
óó$ %
$str
óó% <
,
óó< =
x
óó> ?
=>
óó@ B
new
óóC F
{
óóG H
x
óóI J
.
óóJ K
pib
óóK N
,
óóN O
x
óóP Q
.
óóQ R#
sent_company_email_id
óóR g
}
óóh i
)
óói j
;
óój k
table
òò 
.
òò 

ForeignKey
òò $
(
òò$ %
name
ôô 
:
ôô 
$str
ôô A
,
ôôA B
column
öö 
:
öö 
x
öö  !
=>
öö" $
x
öö% &
.
öö& '
pib
öö' *
,
öö* +
principalTable
õõ &
:
õõ& '
$str
õõ( 1
,
õõ1 2
principalColumn
úú '
:
úú' (
$str
úú) .
,
úú. /
onDelete
ùù  
:
ùù  !
ReferentialAction
ùù" 3
.
ùù3 4
Cascade
ùù4 ;
)
ùù; <
;
ùù< =
}
ûû 
)
ûû 
;
ûû 
migrationBuilder
†† 
.
†† 
CreateTable
†† (
(
††( )
name
°° 
:
°° 
$str
°° )
,
°°) *
columns
¢¢ 
:
¢¢ 
table
¢¢ 
=>
¢¢ !
new
¢¢" %
{
££ 
pib
§§ 
=
§§ 
table
§§ 
.
§§  
Column
§§  &
<
§§& '
long
§§' +
>
§§+ ,
(
§§, -
type
§§- 1
:
§§1 2
$str
§§3 ;
,
§§; <
nullable
§§= E
:
§§E F
false
§§G L
)
§§L M
,
§§M N"
shopping_location_id
•• (
=
••) *
table
••+ 0
.
••0 1
Column
••1 7
<
••7 8
long
••8 <
>
••< =
(
••= >
type
••> B
:
••B C
$str
••D L
,
••L M
nullable
••N V
:
••V W
false
••X ]
)
••] ^
.
¶¶ 

Annotation
¶¶ #
(
¶¶# $
$str
¶¶$ 8
,
¶¶8 9
$str
¶¶: @
)
¶¶@ A
,
¶¶A B
location
ßß 
=
ßß 
table
ßß $
.
ßß$ %
Column
ßß% +
<
ßß+ ,
string
ßß, 2
>
ßß2 3
(
ßß3 4
type
ßß4 8
:
ßß8 9
$str
ßß: I
,
ßßI J
nullable
ßßK S
:
ßßS T
false
ßßU Z
)
ßßZ [
}
®® 
,
®® 
constraints
©© 
:
©© 
table
©© "
=>
©©# %
{
™™ 
table
´´ 
.
´´ 

PrimaryKey
´´ $
(
´´$ %
$str
´´% ;
,
´´; <
x
´´= >
=>
´´? A
new
´´B E
{
´´F G
x
´´H I
.
´´I J
pib
´´J M
,
´´M N
x
´´O P
.
´´P Q"
shopping_location_id
´´Q e
}
´´f g
)
´´g h
;
´´h i
table
¨¨ 
.
¨¨ 

ForeignKey
¨¨ $
(
¨¨$ %
name
≠≠ 
:
≠≠ 
$str
≠≠ @
,
≠≠@ A
column
ÆÆ 
:
ÆÆ 
x
ÆÆ  !
=>
ÆÆ" $
x
ÆÆ% &
.
ÆÆ& '
pib
ÆÆ' *
,
ÆÆ* +
principalTable
ØØ &
:
ØØ& '
$str
ØØ( 1
,
ØØ1 2
principalColumn
∞∞ '
:
∞∞' (
$str
∞∞) .
,
∞∞. /
onDelete
±±  
:
±±  !
ReferentialAction
±±" 3
.
±±3 4
Cascade
±±4 ;
)
±±; <
;
±±< =
}
≤≤ 
)
≤≤ 
;
≤≤ 
migrationBuilder
¥¥ 
.
¥¥ 
CreateTable
¥¥ (
(
¥¥( )
name
µµ 
:
µµ 
$str
µµ 
,
µµ 
columns
∂∂ 
:
∂∂ 
table
∂∂ 
=>
∂∂ !
new
∂∂" %
{
∑∑ 
event_id
∏∏ 
=
∏∏ 
table
∏∏ $
.
∏∏$ %
Column
∏∏% +
<
∏∏+ ,
long
∏∏, 0
>
∏∏0 1
(
∏∏1 2
type
∏∏2 6
:
∏∏6 7
$str
∏∏8 @
,
∏∏@ A
nullable
∏∏B J
:
∏∏J K
false
∏∏L Q
)
∏∏Q R
.
ππ 

Annotation
ππ #
(
ππ# $
$str
ππ$ 8
,
ππ8 9
$str
ππ: @
)
ππ@ A
,
ππA B
title
∫∫ 
=
∫∫ 
table
∫∫ !
.
∫∫! "
Column
∫∫" (
<
∫∫( )
string
∫∫) /
>
∫∫/ 0
(
∫∫0 1
type
∫∫1 5
:
∫∫5 6
$str
∫∫7 F
,
∫∫F G
nullable
∫∫H P
:
∫∫P Q
false
∫∫R W
)
∫∫W X
,
∫∫X Y
description
ªª 
=
ªª  !
table
ªª" '
.
ªª' (
Column
ªª( .
<
ªª. /
string
ªª/ 5
>
ªª5 6
(
ªª6 7
type
ªª7 ;
:
ªª; <
$str
ªª= L
,
ªªL M
nullable
ªªN V
:
ªªV W
false
ªªX ]
)
ªª] ^
,
ªª^ _
creation_date
ºº !
=
ºº" #
table
ºº$ )
.
ºº) *
Column
ºº* 0
<
ºº0 1
DateTime
ºº1 9
>
ºº9 :
(
ºº: ;
type
ºº; ?
:
ºº? @
$str
ººA L
,
ººL M
nullable
ººN V
:
ººV W
false
ººX ]
)
ºº] ^
,
ºº^ _

begin_date
ΩΩ 
=
ΩΩ  
table
ΩΩ! &
.
ΩΩ& '
Column
ΩΩ' -
<
ΩΩ- .
DateTime
ΩΩ. 6
>
ΩΩ6 7
(
ΩΩ7 8
type
ΩΩ8 <
:
ΩΩ< =
$str
ΩΩ> I
,
ΩΩI J
nullable
ΩΩK S
:
ΩΩS T
false
ΩΩU Z
)
ΩΩZ [
,
ΩΩ[ \
end_date
ææ 
=
ææ 
table
ææ $
.
ææ$ %
Column
ææ% +
<
ææ+ ,
DateTime
ææ, 4
>
ææ4 5
(
ææ5 6
type
ææ6 :
:
ææ: ;
$str
ææ< G
,
ææG H
nullable
ææI Q
:
ææQ R
false
ææS X
)
ææX Y
,
ææY Z
event_type_id
øø !
=
øø" #
table
øø$ )
.
øø) *
Column
øø* 0
<
øø0 1
long
øø1 5
>
øø5 6
(
øø6 7
type
øø7 ;
:
øø; <
$str
øø= E
,
øøE F
nullable
øøG O
:
øøO P
false
øøQ V
)
øøV W
}
¿¿ 
,
¿¿ 
constraints
¡¡ 
:
¡¡ 
table
¡¡ "
=>
¡¡# %
{
¬¬ 
table
√√ 
.
√√ 

PrimaryKey
√√ $
(
√√$ %
$str
√√% /
,
√√/ 0
x
√√1 2
=>
√√3 5
x
√√6 7
.
√√7 8
event_id
√√8 @
)
√√@ A
;
√√A B
table
ƒƒ 
.
ƒƒ 

ForeignKey
ƒƒ $
(
ƒƒ$ %
name
≈≈ 
:
≈≈ 
$str
≈≈ A
,
≈≈A B
column
∆∆ 
:
∆∆ 
x
∆∆  !
=>
∆∆" $
x
∆∆% &
.
∆∆& '
event_type_id
∆∆' 4
,
∆∆4 5
principalTable
«« &
:
««& '
$str
««( 4
,
««4 5
principalColumn
»» '
:
»»' (
$str
»») 8
,
»»8 9
onDelete
……  
:
……  !
ReferentialAction
……" 3
.
……3 4
Cascade
……4 ;
)
……; <
;
……< =
}
   
)
   
;
   
migrationBuilder
ÃÃ 
.
ÃÃ 
CreateTable
ÃÃ (
(
ÃÃ( )
name
ÕÕ 
:
ÕÕ 
$str
ÕÕ  
,
ÕÕ  !
columns
ŒŒ 
:
ŒŒ 
table
ŒŒ 
=>
ŒŒ !
new
ŒŒ" %
{
œœ 
customer_id
–– 
=
––  !
table
––" '
.
––' (
Column
––( .
<
––. /
long
––/ 3
>
––3 4
(
––4 5
type
––5 9
:
––9 :
$str
––; C
,
––C D
nullable
––E M
:
––M N
false
––O T
)
––T U
.
—— 

Annotation
—— #
(
——# $
$str
——$ 8
,
——8 9
$str
——: @
)
——@ A
,
——A B
username
““ 
=
““ 
table
““ $
.
““$ %
Column
““% +
<
““+ ,
string
““, 2
>
““2 3
(
““3 4
type
““4 8
:
““8 9
$str
““: I
,
““I J
nullable
““K S
:
““S T
false
““U Z
)
““Z [
,
““[ \
password
”” 
=
”” 
table
”” $
.
””$ %
Column
””% +
<
””+ ,
string
””, 2
>
””2 3
(
””3 4
type
””4 8
:
””8 9
$str
””: I
,
””I J
nullable
””K S
:
””S T
false
””U Z
)
””Z [
,
””[ \
email
‘‘ 
=
‘‘ 
table
‘‘ !
.
‘‘! "
Column
‘‘" (
<
‘‘( )
string
‘‘) /
>
‘‘/ 0
(
‘‘0 1
type
‘‘1 5
:
‘‘5 6
$str
‘‘7 F
,
‘‘F G
nullable
‘‘H P
:
‘‘P Q
false
‘‘R W
)
‘‘W X
}
’’ 
,
’’ 
constraints
÷÷ 
:
÷÷ 
table
÷÷ "
=>
÷÷# %
{
◊◊ 
table
ÿÿ 
.
ÿÿ 

PrimaryKey
ÿÿ $
(
ÿÿ$ %
$str
ÿÿ% 2
,
ÿÿ2 3
x
ÿÿ4 5
=>
ÿÿ6 8
x
ÿÿ9 :
.
ÿÿ: ;
customer_id
ÿÿ; F
)
ÿÿF G
;
ÿÿG H
table
ŸŸ 
.
ŸŸ 

ForeignKey
ŸŸ $
(
ŸŸ$ %
name
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ @
,
⁄⁄@ A
column
€€ 
:
€€ 
x
€€  !
=>
€€" $
x
€€% &
.
€€& '
email
€€' ,
,
€€, -
principalTable
‹‹ &
:
‹‹& '
$str
‹‹( 8
,
‹‹8 9
principalColumn
›› '
:
››' (
$str
››) 0
,
››0 1
onDelete
ﬁﬁ  
:
ﬁﬁ  !
ReferentialAction
ﬁﬁ" 3
.
ﬁﬁ3 4
Cascade
ﬁﬁ4 ;
)
ﬁﬁ; <
;
ﬁﬁ< =
}
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
migrationBuilder
·· 
.
·· 
CreateTable
·· (
(
··( )
name
‚‚ 
:
‚‚ 
$str
‚‚ +
,
‚‚+ ,
columns
„„ 
:
„„ 
table
„„ 
=>
„„ !
new
„„" %
{
‰‰ 
email
ÂÂ 
=
ÂÂ 
table
ÂÂ !
.
ÂÂ! "
Column
ÂÂ" (
<
ÂÂ( )
string
ÂÂ) /
>
ÂÂ/ 0
(
ÂÂ0 1
type
ÂÂ1 5
:
ÂÂ5 6
$str
ÂÂ7 F
,
ÂÂF G
nullable
ÂÂH P
:
ÂÂP Q
false
ÂÂR W
)
ÂÂW X
,
ÂÂX Y$
sent_personal_email_id
ÊÊ *
=
ÊÊ+ ,
table
ÊÊ- 2
.
ÊÊ2 3
Column
ÊÊ3 9
<
ÊÊ9 :
long
ÊÊ: >
>
ÊÊ> ?
(
ÊÊ? @
type
ÊÊ@ D
:
ÊÊD E
$str
ÊÊF N
,
ÊÊN O
nullable
ÊÊP X
:
ÊÊX Y
false
ÊÊZ _
)
ÊÊ_ `
.
ÁÁ 

Annotation
ÁÁ #
(
ÁÁ# $
$str
ÁÁ$ 8
,
ÁÁ8 9
$str
ÁÁ: @
)
ÁÁ@ A
,
ÁÁA B
date_and_time
ËË !
=
ËË" #
table
ËË$ )
.
ËË) *
Column
ËË* 0
<
ËË0 1
DateTime
ËË1 9
>
ËË9 :
(
ËË: ;
type
ËË; ?
:
ËË? @
$str
ËËA L
,
ËËL M
nullable
ËËN V
:
ËËV W
false
ËËX ]
)
ËË] ^
}
ÈÈ 
,
ÈÈ 
constraints
ÍÍ 
:
ÍÍ 
table
ÍÍ "
=>
ÍÍ# %
{
ÎÎ 
table
ÏÏ 
.
ÏÏ 

PrimaryKey
ÏÏ $
(
ÏÏ$ %
$str
ÏÏ% =
,
ÏÏ= >
x
ÏÏ? @
=>
ÏÏA C
new
ÏÏD G
{
ÏÏH I
x
ÏÏJ K
.
ÏÏK L
email
ÏÏL Q
,
ÏÏQ R
x
ÏÏS T
.
ÏÏT U$
sent_personal_email_id
ÏÏU k
}
ÏÏl m
)
ÏÏm n
;
ÏÏn o
table
ÌÌ 
.
ÌÌ 

ForeignKey
ÌÌ $
(
ÌÌ$ %
name
ÓÓ 
:
ÓÓ 
$str
ÓÓ K
,
ÓÓK L
column
ÔÔ 
:
ÔÔ 
x
ÔÔ  !
=>
ÔÔ" $
x
ÔÔ% &
.
ÔÔ& '
email
ÔÔ' ,
,
ÔÔ, -
principalTable
 &
:
& '
$str
( 8
,
8 9
principalColumn
ÒÒ '
:
ÒÒ' (
$str
ÒÒ) 0
,
ÒÒ0 1
onDelete
ÚÚ  
:
ÚÚ  !
ReferentialAction
ÚÚ" 3
.
ÚÚ3 4
Cascade
ÚÚ4 ;
)
ÚÚ; <
;
ÚÚ< =
}
ÛÛ 
)
ÛÛ 
;
ÛÛ 
migrationBuilder
ıı 
.
ıı 
CreateTable
ıı (
(
ıı( )
name
ˆˆ 
:
ˆˆ 
$str
ˆˆ 
,
ˆˆ 
columns
˜˜ 
:
˜˜ 
table
˜˜ 
=>
˜˜ !
new
˜˜" %
{
¯¯ 

product_id
˘˘ 
=
˘˘  
table
˘˘! &
.
˘˘& '
Column
˘˘' -
<
˘˘- .
long
˘˘. 2
>
˘˘2 3
(
˘˘3 4
type
˘˘4 8
:
˘˘8 9
$str
˘˘: B
,
˘˘B C
nullable
˘˘D L
:
˘˘L M
false
˘˘N S
)
˘˘S T
,
˘˘T U
offer_id
˙˙ 
=
˙˙ 
table
˙˙ $
.
˙˙$ %
Column
˙˙% +
<
˙˙+ ,
long
˙˙, 0
>
˙˙0 1
(
˙˙1 2
type
˙˙2 6
:
˙˙6 7
$str
˙˙8 @
,
˙˙@ A
nullable
˙˙B J
:
˙˙J K
false
˙˙L Q
)
˙˙Q R
.
˚˚ 

Annotation
˚˚ #
(
˚˚# $
$str
˚˚$ 8
,
˚˚8 9
$str
˚˚: @
)
˚˚@ A
,
˚˚A B
amount
¸¸ 
=
¸¸ 
table
¸¸ "
.
¸¸" #
Column
¸¸# )
<
¸¸) *
int
¸¸* -
>
¸¸- .
(
¸¸. /
type
¸¸/ 3
:
¸¸3 4
$str
¸¸5 :
,
¸¸: ;
nullable
¸¸< D
:
¸¸D E
false
¸¸F K
)
¸¸K L
,
¸¸L M

begin_date
˝˝ 
=
˝˝  
table
˝˝! &
.
˝˝& '
Column
˝˝' -
<
˝˝- .
DateTime
˝˝. 6
>
˝˝6 7
(
˝˝7 8
type
˝˝8 <
:
˝˝< =
$str
˝˝> I
,
˝˝I J
nullable
˝˝K S
:
˝˝S T
false
˝˝U Z
)
˝˝Z [
,
˝˝[ \
end_date
˛˛ 
=
˛˛ 
table
˛˛ $
.
˛˛$ %
Column
˛˛% +
<
˛˛+ ,
DateTime
˛˛, 4
>
˛˛4 5
(
˛˛5 6
type
˛˛6 :
:
˛˛: ;
$str
˛˛< G
,
˛˛G H
nullable
˛˛I Q
:
˛˛Q R
false
˛˛S X
)
˛˛X Y
}
ˇˇ 
,
ˇˇ 
constraints
ÄÄ 
:
ÄÄ 
table
ÄÄ "
=>
ÄÄ# %
{
ÅÅ 
table
ÇÇ 
.
ÇÇ 

PrimaryKey
ÇÇ $
(
ÇÇ$ %
$str
ÇÇ% /
,
ÇÇ/ 0
x
ÇÇ1 2
=>
ÇÇ3 5
new
ÇÇ6 9
{
ÇÇ: ;
x
ÇÇ< =
.
ÇÇ= >

product_id
ÇÇ> H
,
ÇÇH I
x
ÇÇJ K
.
ÇÇK L
offer_id
ÇÇL T
}
ÇÇU V
)
ÇÇV W
;
ÇÇW X
table
ÉÉ 
.
ÉÉ 

ForeignKey
ÉÉ $
(
ÉÉ$ %
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ ;
,
ÑÑ; <
column
ÖÖ 
:
ÖÖ 
x
ÖÖ  !
=>
ÖÖ" $
x
ÖÖ% &
.
ÖÖ& '

product_id
ÖÖ' 1
,
ÖÖ1 2
principalTable
ÜÜ &
:
ÜÜ& '
$str
ÜÜ( 1
,
ÜÜ1 2
principalColumn
áá '
:
áá' (
$str
áá) 5
,
áá5 6
onDelete
àà  
:
àà  !
ReferentialAction
àà" 3
.
àà3 4
Cascade
àà4 ;
)
àà; <
;
àà< =
}
ââ 
)
ââ 
;
ââ 
migrationBuilder
ãã 
.
ãã 
CreateTable
ãã (
(
ãã( )
name
åå 
:
åå 
$str
åå #
,
åå# $
columns
çç 
:
çç 
table
çç 
=>
çç !
new
çç" %
{
éé 
reservation_id
èè "
=
èè# $
table
èè% *
.
èè* +
Column
èè+ 1
<
èè1 2
long
èè2 6
>
èè6 7
(
èè7 8
type
èè8 <
:
èè< =
$str
èè> F
,
èèF G
nullable
èèH P
:
èèP Q
false
èèR W
)
èèW X
.
êê 

Annotation
êê #
(
êê# $
$str
êê$ 8
,
êê8 9
$str
êê: @
)
êê@ A
,
êêA B

product_id
ëë 
=
ëë  
table
ëë! &
.
ëë& '
Column
ëë' -
<
ëë- .
long
ëë. 2
>
ëë2 3
(
ëë3 4
type
ëë4 8
:
ëë8 9
$str
ëë: B
,
ëëB C
nullable
ëëD L
:
ëëL M
false
ëëN S
)
ëëS T
,
ëëT U
pib
íí 
=
íí 
table
íí 
.
íí  
Column
íí  &
<
íí& '
long
íí' +
>
íí+ ,
(
íí, -
type
íí- 1
:
íí1 2
$str
íí3 ;
,
íí; <
nullable
íí= E
:
ííE F
false
ííG L
)
ííL M
,
ííM N
amount
ìì 
=
ìì 
table
ìì "
.
ìì" #
Column
ìì# )
<
ìì) *
int
ìì* -
>
ìì- .
(
ìì. /
type
ìì/ 3
:
ìì3 4
$str
ìì5 :
,
ìì: ;
nullable
ìì< D
:
ììD E
false
ììF K
)
ììK L
,
ììL M
delivery
îî 
=
îî 
table
îî $
.
îî$ %
Column
îî% +
<
îî+ ,
DateTime
îî, 4
>
îî4 5
(
îî5 6
type
îî6 :
:
îî: ;
$str
îî< G
,
îîG H
nullable
îîI Q
:
îîQ R
false
îîS X
)
îîX Y
}
ïï 
,
ïï 
constraints
ññ 
:
ññ 
table
ññ "
=>
ññ# %
{
óó 
table
òò 
.
òò 

PrimaryKey
òò $
(
òò$ %
$str
òò% 5
,
òò5 6
x
òò7 8
=>
òò9 ;
new
òò< ?
{
òò@ A
x
òòB C
.
òòC D
reservation_id
òòD R
,
òòR S
x
òòT U
.
òòU V

product_id
òòV `
,
òò` a
x
òòb c
.
òòc d
pib
òòd g
}
òòh i
)
òòi j
;
òòj k
table
ôô 
.
ôô 

ForeignKey
ôô $
(
ôô$ %
name
öö 
:
öö 
$str
öö :
,
öö: ;
column
õõ 
:
õõ 
x
õõ  !
=>
õõ" $
x
õõ% &
.
õõ& '
pib
õõ' *
,
õõ* +
principalTable
úú &
:
úú& '
$str
úú( 1
,
úú1 2
principalColumn
ùù '
:
ùù' (
$str
ùù) .
,
ùù. /
onDelete
ûû  
:
ûû  !
ReferentialAction
ûû" 3
.
ûû3 4
Cascade
ûû4 ;
)
ûû; <
;
ûû< =
table
üü 
.
üü 

ForeignKey
üü $
(
üü$ %
name
†† 
:
†† 
$str
†† A
,
††A B
column
°° 
:
°° 
x
°°  !
=>
°°" $
x
°°% &
.
°°& '

product_id
°°' 1
,
°°1 2
principalTable
¢¢ &
:
¢¢& '
$str
¢¢( 1
,
¢¢1 2
principalColumn
££ '
:
££' (
$str
££) 5
,
££5 6
onDelete
§§  
:
§§  !
ReferentialAction
§§" 3
.
§§3 4
Cascade
§§4 ;
)
§§; <
;
§§< =
}
•• 
)
•• 
;
•• 
migrationBuilder
ßß 
.
ßß 
CreateTable
ßß (
(
ßß( )
name
®® 
:
®® 
$str
®® 
,
®® 
columns
©© 
:
©© 
table
©© 
=>
©© !
new
©©" %
{
™™ 
form_id
´´ 
=
´´ 
table
´´ #
.
´´# $
Column
´´$ *
<
´´* +
long
´´+ /
>
´´/ 0
(
´´0 1
type
´´1 5
:
´´5 6
$str
´´7 ?
,
´´? @
nullable
´´A I
:
´´I J
false
´´K P
)
´´P Q
.
¨¨ 

Annotation
¨¨ #
(
¨¨# $
$str
¨¨$ 8
,
¨¨8 9
$str
¨¨: @
)
¨¨@ A
,
¨¨A B
creation_date
≠≠ !
=
≠≠" #
table
≠≠$ )
.
≠≠) *
Column
≠≠* 0
<
≠≠0 1
DateTime
≠≠1 9
>
≠≠9 :
(
≠≠: ;
type
≠≠; ?
:
≠≠? @
$str
≠≠A L
,
≠≠L M
nullable
≠≠N V
:
≠≠V W
false
≠≠X ]
)
≠≠] ^
,
≠≠^ _
event_id
ÆÆ 
=
ÆÆ 
table
ÆÆ $
.
ÆÆ$ %
Column
ÆÆ% +
<
ÆÆ+ ,
long
ÆÆ, 0
>
ÆÆ0 1
(
ÆÆ1 2
type
ÆÆ2 6
:
ÆÆ6 7
$str
ÆÆ8 @
,
ÆÆ@ A
nullable
ÆÆB J
:
ÆÆJ K
false
ÆÆL Q
)
ÆÆQ R
,
ÆÆR S

qr_code_id
ØØ 
=
ØØ  
table
ØØ! &
.
ØØ& '
Column
ØØ' -
<
ØØ- .
long
ØØ. 2
>
ØØ2 3
(
ØØ3 4
type
ØØ4 8
:
ØØ8 9
$str
ØØ: B
,
ØØB C
nullable
ØØD L
:
ØØL M
true
ØØN R
)
ØØR S
}
∞∞ 
,
∞∞ 
constraints
±± 
:
±± 
table
±± "
=>
±±# %
{
≤≤ 
table
≥≥ 
.
≥≥ 

PrimaryKey
≥≥ $
(
≥≥$ %
$str
≥≥% .
,
≥≥. /
x
≥≥0 1
=>
≥≥2 4
x
≥≥5 6
.
≥≥6 7
form_id
≥≥7 >
)
≥≥> ?
;
≥≥? @
table
¥¥ 
.
¥¥ 

ForeignKey
¥¥ $
(
¥¥$ %
name
µµ 
:
µµ 
$str
µµ :
,
µµ: ;
column
∂∂ 
:
∂∂ 
x
∂∂  !
=>
∂∂" $
x
∂∂% &
.
∂∂& '

qr_code_id
∂∂' 1
,
∂∂1 2
principalTable
∑∑ &
:
∑∑& '
$str
∑∑( 1
,
∑∑1 2
principalColumn
∏∏ '
:
∏∏' (
$str
∏∏) 5
)
∏∏5 6
;
∏∏6 7
}
ππ 
)
ππ 
;
ππ 
migrationBuilder
ªª 
.
ªª 
CreateTable
ªª (
(
ªª( )
name
ºº 
:
ºº 
$str
ºº  
,
ºº  !
columns
ΩΩ 
:
ΩΩ 
table
ΩΩ 
=>
ΩΩ !
new
ΩΩ" %
{
ææ 
pib
øø 
=
øø 
table
øø 
.
øø  
Column
øø  &
<
øø& '
long
øø' +
>
øø+ ,
(
øø, -
type
øø- 1
:
øø1 2
$str
øø3 ;
,
øø; <
nullable
øø= E
:
øøE F
false
øøG L
)
øøL M
,
øøM N"
shopping_location_id
¿¿ (
=
¿¿) *
table
¿¿+ 0
.
¿¿0 1
Column
¿¿1 7
<
¿¿7 8
long
¿¿8 <
>
¿¿< =
(
¿¿= >
type
¿¿> B
:
¿¿B C
$str
¿¿D L
,
¿¿L M
nullable
¿¿N V
:
¿¿V W
false
¿¿X ]
)
¿¿] ^
,
¿¿^ _

product_id
¡¡ 
=
¡¡  
table
¡¡! &
.
¡¡& '
Column
¡¡' -
<
¡¡- .
long
¡¡. 2
>
¡¡2 3
(
¡¡3 4
type
¡¡4 8
:
¡¡8 9
$str
¡¡: B
,
¡¡B C
nullable
¡¡D L
:
¡¡L M
false
¡¡N S
)
¡¡S T
,
¡¡T U

percentage
¬¬ 
=
¬¬  
table
¬¬! &
.
¬¬& '
Column
¬¬' -
<
¬¬- .
int
¬¬. 1
>
¬¬1 2
(
¬¬2 3
type
¬¬3 7
:
¬¬7 8
$str
¬¬9 >
,
¬¬> ?
nullable
¬¬@ H
:
¬¬H I
false
¬¬J O
)
¬¬O P
,
¬¬P Q

begin_date
√√ 
=
√√  
table
√√! &
.
√√& '
Column
√√' -
<
√√- .
DateTime
√√. 6
>
√√6 7
(
√√7 8
type
√√8 <
:
√√< =
$str
√√> I
,
√√I J
nullable
√√K S
:
√√S T
false
√√U Z
)
√√Z [
,
√√[ \
end_date
ƒƒ 
=
ƒƒ 
table
ƒƒ $
.
ƒƒ$ %
Column
ƒƒ% +
<
ƒƒ+ ,
DateTime
ƒƒ, 4
>
ƒƒ4 5
(
ƒƒ5 6
type
ƒƒ6 :
:
ƒƒ: ;
$str
ƒƒ< G
,
ƒƒG H
nullable
ƒƒI Q
:
ƒƒQ R
false
ƒƒS X
)
ƒƒX Y
}
≈≈ 
,
≈≈ 
constraints
∆∆ 
:
∆∆ 
table
∆∆ "
=>
∆∆# %
{
«« 
table
»» 
.
»» 

PrimaryKey
»» $
(
»»$ %
$str
»»% 2
,
»»2 3
x
»»4 5
=>
»»6 8
new
»»9 <
{
»»= >
x
»»? @
.
»»@ A
pib
»»A D
,
»»D E
x
»»F G
.
»»G H"
shopping_location_id
»»H \
,
»»\ ]
x
»»^ _
.
»»_ `

product_id
»»` j
}
»»k l
)
»»l m
;
»»m n
table
…… 
.
…… 

ForeignKey
…… $
(
……$ %
name
   
:
   
$str
   >
,
  > ?
column
ÀÀ 
:
ÀÀ 
x
ÀÀ  !
=>
ÀÀ" $
x
ÀÀ% &
.
ÀÀ& '

product_id
ÀÀ' 1
,
ÀÀ1 2
principalTable
ÃÃ &
:
ÃÃ& '
$str
ÃÃ( 1
,
ÃÃ1 2
principalColumn
ÕÕ '
:
ÕÕ' (
$str
ÕÕ) 5
,
ÕÕ5 6
onDelete
ŒŒ  
:
ŒŒ  !
ReferentialAction
ŒŒ" 3
.
ŒŒ3 4
Cascade
ŒŒ4 ;
)
ŒŒ; <
;
ŒŒ< =
table
œœ 
.
œœ 

ForeignKey
œœ $
(
œœ$ %
name
–– 
:
–– 
$str
–– V
,
––V W
columns
—— 
:
——  
x
——! "
=>
——# %
new
——& )
{
——* +
x
——, -
.
——- .
pib
——. 1
,
——1 2
x
——3 4
.
——4 5"
shopping_location_id
——5 I
}
——J K
,
——K L
principalTable
““ &
:
““& '
$str
““( ;
,
““; <
principalColumns
”” (
:
””( )
new
””* -
[
””- .
]
””. /
{
””0 1
$str
””2 7
,
””7 8
$str
””9 O
}
””P Q
,
””Q R
onDelete
‘‘  
:
‘‘  !
ReferentialAction
‘‘" 3
.
‘‘3 4
Cascade
‘‘4 ;
)
‘‘; <
;
‘‘< =
}
’’ 
)
’’ 
;
’’ 
migrationBuilder
◊◊ 
.
◊◊ 
CreateTable
◊◊ (
(
◊◊( )
name
ÿÿ 
:
ÿÿ 
$str
ÿÿ  
,
ÿÿ  !
columns
ŸŸ 
:
ŸŸ 
table
ŸŸ 
=>
ŸŸ !
new
ŸŸ" %
{
⁄⁄ 
event_id
€€ 
=
€€ 
table
€€ $
.
€€$ %
Column
€€% +
<
€€+ ,
long
€€, 0
>
€€0 1
(
€€1 2
type
€€2 6
:
€€6 7
$str
€€8 @
,
€€@ A
nullable
€€B J
:
€€J K
false
€€L Q
)
€€Q R
,
€€R S
question_id
‹‹ 
=
‹‹  !
table
‹‹" '
.
‹‹' (
Column
‹‹( .
<
‹‹. /
long
‹‹/ 3
>
‹‹3 4
(
‹‹4 5
type
‹‹5 9
:
‹‹9 :
$str
‹‹; C
,
‹‹C D
nullable
‹‹E M
:
‹‹M N
false
‹‹O T
)
‹‹T U
.
›› 

Annotation
›› #
(
››# $
$str
››$ 8
,
››8 9
$str
››: @
)
››@ A
,
››A B
text
ﬁﬁ 
=
ﬁﬁ 
table
ﬁﬁ  
.
ﬁﬁ  !
Column
ﬁﬁ! '
<
ﬁﬁ' (
string
ﬁﬁ( .
>
ﬁﬁ. /
(
ﬁﬁ/ 0
type
ﬁﬁ0 4
:
ﬁﬁ4 5
$str
ﬁﬁ6 E
,
ﬁﬁE F
nullable
ﬁﬁG O
:
ﬁﬁO P
false
ﬁﬁQ V
)
ﬁﬁV W
,
ﬁﬁW X
question_type_id
ﬂﬂ $
=
ﬂﬂ% &
table
ﬂﬂ' ,
.
ﬂﬂ, -
Column
ﬂﬂ- 3
<
ﬂﬂ3 4
long
ﬂﬂ4 8
>
ﬂﬂ8 9
(
ﬂﬂ9 :
type
ﬂﬂ: >
:
ﬂﬂ> ?
$str
ﬂﬂ@ H
,
ﬂﬂH I
nullable
ﬂﬂJ R
:
ﬂﬂR S
false
ﬂﬂT Y
)
ﬂﬂY Z
}
‡‡ 
,
‡‡ 
constraints
·· 
:
·· 
table
·· "
=>
··# %
{
‚‚ 
table
„„ 
.
„„ 

PrimaryKey
„„ $
(
„„$ %
$str
„„% 2
,
„„2 3
x
„„4 5
=>
„„6 8
new
„„9 <
{
„„= >
x
„„? @
.
„„@ A
event_id
„„A I
,
„„I J
x
„„K L
.
„„L M
question_id
„„M X
}
„„Y Z
)
„„Z [
;
„„[ \
table
‰‰ 
.
‰‰ 

ForeignKey
‰‰ $
(
‰‰$ %
name
ÂÂ 
:
ÂÂ 
$str
ÂÂ :
,
ÂÂ: ;
column
ÊÊ 
:
ÊÊ 
x
ÊÊ  !
=>
ÊÊ" $
x
ÊÊ% &
.
ÊÊ& '
event_id
ÊÊ' /
,
ÊÊ/ 0
principalTable
ÁÁ &
:
ÁÁ& '
$str
ÁÁ( /
,
ÁÁ/ 0
principalColumn
ËË '
:
ËË' (
$str
ËË) 3
,
ËË3 4
onDelete
ÈÈ  
:
ÈÈ  !
ReferentialAction
ÈÈ" 3
.
ÈÈ3 4
Cascade
ÈÈ4 ;
)
ÈÈ; <
;
ÈÈ< =
table
ÍÍ 
.
ÍÍ 

ForeignKey
ÍÍ $
(
ÍÍ$ %
name
ÎÎ 
:
ÎÎ 
$str
ÎÎ J
,
ÎÎJ K
column
ÏÏ 
:
ÏÏ 
x
ÏÏ  !
=>
ÏÏ" $
x
ÏÏ% &
.
ÏÏ& '
question_type_id
ÏÏ' 7
,
ÏÏ7 8
principalTable
ÌÌ &
:
ÌÌ& '
$str
ÌÌ( 7
,
ÌÌ7 8
principalColumn
ÓÓ '
:
ÓÓ' (
$str
ÓÓ) ;
,
ÓÓ; <
onDelete
ÔÔ  
:
ÔÔ  !
ReferentialAction
ÔÔ" 3
.
ÔÔ3 4
Cascade
ÔÔ4 ;
)
ÔÔ; <
;
ÔÔ< =
}
 
)
 
;
 
migrationBuilder
ÚÚ 
.
ÚÚ 
CreateTable
ÚÚ (
(
ÚÚ( )
name
ÛÛ 
:
ÛÛ 
$str
ÛÛ (
,
ÛÛ( )
columns
ÙÙ 
:
ÙÙ 
table
ÙÙ 
=>
ÙÙ !
new
ÙÙ" %
{
ıı 
pib
ˆˆ 
=
ˆˆ 
table
ˆˆ 
.
ˆˆ  
Column
ˆˆ  &
<
ˆˆ& '
long
ˆˆ' +
>
ˆˆ+ ,
(
ˆˆ, -
type
ˆˆ- 1
:
ˆˆ1 2
$str
ˆˆ3 ;
,
ˆˆ; <
nullable
ˆˆ= E
:
ˆˆE F
false
ˆˆG L
)
ˆˆL M
,
ˆˆM N

product_id
˜˜ 
=
˜˜  
table
˜˜! &
.
˜˜& '
Column
˜˜' -
<
˜˜- .
long
˜˜. 2
>
˜˜2 3
(
˜˜3 4
type
˜˜4 8
:
˜˜8 9
$str
˜˜: B
,
˜˜B C
nullable
˜˜D L
:
˜˜L M
false
˜˜N S
)
˜˜S T
,
˜˜T U
offer_id
¯¯ 
=
¯¯ 
table
¯¯ $
.
¯¯$ %
Column
¯¯% +
<
¯¯+ ,
long
¯¯, 0
>
¯¯0 1
(
¯¯1 2
type
¯¯2 6
:
¯¯6 7
$str
¯¯8 @
,
¯¯@ A
nullable
¯¯B J
:
¯¯J K
false
¯¯L Q
)
¯¯Q R
}
˘˘ 
,
˘˘ 
constraints
˙˙ 
:
˙˙ 
table
˙˙ "
=>
˙˙# %
{
˚˚ 
table
¸¸ 
.
¸¸ 

PrimaryKey
¸¸ $
(
¸¸$ %
$str
¸¸% :
,
¸¸: ;
x
¸¸< =
=>
¸¸> @
new
¸¸A D
{
¸¸E F
x
¸¸G H
.
¸¸H I
pib
¸¸I L
,
¸¸L M
x
¸¸N O
.
¸¸O P

product_id
¸¸P Z
,
¸¸Z [
x
¸¸\ ]
.
¸¸] ^
offer_id
¸¸^ f
}
¸¸g h
)
¸¸h i
;
¸¸i j
table
˝˝ 
.
˝˝ 

ForeignKey
˝˝ $
(
˝˝$ %
name
˛˛ 
:
˛˛ 
$str
˛˛ ?
,
˛˛? @
column
ˇˇ 
:
ˇˇ 
x
ˇˇ  !
=>
ˇˇ" $
x
ˇˇ% &
.
ˇˇ& '
pib
ˇˇ' *
,
ˇˇ* +
principalTable
ÄÄ &
:
ÄÄ& '
$str
ÄÄ( 1
,
ÄÄ1 2
principalColumn
ÅÅ '
:
ÅÅ' (
$str
ÅÅ) .
,
ÅÅ. /
onDelete
ÇÇ  
:
ÇÇ  !
ReferentialAction
ÇÇ" 3
.
ÇÇ3 4
Cascade
ÇÇ4 ;
)
ÇÇ; <
;
ÇÇ< =
table
ÉÉ 
.
ÉÉ 

ForeignKey
ÉÉ $
(
ÉÉ$ %
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ M
,
ÑÑM N
columns
ÖÖ 
:
ÖÖ  
x
ÖÖ! "
=>
ÖÖ# %
new
ÖÖ& )
{
ÖÖ* +
x
ÖÖ, -
.
ÖÖ- .

product_id
ÖÖ. 8
,
ÖÖ8 9
x
ÖÖ: ;
.
ÖÖ; <
offer_id
ÖÖ< D
}
ÖÖE F
,
ÖÖF G
principalTable
ÜÜ &
:
ÜÜ& '
$str
ÜÜ( /
,
ÜÜ/ 0
principalColumns
áá (
:
áá( )
new
áá* -
[
áá- .
]
áá. /
{
áá0 1
$str
áá2 >
,
áá> ?
$str
áá@ J
}
ááK L
,
ááL M
onDelete
àà  
:
àà  !
ReferentialAction
àà" 3
.
àà3 4
Cascade
àà4 ;
)
àà; <
;
àà< =
}
ââ 
)
ââ 
;
ââ 
migrationBuilder
ãã 
.
ãã 
CreateTable
ãã (
(
ãã( )
name
åå 
:
åå 
$str
åå 
,
åå 
columns
çç 
:
çç 
table
çç 
=>
çç !
new
çç" %
{
éé 
event_id
èè 
=
èè 
table
èè $
.
èè$ %
Column
èè% +
<
èè+ ,
long
èè, 0
>
èè0 1
(
èè1 2
type
èè2 6
:
èè6 7
$str
èè8 @
,
èè@ A
nullable
èèB J
:
èèJ K
false
èèL Q
)
èèQ R
,
èèR S
question_id
êê 
=
êê  !
table
êê" '
.
êê' (
Column
êê( .
<
êê. /
long
êê/ 3
>
êê3 4
(
êê4 5
type
êê5 9
:
êê9 :
$str
êê; C
,
êêC D
nullable
êêE M
:
êêM N
false
êêO T
)
êêT U
,
êêU V
	answer_id
ëë 
=
ëë 
table
ëë  %
.
ëë% &
Column
ëë& ,
<
ëë, -
long
ëë- 1
>
ëë1 2
(
ëë2 3
type
ëë3 7
:
ëë7 8
$str
ëë9 A
,
ëëA B
nullable
ëëC K
:
ëëK L
false
ëëM R
)
ëëR S
.
íí 

Annotation
íí #
(
íí# $
$str
íí$ 8
,
íí8 9
$str
íí: @
)
íí@ A
,
ííA B
value
ìì 
=
ìì 
table
ìì !
.
ìì! "
Column
ìì" (
<
ìì( )
string
ìì) /
>
ìì/ 0
(
ìì0 1
type
ìì1 5
:
ìì5 6
$str
ìì7 F
,
ììF G
nullable
ììH P
:
ììP Q
false
ììR W
)
ììW X
}
îî 
,
îî 
constraints
ïï 
:
ïï 
table
ïï "
=>
ïï# %
{
ññ 
table
óó 
.
óó 

PrimaryKey
óó $
(
óó$ %
$str
óó% 0
,
óó0 1
x
óó2 3
=>
óó4 6
new
óó7 :
{
óó; <
x
óó= >
.
óó> ?
event_id
óó? G
,
óóG H
x
óóI J
.
óóJ K
question_id
óóK V
,
óóV W
x
óóX Y
.
óóY Z
	answer_id
óóZ c
}
óód e
)
óóe f
;
óóf g
table
òò 
.
òò 

ForeignKey
òò $
(
òò$ %
name
ôô 
:
ôô 
$str
ôô G
,
ôôG H
columns
öö 
:
öö  
x
öö! "
=>
öö# %
new
öö& )
{
öö* +
x
öö, -
.
öö- .
event_id
öö. 6
,
öö6 7
x
öö8 9
.
öö9 :
question_id
öö: E
}
ööF G
,
ööG H
principalTable
õõ &
:
õõ& '
$str
õõ( 2
,
õõ2 3
principalColumns
úú (
:
úú( )
new
úú* -
[
úú- .
]
úú. /
{
úú0 1
$str
úú2 <
,
úú< =
$str
úú> K
}
úúL M
,
úúM N
onDelete
ùù  
:
ùù  !
ReferentialAction
ùù" 3
.
ùù3 4
Cascade
ùù4 ;
)
ùù; <
;
ùù< =
}
ûû 
)
ûû 
;
ûû 
migrationBuilder
†† 
.
†† 
CreateTable
†† (
(
††( )
name
°° 
:
°° 
$str
°° '
,
°°' (
columns
¢¢ 
:
¢¢ 
table
¢¢ 
=>
¢¢ !
new
¢¢" %
{
££ 
event_id
§§ 
=
§§ 
table
§§ $
.
§§$ %
Column
§§% +
<
§§+ ,
long
§§, 0
>
§§0 1
(
§§1 2
type
§§2 6
:
§§6 7
$str
§§8 @
,
§§@ A
nullable
§§B J
:
§§J K
false
§§L Q
)
§§Q R
,
§§R S
question_id
•• 
=
••  !
table
••" '
.
••' (
Column
••( .
<
••. /
long
••/ 3
>
••3 4
(
••4 5
type
••5 9
:
••9 :
$str
••; C
,
••C D
nullable
••E M
:
••M N
false
••O T
)
••T U
,
••U V
	answer_id
¶¶ 
=
¶¶ 
table
¶¶  %
.
¶¶% &
Column
¶¶& ,
<
¶¶, -
long
¶¶- 1
>
¶¶1 2
(
¶¶2 3
type
¶¶3 7
:
¶¶7 8
$str
¶¶9 A
,
¶¶A B
nullable
¶¶C K
:
¶¶K L
false
¶¶M R
)
¶¶R S
,
¶¶S T
form_id
ßß 
=
ßß 
table
ßß #
.
ßß# $
Column
ßß$ *
<
ßß* +
long
ßß+ /
>
ßß/ 0
(
ßß0 1
type
ßß1 5
:
ßß5 6
$str
ßß7 ?
,
ßß? @
nullable
ßßA I
:
ßßI J
false
ßßK P
)
ßßP Q
,
ßßQ R
date
®® 
=
®® 
table
®®  
.
®®  !
Column
®®! '
<
®®' (
DateTime
®®( 0
>
®®0 1
(
®®1 2
type
®®2 6
:
®®6 7
$str
®®8 C
,
®®C D
nullable
®®E M
:
®®M N
false
®®O T
)
®®T U
,
®®U V
customer_id
©© 
=
©©  !
table
©©" '
.
©©' (
Column
©©( .
<
©©. /
long
©©/ 3
>
©©3 4
(
©©4 5
type
©©5 9
:
©©9 :
$str
©©; C
,
©©C D
nullable
©©E M
:
©©M N
true
©©O S
)
©©S T
}
™™ 
,
™™ 
constraints
´´ 
:
´´ 
table
´´ "
=>
´´# %
{
¨¨ 
table
≠≠ 
.
≠≠ 

PrimaryKey
≠≠ $
(
≠≠$ %
$str
≠≠% 9
,
≠≠9 :
x
≠≠; <
=>
≠≠= ?
new
≠≠@ C
{
≠≠D E
x
≠≠F G
.
≠≠G H
event_id
≠≠H P
,
≠≠P Q
x
≠≠R S
.
≠≠S T
question_id
≠≠T _
,
≠≠_ `
x
≠≠a b
.
≠≠b c
	answer_id
≠≠c l
,
≠≠l m
x
≠≠n o
.
≠≠o p
form_id
≠≠p w
}
≠≠x y
)
≠≠y z
;
≠≠z {
table
ÆÆ 
.
ÆÆ 

ForeignKey
ÆÆ $
(
ÆÆ$ %
name
ØØ 
:
ØØ 
$str
ØØ X
,
ØØX Y
columns
∞∞ 
:
∞∞  
x
∞∞! "
=>
∞∞# %
new
∞∞& )
{
∞∞* +
x
∞∞, -
.
∞∞- .
event_id
∞∞. 6
,
∞∞6 7
x
∞∞8 9
.
∞∞9 :
question_id
∞∞: E
,
∞∞E F
x
∞∞G H
.
∞∞H I
	answer_id
∞∞I R
}
∞∞S T
,
∞∞T U
principalTable
±± &
:
±±& '
$str
±±( 0
,
±±0 1
principalColumns
≤≤ (
:
≤≤( )
new
≤≤* -
[
≤≤- .
]
≤≤. /
{
≤≤0 1
$str
≤≤2 <
,
≤≤< =
$str
≤≤> K
,
≤≤K L
$str
≤≤M X
}
≤≤Y Z
,
≤≤Z [
onDelete
≥≥  
:
≥≥  !
ReferentialAction
≥≥" 3
.
≥≥3 4
Cascade
≥≥4 ;
)
≥≥; <
;
≥≥< =
table
¥¥ 
.
¥¥ 

ForeignKey
¥¥ $
(
¥¥$ %
name
µµ 
:
µµ 
$str
µµ G
,
µµG H
column
∂∂ 
:
∂∂ 
x
∂∂  !
=>
∂∂" $
x
∂∂% &
.
∂∂& '
customer_id
∂∂' 2
,
∂∂2 3
principalTable
∑∑ &
:
∑∑& '
$str
∑∑( 2
,
∑∑2 3
principalColumn
∏∏ '
:
∏∏' (
$str
∏∏) 6
)
∏∏6 7
;
∏∏7 8
table
ππ 
.
ππ 

ForeignKey
ππ $
(
ππ$ %
name
∫∫ 
:
∫∫ 
$str
∫∫ ?
,
∫∫? @
column
ªª 
:
ªª 
x
ªª  !
=>
ªª" $
x
ªª% &
.
ªª& '
form_id
ªª' .
,
ªª. /
principalTable
ºº &
:
ºº& '
$str
ºº( .
,
ºº. /
principalColumn
ΩΩ '
:
ΩΩ' (
$str
ΩΩ) 2
,
ΩΩ2 3
onDelete
ææ  
:
ææ  !
ReferentialAction
ææ" 3
.
ææ3 4
Cascade
ææ4 ;
)
ææ; <
;
ææ< =
}
øø 
)
øø 
;
øø 
migrationBuilder
¡¡ 
.
¡¡ 
CreateTable
¡¡ (
(
¡¡( )
name
¬¬ 
:
¬¬ 
$str
¬¬ ,
,
¬¬, -
columns
√√ 
:
√√ 
table
√√ 
=>
√√ !
new
√√" %
{
ƒƒ 
event_id
≈≈ 
=
≈≈ 
table
≈≈ $
.
≈≈$ %
Column
≈≈% +
<
≈≈+ ,
long
≈≈, 0
>
≈≈0 1
(
≈≈1 2
type
≈≈2 6
:
≈≈6 7
$str
≈≈8 @
,
≈≈@ A
nullable
≈≈B J
:
≈≈J K
false
≈≈L Q
)
≈≈Q R
,
≈≈R S
question_id
∆∆ 
=
∆∆  !
table
∆∆" '
.
∆∆' (
Column
∆∆( .
<
∆∆. /
long
∆∆/ 3
>
∆∆3 4
(
∆∆4 5
type
∆∆5 9
:
∆∆9 :
$str
∆∆; C
,
∆∆C D
nullable
∆∆E M
:
∆∆M N
false
∆∆O T
)
∆∆T U
,
∆∆U V
	answer_id
«« 
=
«« 
table
««  %
.
««% &
Column
««& ,
<
««, -
long
««- 1
>
««1 2
(
««2 3
type
««3 7
:
««7 8
$str
««9 A
,
««A B
nullable
««C K
:
««K L
false
««M R
)
««R S
,
««S T
form_id
»» 
=
»» 
table
»» #
.
»»# $
Column
»»$ *
<
»»* +
long
»»+ /
>
»»/ 0
(
»»0 1
type
»»1 5
:
»»5 6
$str
»»7 ?
,
»»? @
nullable
»»A I
:
»»I J
false
»»K P
)
»»P Q
,
»»Q R
text
…… 
=
…… 
table
……  
.
……  !
Column
……! '
<
……' (
string
……( .
>
……. /
(
……/ 0
type
……0 4
:
……4 5
$str
……6 E
,
……E F
nullable
……G O
:
……O P
false
……Q V
)
……V W
,
……W X+
CustomerAnswerInstanceEventId
   1
=
  2 3
table
  4 9
.
  9 :
Column
  : @
<
  @ A
long
  A E
>
  E F
(
  F G
type
  G K
:
  K L
$str
  M U
,
  U V
nullable
  W _
:
  _ `
false
  a f
)
  f g
,
  g h.
 CustomerAnswerInstanceQuestionId
ÀÀ 4
=
ÀÀ5 6
table
ÀÀ7 <
.
ÀÀ< =
Column
ÀÀ= C
<
ÀÀC D
long
ÀÀD H
>
ÀÀH I
(
ÀÀI J
type
ÀÀJ N
:
ÀÀN O
$str
ÀÀP X
,
ÀÀX Y
nullable
ÀÀZ b
:
ÀÀb c
false
ÀÀd i
)
ÀÀi j
,
ÀÀj k,
CustomerAnswerInstanceAnswerId
ÃÃ 2
=
ÃÃ3 4
table
ÃÃ5 :
.
ÃÃ: ;
Column
ÃÃ; A
<
ÃÃA B
long
ÃÃB F
>
ÃÃF G
(
ÃÃG H
type
ÃÃH L
:
ÃÃL M
$str
ÃÃN V
,
ÃÃV W
nullable
ÃÃX `
:
ÃÃ` a
false
ÃÃb g
)
ÃÃg h
,
ÃÃh i*
CustomerAnswerInstanceFormId
ÕÕ 0
=
ÕÕ1 2
table
ÕÕ3 8
.
ÕÕ8 9
Column
ÕÕ9 ?
<
ÕÕ? @
long
ÕÕ@ D
>
ÕÕD E
(
ÕÕE F
type
ÕÕF J
:
ÕÕJ K
$str
ÕÕL T
,
ÕÕT U
nullable
ÕÕV ^
:
ÕÕ^ _
false
ÕÕ` e
)
ÕÕe f
}
ŒŒ 
,
ŒŒ 
constraints
œœ 
:
œœ 
table
œœ "
=>
œœ# %
{
–– 
table
—— 
.
—— 

PrimaryKey
—— $
(
——$ %
$str
——% >
,
——> ?
x
——@ A
=>
——B D
new
——E H
{
——I J
x
——K L
.
——L M
event_id
——M U
,
——U V
x
——W X
.
——X Y
question_id
——Y d
,
——d e
x
——f g
.
——g h
	answer_id
——h q
,
——q r
x
——s t
.
——t u
form_id
——u |
}
——} ~
)
——~ 
;—— Ä
table
““ 
.
““ 

ForeignKey
““ $
(
““$ %
name
”” 
:
”” 
$str”” †
,””† °
columns
‘‘ 
:
‘‘  
x
‘‘! "
=>
‘‘# %
new
‘‘& )
{
‘‘* +
x
‘‘, -
.
‘‘- .+
CustomerAnswerInstanceEventId
‘‘. K
,
‘‘K L
x
‘‘M N
.
‘‘N O.
 CustomerAnswerInstanceQuestionId
‘‘O o
,
‘‘o p
x
‘‘q r
.
‘‘r s-
CustomerAnswerInstanceAnswerId‘‘s ë
,‘‘ë í
x‘‘ì î
.‘‘î ï,
CustomerAnswerInstanceFormId‘‘ï ±
}‘‘≤ ≥
,‘‘≥ ¥
principalTable
’’ &
:
’’& '
$str
’’( 9
,
’’9 :
principalColumns
÷÷ (
:
÷÷( )
new
÷÷* -
[
÷÷- .
]
÷÷. /
{
÷÷0 1
$str
÷÷2 <
,
÷÷< =
$str
÷÷> K
,
÷÷K L
$str
÷÷M X
,
÷÷X Y
$str
÷÷Z c
}
÷÷d e
,
÷÷e f
onDelete
◊◊  
:
◊◊  !
ReferentialAction
◊◊" 3
.
◊◊3 4
Cascade
◊◊4 ;
)
◊◊; <
;
◊◊< =
}
ÿÿ 
)
ÿÿ 
;
ÿÿ 
migrationBuilder
⁄⁄ 
.
⁄⁄ 
CreateIndex
⁄⁄ (
(
⁄⁄( )
name
€€ 
:
€€ 
$str
€€ +
,
€€+ ,
table
‹‹ 
:
‹‹ 
$str
‹‹ 
,
‹‹  
column
›› 
:
›› 
$str
›› #
)
››# $
;
››$ %
migrationBuilder
ﬂﬂ 
.
ﬂﬂ 
CreateIndex
ﬂﬂ (
(
ﬂﬂ( )
name
‡‡ 
:
‡‡ 
$str
‡‡ &
,
‡‡& '
table
·· 
:
·· 
$str
··  
,
··  !
column
‚‚ 
:
‚‚ 
$str
‚‚ 
)
‚‚ 
;
‚‚ 
migrationBuilder
‰‰ 
.
‰‰ 
CreateIndex
‰‰ (
(
‰‰( )
name
ÂÂ 
:
ÂÂ 
$str
ÂÂ /
,
ÂÂ/ 0
table
ÊÊ 
:
ÊÊ 
$str
ÊÊ !
,
ÊÊ! "
column
ÁÁ 
:
ÁÁ 
$str
ÁÁ %
)
ÁÁ% &
;
ÁÁ& '
migrationBuilder
ÈÈ 
.
ÈÈ 
CreateIndex
ÈÈ (
(
ÈÈ( )
name
ÍÍ 
:
ÍÍ 
$str
ÍÍ )
,
ÍÍ) *
table
ÎÎ 
:
ÎÎ 
$str
ÎÎ !
,
ÎÎ! "
column
ÏÏ 
:
ÏÏ 
$str
ÏÏ 
)
ÏÏ  
;
ÏÏ  !
migrationBuilder
ÓÓ 
.
ÓÓ 
CreateIndex
ÓÓ (
(
ÓÓ( )
name
ÔÔ 
:
ÔÔ 
$str
ÔÔ 6
,
ÔÔ6 7
table
 
:
 
$str
 (
,
( )
column
ÒÒ 
:
ÒÒ 
$str
ÒÒ %
)
ÒÒ% &
;
ÒÒ& '
migrationBuilder
ÛÛ 
.
ÛÛ 
CreateIndex
ÛÛ (
(
ÛÛ( )
name
ÙÙ 
:
ÙÙ 
$str
ÙÙ 2
,
ÙÙ2 3
table
ıı 
:
ıı 
$str
ıı (
,
ıı( )
column
ˆˆ 
:
ˆˆ 
$str
ˆˆ !
)
ˆˆ! "
;
ˆˆ" #
migrationBuilder
¯¯ 
.
¯¯ 
CreateIndex
¯¯ (
(
¯¯( )
name
˘˘ 
:
˘˘ 
$str
˘˘ .
,
˘˘. /
table
˙˙ 
:
˙˙ 
$str
˙˙ !
,
˙˙! "
column
˚˚ 
:
˚˚ 
$str
˚˚ $
)
˚˚$ %
;
˚˚% &
migrationBuilder
˝˝ 
.
˝˝ 
CreateIndex
˝˝ (
(
˝˝( )
name
˛˛ 
:
˛˛ 
$str
˛˛ .
,
˛˛. /
table
ˇˇ 
:
ˇˇ 
$str
ˇˇ 
,
ˇˇ 
column
ÄÄ 
:
ÄÄ 
$str
ÄÄ '
)
ÄÄ' (
;
ÄÄ( )
migrationBuilder
ÇÇ 
.
ÇÇ 
CreateIndex
ÇÇ (
(
ÇÇ( )
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ *
,
ÉÉ* +
table
ÑÑ 
:
ÑÑ 
$str
ÑÑ 
,
ÑÑ 
column
ÖÖ 
:
ÖÖ 
$str
ÖÖ $
)
ÖÖ$ %
;
ÖÖ% &
migrationBuilder
áá 
.
áá 
CreateIndex
áá (
(
áá( )
name
àà 
:
àà 
$str
àà ?
,
àà? @
table
ââ 
:
ââ 
$str
ââ )
,
ââ) *
columns
ää 
:
ää 
new
ää 
[
ää 
]
ää 
{
ää  
$str
ää! -
,
ää- .
$str
ää/ 9
}
ää: ;
)
ää; <
;
ää< =
migrationBuilder
åå 
.
åå 
CreateIndex
åå (
(
åå( )
name
çç 
:
çç 
$str
çç 4
,
çç4 5
table
éé 
:
éé 
$str
éé !
,
éé! "
column
èè 
:
èè 
$str
èè *
)
èè* +
;
èè+ ,
migrationBuilder
ëë 
.
ëë 
CreateIndex
ëë (
(
ëë( )
name
íí 
:
íí 
$str
íí *
,
íí* +
table
ìì 
:
ìì 
$str
ìì $
,
ìì$ %
column
îî 
:
îî 
$str
îî 
)
îî 
;
îî 
migrationBuilder
ññ 
.
ññ 
CreateIndex
ññ (
(
ññ( )
name
óó 
:
óó 
$str
óó 1
,
óó1 2
table
òò 
:
òò 
$str
òò $
,
òò$ %
column
ôô 
:
ôô 
$str
ôô $
)
ôô$ %
;
ôô% &
migrationBuilder
õõ 
.
õõ 
CreateIndex
õõ (
(
õõ( )
name
úú 
:
úú 
$strúú ò
,úúò ô
table
ùù 
:
ùù 
$str
ùù -
,
ùù- .
columns
ûû 
:
ûû 
new
ûû 
[
ûû 
]
ûû 
{
ûû  
$str
ûû! @
,
ûû@ A
$str
ûûB d
,
ûûd e
$strûûf Ü
,ûûÜ á
$strûûà ¶
}ûûß ®
)ûû® ©
;ûû© ™
}
üü 	
	protected
¢¢ 
override
¢¢ 
void
¢¢ 
Down
¢¢  $
(
¢¢$ %
MigrationBuilder
¢¢% 5
migrationBuilder
¢¢6 F
)
¢¢F G
{
££ 	
migrationBuilder
§§ 
.
§§ 
	DropTable
§§ &
(
§§& '
name
•• 
:
•• 
$str
••  
)
••  !
;
••! "
migrationBuilder
ßß 
.
ßß 
	DropTable
ßß &
(
ßß& '
name
®® 
:
®® 
$str
®® &
)
®®& '
;
®®' (
migrationBuilder
™™ 
.
™™ 
	DropTable
™™ &
(
™™& '
name
´´ 
:
´´ 
$str
´´  
)
´´  !
;
´´! "
migrationBuilder
≠≠ 
.
≠≠ 
	DropTable
≠≠ &
(
≠≠& '
name
ÆÆ 
:
ÆÆ 
$str
ÆÆ 
)
ÆÆ  
;
ÆÆ  !
migrationBuilder
∞∞ 
.
∞∞ 
	DropTable
∞∞ &
(
∞∞& '
name
±± 
:
±± 
$str
±± (
)
±±( )
;
±±) *
migrationBuilder
≥≥ 
.
≥≥ 
	DropTable
≥≥ &
(
≥≥& '
name
¥¥ 
:
¥¥ 
$str
¥¥ #
)
¥¥# $
;
¥¥$ %
migrationBuilder
∂∂ 
.
∂∂ 
	DropTable
∂∂ &
(
∂∂& '
name
∑∑ 
:
∑∑ 
$str
∑∑ *
)
∑∑* +
;
∑∑+ ,
migrationBuilder
ππ 
.
ππ 
	DropTable
ππ &
(
ππ& '
name
∫∫ 
:
∫∫ 
$str
∫∫ +
)
∫∫+ ,
;
∫∫, -
migrationBuilder
ºº 
.
ºº 
	DropTable
ºº &
(
ºº& '
name
ΩΩ 
:
ΩΩ 
$str
ΩΩ ,
)
ΩΩ, -
;
ΩΩ- .
migrationBuilder
øø 
.
øø 
	DropTable
øø &
(
øø& '
name
¿¿ 
:
¿¿ 
$str
¿¿ )
)
¿¿) *
;
¿¿* +
migrationBuilder
¬¬ 
.
¬¬ 
	DropTable
¬¬ &
(
¬¬& '
name
√√ 
:
√√ 
$str
√√ 
)
√√ 
;
√√ 
migrationBuilder
≈≈ 
.
≈≈ 
	DropTable
≈≈ &
(
≈≈& '
name
∆∆ 
:
∆∆ 
$str
∆∆ '
)
∆∆' (
;
∆∆( )
migrationBuilder
»» 
.
»» 
	DropTable
»» &
(
»»& '
name
…… 
:
…… 
$str
…… 
)
……  
;
……  !
migrationBuilder
ÀÀ 
.
ÀÀ 
	DropTable
ÀÀ &
(
ÀÀ& '
name
ÃÃ 
:
ÃÃ 
$str
ÃÃ 
)
ÃÃ  
;
ÃÃ  !
migrationBuilder
ŒŒ 
.
ŒŒ 
	DropTable
ŒŒ &
(
ŒŒ& '
name
œœ 
:
œœ 
$str
œœ 
)
œœ 
;
œœ  
migrationBuilder
—— 
.
—— 
	DropTable
—— &
(
——& '
name
““ 
:
““ 
$str
““  
)
““  !
;
““! "
migrationBuilder
‘‘ 
.
‘‘ 
	DropTable
‘‘ &
(
‘‘& '
name
’’ 
:
’’ 
$str
’’ 
)
’’ 
;
’’ 
migrationBuilder
◊◊ 
.
◊◊ 
	DropTable
◊◊ &
(
◊◊& '
name
ÿÿ 
:
ÿÿ 
$str
ÿÿ  
)
ÿÿ  !
;
ÿÿ! "
migrationBuilder
⁄⁄ 
.
⁄⁄ 
	DropTable
⁄⁄ &
(
⁄⁄& '
name
€€ 
:
€€ 
$str
€€ &
)
€€& '
;
€€' (
migrationBuilder
›› 
.
›› 
	DropTable
›› &
(
››& '
name
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ 
)
ﬁﬁ  
;
ﬁﬁ  !
migrationBuilder
‡‡ 
.
‡‡ 
	DropTable
‡‡ &
(
‡‡& '
name
·· 
:
·· 
$str
·· 
)
·· 
;
·· 
migrationBuilder
„„ 
.
„„ 
	DropTable
„„ &
(
„„& '
name
‰‰ 
:
‰‰ 
$str
‰‰ %
)
‰‰% &
;
‰‰& '
migrationBuilder
ÊÊ 
.
ÊÊ 
	DropTable
ÊÊ &
(
ÊÊ& '
name
ÁÁ 
:
ÁÁ 
$str
ÁÁ "
)
ÁÁ" #
;
ÁÁ# $
}
ËË 	
}
ÈÈ 
}ÍÍ à
TD:\FON\master\Aplikacija\honey-beer-server\Controllers\ShoppingLocationController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class &
ShoppingLocationController +
:, -
ControllerBase. <
{ 
private 
readonly $
IShoppingLocationService 1$
_shoppingLocationService2 J
;J K
public &
ShoppingLocationController )
() *$
IShoppingLocationService* B#
shoppingLocationServiceC Z
)Z [
=>\ ^$
_shoppingLocationService_ w
=x y$
shoppingLocationService	z ë
;
ë í
[ 	
HttpGet	 
] 
public 
ActionResult 
< 
List  
<  !
ShoppingLocation! 1
>1 2
>2 3$
LoadAllShoppingLocations4 L
(L M
)M N
{ 	
return 
Ok 
( $
_shoppingLocationService .
.. /$
LoadAllShoppingLocations/ G
(G H
)H I
)I J
;J K
} 	
} 
} µ
TD:\FON\master\Aplikacija\honey-beer-server\Controllers\SentCompanyEmailController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class &
SentCompanyEmailController +
:, -
ControllerBase. <
{ 
private 
readonly $
ISentCompanyEmailService 1
_service2 :
;: ;
public &
SentCompanyEmailController )
() *$
ISentCompanyEmailService* B#
sentCompanyEmailServiceC Z
)Z [
=>[ ]
_service^ f
=g h$
sentCompanyEmailService	i Ä
;
Ä Å
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
bool  
>  !
	SaveEmail" +
(+ ,
SentCompanyEmail, <
email= B
)B C
{ 	
try 
{ 
return 
Ok 
( 
_service "
." #
	SaveEmail# ,
(, -
email- 2
)2 3
)3 4
;4 5
} 
catch 
( 
	Exception 
ex 
)  
{ 
return 
Problem 
( 
ex !
.! "
Message" )
,) *
title+ 0
:0 1
$str2 M
)M N
;N O
} 
} 	
} 
} ˙
OD:\FON\master\Aplikacija\honey-beer-server\Controllers\ReservationController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class !
ReservationController &
:' (
ControllerBase) 7
{ 
private 
readonly 
IReservationService ,
_reservationService- @
;@ A
public !
ReservationController $
($ %
IReservationService% 8
reservationService9 K
)K L
=>M O
_reservationServiceP c
=d e
reservationServicef x
;x y
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str #
)# $
]$ %
public 
ActionResult 
< 
List  
<  !
Reservation! ,
>, -
>- .
LoadAllReservations/ B
(B C
)C D
{ 	
return 
Ok 
( 
_reservationService )
.) *
LoadAllReservations* =
(= >
)> ?
)? @
;@ A
} 	
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str #
)# $
]$ %
public 
ActionResult 
< 
List  
<  !
Reservation! ,
>, -
>- .
SelectReservations/ A
(A B
ReservationB M
reservationN Y
)Y Z
{ 	
return 
Ok 
( 
_reservationService )
.) *
SelectReservations* <
(< =
reservation= H
)H I
)I J
;J K
} 	
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str  
)  !
]! "
public 
ActionResult 
< 
bool  
>  !
SaveReservation" 1
(1 2
Reservation2 =
reservation> I
)I J
{ 	
try   
{!! 
return"" 
Ok"" 
("" 
_reservationService"" -
.""- .
SaveReservation"". =
(""= >
reservation""> I
)""I J
)""J K
;""K L
}## 
catch$$ 
($$ 
	Exception$$ 
ex$$ 
)$$  
{%% 
return&& 
Problem&& 
(&& 
ex&& !
.&&! "
Message&&" )
,&&) *
title&&+ 0
:&&0 1
$str&&2 S
)&&S T
;&&T U
}'' 
})) 	
}** 
}++ ¯
JD:\FON\master\Aplikacija\honey-beer-server\Controllers\QRCodeController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class 
QRCodeController !
:" #
ControllerBase$ 2
{ 
private 
readonly 
IQRCodeService '
_qrCodeService( 6
;6 7
public 
QRCodeController 
(  
IQRCodeService  .
qRCodeService/ <
)< =
=>> @
_qrCodeServiceA O
=P Q
qRCodeServiceR _
;_ `
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
bool  
>  !

SaveQRCode" ,
(, -
QRCode- 3
qrCode4 :
): ;
{ 	
try 
{ 
return 
Ok 
( 
_qrCodeService (
.( )

SaveQRCode) 3
(3 4
qrCode4 :
): ;
); <
;< =
} 
catch 
( 
	Exception 
ex 
)  
{ 
return 
Problem 
( 
ex !
.! "
Message" )
,) *
title+ 0
:0 1
$str2 P
)P Q
;Q R
} 
} 	
} 
} ¯
MD:\FON\master\Aplikacija\honey-beer-server\Controllers\PromotionController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class 
PromotionController $
:% &
ControllerBase' 5
{ 
private 
readonly 
IPromotionService *
_promotionService+ <
;< =
public 
PromotionController "
(" #
IPromotionService# 4
promotionService5 E
)E F
=>G I
_promotionServiceI Z
=[ \
promotionService] m
;m n
[ 	
HttpGet	 
] 
public 
ActionResult 
< 
List  
<  !
Event! &
>& '
>' (
LoadAllPromotions) :
(: ;
); <
{ 	
return 
Ok 
( 
_promotionService '
.' (
LoadAllPromotions( 9
(9 :
): ;
); <
;< =
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
ActionResult 
< 
List  
<  !
EventLocation! .
>. /
>/ 0%
LoadAllPromotionLocations1 J
(J K
)K L
{ 	
return 
Ok 
( 
_promotionService '
.' (%
LoadAllPromotionLocations( A
(A B
)B C
)C D
;D E
} 	
} 
} é
KD:\FON\master\Aplikacija\honey-beer-server\Controllers\ProductController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
ProductController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IProductService (
_productService) 8
;8 9
public 
ProductController  
(  !
IProductService! 0
productService1 ?
)? @
=>A C
_productServiceD S
=T U
productServiceV d
;d e
[ 	
HttpGet	 
] 
public 
ActionResult 
< 
List  
<  !
Product! (
>( )
>) *
GetAllProducts+ 9
(9 :
): ;
{ 	
return 
Ok 
( 
_productService %
.% &
GetAllProducts& 4
(4 5
)5 6
)6 7
;7 8
} 	
} 
} –
QD:\FON\master\Aplikacija\honey-beer-server\Controllers\PersonalEmailController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class #
PersonalEmailController (
:) *
ControllerBase+ 9
{ 
private 
readonly !
IPersonalEmailService .!
_personalEmailService/ D
;D E
public #
PersonalEmailController &
(& '!
IPersonalEmailService' < 
personalEmailService= Q
)Q R
=>S U!
_personalEmailServiceV k
=l m!
personalEmailService	n Ç
;
Ç É
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
bool  
>  !
	SendEmail" +
(+ ,
SentPersonalEmail, =
	sentEmail> G
)G H
{ 	
try 
{ 
return 
Ok 
( !
_personalEmailService /
./ 0
	SendEmail0 9
(9 :
	sentEmail: C
)C D
)D E
;E F
} 
catch 
( 
	Exception 
ex 
)  
{ 
return 
Problem 
( 
ex !
.! "
Message" )
,) *
title+ 0
:0 1
$str2 R
)R S
;S T
} 
} 	
} 
} ”
ID:\FON\master\Aplikacija\honey-beer-server\Controllers\OfferController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
OfferController  
:! "
ControllerBase# 1
{ 
private 
readonly 
IOfferService &
_offerService' 4
;4 5
public 
OfferController 
( 
IOfferService ,
offerService- 9
)9 :
=>; =
_offerService> K
=L M
offerServiceN Z
;Z [
[ 	
HttpGet	 
] 
public 
ActionResult 
< 
List  
<  !
Offer! &
>& '
>' (
GetAllOffers) 5
(5 6
)6 7
{ 	
return 
Ok 
( 
_offerService #
.# $
GetAllOffers$ 0
(0 1
)1 2
)2 3
;3 4
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
bool  
>  !
CreateOffer" -
(- .
OfferByCompany. <
offerByCompany= K
)K L
{ 	
try 
{ 
return 
Ok 
( 
_offerService '
.' (
CreateOffer( 3
(3 4
offerByCompany4 B
)B C
)C D
;D E
} 
catch 
( 
	Exception 
ex 
)  
{ 
return 
Problem 
( 
ex !
.! "
Message" )
,) *
title+ 0
:0 1
$str2 O
)O P
;P Q
} 
}   	
}!! 
}"" Ã 
RD:\FON\master\Aplikacija\honey-beer-server\Controllers\OfferByCompanyController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class $
OfferByCompanyController )
:* +
ControllerBase, :
{ 
private 
readonly "
IOfferByCompanyService /"
_offerByCompanyService0 F
;F G
public $
OfferByCompanyController '
(' ("
IOfferByCompanyService( >!
offerByCompanyService? T
)T U
=>V X"
_offerByCompanyServiceY o
=p q"
offerByCompanyService	r á
;
á à
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
ActionResult 
< 
List  
<  !
OfferByCompany! /
>/ 0
>0 1"
LoadAllOffersByCompany2 H
(H I
)I J
{ 	
return 
Ok 
( "
_offerByCompanyService ,
., -!
GetAllOffersByCompany- B
(B C
)C D
)D E
;E F
} 	
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
ActionResult 
< 
bool  
>  !
SaveOfferByCompany" 4
(4 5
OfferByCompany5 C
offerByCompanyD R
)R S
{ 	
try 
{ 
return 
Ok 
( "
_offerByCompanyService 0
.0 1
SaveOfferByCompany1 C
(C D
offerByCompanyD R
)R S
)S T
;T U
} 
catch 
( 
	Exception 
ex 
) 
{ 
return   
Problem   
(   
ex   !
.  ! "
Message  " )
,  ) *
title  + 0
:  0 1
$str  2 X
)  X Y
;  Y Z
}!! 
}"" 	
[## 	
HttpPost##	 
]## 
[$$ 	
Route$$	 
($$ 
$str$$ 
)$$ 
]$$ 
public%% 
ActionResult%% 
<%% 
bool%%  
>%%  ! 
UpdateOfferByCompany%%" 6
(%%6 7
OfferByCompany%%7 E
offerByCompany%%F T
)%%T U
{&& 	
try'' 
{(( 
return)) 
Ok)) 
()) "
_offerByCompanyService)) 0
.))0 1 
UpdateOfferByCompany))1 E
())E F
offerByCompany))F T
)))T U
)))U V
;))V W
}** 
catch++ 
(++ 
	Exception++ 
ex++ 
)++  
{,, 
return-- 
Problem-- 
(-- 
ex-- !
.--! "
Message--" )
,--) *
title--+ 0
:--0 1
$str--2 Z
)--Z [
;--[ \
}.. 
}// 	
[00 	
HttpGet00	 
]00 
[11 	
Route11	 
(11 
$str11 &
)11& '
]11' (
public22 
ActionResult22 
<22 
OfferByCompany22 *
>22* +
LoadOfferByCompany22, >
(22> ?
long22? C
id22D F
)22F G
{33 	
return44 
Ok44 
(44 "
_offerByCompanyService44 ,
.44, -
LoadOfferByCompany44- ?
(44? @
id44@ B
)44B C
)44C D
;44D E
}55 	
}66 
}77 ”
KD:\FON\master\Aplikacija\honey-beer-server\Controllers\MeetingController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[		 

EnableCors		 
(		 
$str		 #
)		# $
]		$ %
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
ApiController 
] 
public 

class 
MeetingController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IMeetingService (
_meetingService) 8
;8 9
public 
MeetingController  
(  !
IMeetingService! 0
meetingService1 ?
)? @
=>A C
_meetingServiceD S
=T U
meetingServiceV d
;d e
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
ActionResult 
< 
bool  
>  !
UpdateMeeting" /
(/ 0
Meeting0 7
meeting8 ?
)? @
{ 	
try 
{ 
return 
Ok 
( 
_meetingService )
.) *
UpdateMeeting* 7
(7 8
meeting8 ?
)? @
)@ A
;A B
} 
catch 
( 
	Exception 
ex 
)  
{ 
return 
Problem 
( 
ex !
.! "
Message" )
,) *
title+ 0
:0 1
$str2 S
)S T
;T U
} 
} 	
[ 	
HttpGet	 
] 
public   
ActionResult   
<   
List    
<    !
Meeting  ! (
>  ( )
>  ) *$
LoadAllAvailableMeetings  + C
(  C D
)  D E
{!! 	
return"" 
Ok"" 
("" 
_meetingService"" %
.""% &$
LoadAllAvailableMeetings""& >
(""> ?
)""? @
)""@ A
;""A B
}## 	
}$$ 
}%% ù
LD:\FON\master\Aplikacija\honey-beer-server\Controllers\LocationController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class 
LocationController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
ILocationService )
_locationService* :
;: ;
public 
LocationController !
(! "
ILocationService" 2
locationService3 B
)B C
=>D F
_locationServiceF V
=W X
locationServiceY h
;h i
[ 	
HttpGet	 
] 
public 
ActionResult 
< 
List  
<  !
Location! )
>) *
>* +
LoadAllLocations, <
(< =
)= >
{ 	
return 
Ok 
( 
_locationService &
.& '
LoadAllLocations' 7
(7 8
)8 9
)9 :
;: ;
} 	
} 
} Á
HD:\FON\master\Aplikacija\honey-beer-server\Controllers\FormController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[		 

EnableCors		 
(		 
$str		 #
)		# $
]		$ %
[

 
ApiController

 
]

 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
FormController 
:  !
ControllerBase" 0
{ 
private 
readonly 
IFormService %
_formService& 2
;2 3
public 
FormController 
( 
IFormService *
formService+ 6
)6 7
=>8 :
_formService; G
=H I
formServiceJ U
;U V
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
bool  
>  !
SaveForm" *
(* +
Event+ 0
	eventForm1 :
): ;
{ 	
try 
{ 
return 
Ok 
( 
_formService &
.& '

CreateForm' 1
(1 2
	eventForm2 ;
); <
)< =
;= >
} 
catch 
( 
	Exception 
ex 
)  
{ 
return 
Problem 
( 
ex !
.! "
Message" )
,) *
title+ 0
:0 1
$str2 L
)L M
;M N
} 
} 	
} 
} ˆ

ID:\FON\master\Aplikacija\honey-beer-server\Controllers\EventController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class 
EventController  
:! "
ControllerBase# 1
{ 
private 
readonly 
IEventService &
_eventService' 4
;4 5
public 
EventController 
( 
IEventService ,
eventService- 9
)9 :
=>; =
_eventService= J
=K L
eventServiceM Y
;Y Z
[ 	
HttpGet	 
] 
public 
ActionResult 
< 
List  
<  !
Event! &
>& '
>' (
LoadAllEvents) 6
(6 7
)7 8
{ 	
return 
Ok 
( 
_eventService #
.# $
LoadAllEvents$ 1
(1 2
)2 3
)3 4
;4 5
} 	
} 
} ù
LD:\FON\master\Aplikacija\honey-beer-server\Controllers\DiscountController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class 
DiscountController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
IDiscountService )
_discountService* :
;: ;
public 
DiscountController !
(! "
IDiscountService" 2
discountService3 B
)B C
=>D F
_discountServiceG W
=X Y
discountServiceZ i
;i j
[ 	
HttpGet	 
] 
public 
ActionResult 
< 
List  
<  !
Discount! )
>) *
>* +
LoadAllDiscounts, <
(< =
)= >
{ 	
return 
Ok 
( 
_discountService &
.& '
LoadAllDiscounts' 7
(7 8
)8 9
)9 :
;: ;
} 	
} 
} Ö!
LD:\FON\master\Aplikacija\honey-beer-server\Controllers\CustomerController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[		 

EnableCors		 
(		 
$str		 #
)		# $
]		$ %
[

 
ApiController

 
]

 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
CustomerController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
ICustomerService )
_customerService* :
;: ;
public 
CustomerController !
(! "
ICustomerService" 2
customerService3 B
)B C
{ 	
_customerService 
= 
customerService .
;. /
} 	
[ 	
HttpGet	 
] 
public 
ActionResult 
< 
List  
<  !
Customer! )
>) *
>* +
GetCustomers, 8
(8 9
)9 :
{; <
return 
Ok 
( 
_customerService &
.& '
GetAllCustomers' 6
(6 7
)7 8
)8 9
;9 :
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
Customer $
>$ %
CreateCustomer& 4
(4 5
Customer5 =
customer> F
)F G
{ 	
try 
{ 
customer 
= 
_customerService +
.+ ,
CreateCustomer, :
(: ;
customer; C
)C D
;D E
return   
Ok   
(   
customer   "
)  " #
;  # $
}!! 
catch"" 
("" 
	Exception"" 
ex"" 
)"" 
{## 
return$$ 
Problem$$ 
($$ 
ex$$ !
.$$! "
Message$$" )
,$$) *
title$$+ 0
:$$0 1
$str$$2 Q
)$$Q R
;$$R S
}%% 
})) 	
[** 	

HttpDelete**	 
]** 
public++ 
ActionResult++ 
<++ 
bool++  
>++  !
DeleteCustomer++" 0
(++0 1
Customer++1 9
customer++: B
)++B C
{,, 	
try-- 
{.. 
return// 
Ok// 
(// 
_customerService// *
.//* +
DeleteCustomer//+ 9
(//9 :
customer//: B
)//B C
)//C D
;//D E
}00 
catch11 
(11 
	Exception11 
ex11 
)11  
{22 
return33 
Problem33 
(33 
ex33 !
.33! "
Message33" )
,33) *
title33+ 0
:330 1
$str332 Q
)33Q R
;33R S
}44 
}55 	
[77 	
HttpPost77	 
]77 
[88 	
Route88	 
(88 
$str88 
)88 
]88 
public99 
ActionResult99 
<99 
bool99  
>99  !
SaveAllVotes99" .
(99. /
List99/ 3
<993 4
CustomerAnswer994 B
>99B C
votes99D I
)99I J
{:: 	
try;; 
{<< 
return== 
Ok== 
(== 
_customerService== *
.==* +
SaveAllVotes==+ 7
(==7 8
votes==8 =
)=== >
)==> ?
;==? @
}>> 
catch?? 
(?? 
	Exception?? 
ex?? 
)?? 
{@@ 
returnAA 
ProblemAA 
(AA 
exAA !
.AA! "
MessageAA" )
,AA) *
titleAA+ 0
:AA0 1
$strAA2 P
)AAP Q
;AAQ R
}BB 
}CC 	
}DD 
}EE Î
KD:\FON\master\Aplikacija\honey-beer-server\Controllers\CompanyController.cs
	namespace 	!
honey_beer_server_app
 
.  
Controllers  +
{ 
[ 

EnableCors 
( 
$str #
)# $
]$ %
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
CompanyController "
:# $
ControllerBase% 3
{ 
private 
readonly 
ICompanyService (
_companyService) 8
;8 9
public 
CompanyController  
(  !
ICompanyService! 0
companyService1 ?
)? @
{ 	
_companyService 
= 
companyService ,
;, -
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
bool  
>  !
CreateCompany" /
(/ 0
Company0 7
company8 ?
)? @
{ 	
try 
{ 
return 
Ok 
( 
_companyService )
.) *
CreateCompany* 7
(7 8
company8 ?
)? @
)@ A
;A B
} 
catch 
( 
	Exception 
ex 
)  
{ 
return 
Problem 
( 
ex !
.! "
Message" )
,) *
title+ 0
:0 1
$str2 P
)P Q
;Q R
} 
} 	
[   	

HttpDelete  	 
]   
public!! 
ActionResult!! 
<!! 
bool!!  
>!!  !
DeleteCompany!!" /
(!!/ 0
Company!!0 7
company!!8 ?
)!!? @
{"" 	
try## 
{$$ 
return%% 
Ok%% 
(%% 
_companyService%% )
.%%) *
DeleteCompany%%* 7
(%%7 8
company%%8 ?
)%%? @
)%%@ A
;%%A B
}&& 
catch'' 
('' 
	Exception'' 
ex'' 
)''  
{(( 
return)) 
Problem)) 
()) 
ex)) !
.))! "
Message))" )
,))) *
title))+ 0
:))0 1
$str))2 P
)))P Q
;))Q R
}** 
}++ 	
},, 
}-- 