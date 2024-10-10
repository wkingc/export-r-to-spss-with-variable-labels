SET DECIMAL=DOT.

DATA LIST FILE= "export_r_to_spss_with_variable_labels.txt"  free (TAB)
ENCODING="Locale"
/ manu (F8.0) model (F8.0) displ * year (F8.0) cyl (F8.0) trans (F8.0) 
 drv (F8.0) cty hwy * fl (F8.0) class (F8.0) dp (A10) rn * party 
 (F8.0) comments (A46) 
  .

VARIABLE LABELS
manu "manufacturer" 
 model "model name" 
 displ "engine displacement, in litres" 
 year "year of manufacture" 
 cyl "number of cylinders" 
 trans "type of transmission" 
 drv "drive type" 
 cty "city miles per gallon" 
 hwy "highway miles per gallon" 
 fl "fuel type" 
 class "type of car" 
 dp "date of purchase" 
 rn "some random numbers that are generated from a normal distrubtion with mean = 10 and sd = 5" 
 party "some random political parties" 
 comments "some random comments" 
 .

VALUE LABELS
/
manu 
1 "audi" 
 2 "chevrolet" 
 3 "dodge" 
 4 "ford" 
 5 "honda" 
 6 "hyundai" 
 7 "jeep" 
 8 "land rover" 
 9 "lincoln" 
 10 "mercury" 
 11 "nissan" 
 12 "pontiac" 
 13 "subaru" 
 14 "toyota" 
 15 "volkswagen" 
/
model 
1 "4runner 4wd" 
 2 "a4" 
 3 "a4 quattro" 
 4 "a6 quattro" 
 5 "altima" 
 6 "c1500 suburban 2wd" 
 7 "camry" 
 8 "camry solara" 
 9 "caravan 2wd" 
 10 "civic" 
 11 "corolla" 
 12 "corvette" 
 13 "dakota pickup 4wd" 
 14 "durango 4wd" 
 15 "expedition 2wd" 
 16 "explorer 4wd" 
 17 "f150 pickup 4wd" 
 18 "forester awd" 
 19 "grand cherokee 4wd" 
 20 "grand prix" 
 21 "gti" 
 22 "impreza awd" 
 23 "jetta" 
 24 "k1500 tahoe 4wd" 
 25 "land cruiser wagon 4wd" 
 26 "malibu" 
 27 "maxima" 
 28 "mountaineer 4wd" 
 29 "mustang" 
 30 "navigator 2wd" 
 31 "new beetle" 
 32 "passat" 
 33 "pathfinder 4wd" 
 34 "ram 1500 pickup 4wd" 
 35 "range rover" 
 36 "sonata" 
 37 "tiburon" 
 38 "toyota tacoma 4wd" 
/
year 
1 "1999" 
 2 "2008" 
/
cyl 
1 "4" 
 2 "5" 
 3 "6" 
 4 "8" 
/
trans 
1 "auto(av)" 
 2 "auto(l3)" 
 3 "auto(l4)" 
 4 "auto(l5)" 
 5 "auto(l6)" 
 6 "auto(s4)" 
 7 "auto(s5)" 
 8 "auto(s6)" 
 9 "manual(m5)" 
 10 "manual(m6)" 
/
drv 
1 "front-wheel drive" 
 2 "rear wheel drive" 
 3 "4wd" 
/
fl 
1 "c" 
 2 "d" 
 3 "e" 
 4 "p" 
 5 "r" 
/
class 
1 "2seater" 
 2 "compact" 
 3 "midsize" 
 4 "minivan" 
 5 "pickup" 
 6 "subcompact" 
 7 "suv" 
/
party 
1 "republican" 
 2 "democrat" 
 3 "independent" 
.
VARIABLE LEVEL year, cyl 
 (ordinal).
VARIABLE LEVEL displ, cty, hwy, rn 
 (scale).

EXECUTE.

SAVE OUTFILE = "export_r_to_spss_with_variable_labels.sav".
SAVE OUTFILE = "export_r_to_spss_with_variable_labels.sav".