//script generated by SiteXpert (www.xtreeme.com/sitexpert/)
//Copyright(C) 1998-2003 Xtreeme GmbH
function addLoadHandler(lh){
if(!document.loadHandlers){
document.loadHandlers=new Array()
document.loadHandlers[0]=lh
document.lastLoadHandler=0}
else{
document.lastLoadHandler++
document.loadHandlers[document.lastLoadHandler]=lh}}
addLoadHandler('p11')
window.onload=initializeAll
function p15(){return true;}
window.onerror=p15
function p01(n01){
if(!n01.id)return-1
end=n01.id.indexOf("SXE")
if(end==-1)
return-1
return parseInt(n01.id.substring(1,end))}
function getIndex(el){
ind=-1
tempColl=document.getElementsByTagName("DIV")
for(i=0;i<tempColl.length;i++){
var n01=tempColl [i]
if(n01.id==el){
ind=i
break}}
return ind}
function setPosition(){
var tp=document.getElementById('TP')
var nextY=tp.style.pixelTop+15
var baseX=tp.style.pixelLeft
var i
var tempColl=document.getElementsByTagName("DIV")
for(i=0;i<tempColl.length;i++){
n01=tempColl[i]
if(n01.id.indexOf('SX')!=-1){
if(n01.style.visibility !="hidden"){
n01.style.pixelTop=nextY
nextY+=n01.style.pixelHeight}
n01.style.pixelLeft=baseX}}
bel=document.getElementById("below")
if(bel){bel.style.pixelTop=nextY;bel.style.pixelLeft=baseX;}}
function p11(){
var nextind=0
var sxpind=0
var state
var i
var tempColl=document.getElementsByTagName("DIV")
for(i=0;i<tempColl.length;i++){
n01=tempColl[i]
if(n01.id&&n01.id.indexOf('SX')!=-1){
ii=p01(n01)
if(!state || nDays==0 || document.cookie.indexOf("sxpossaved")==-1){
if((n01.id.indexOf("SXC")!=-1&&ii==n04)|| ii>n04)
n01.style.visibility="hidden"
else
n01.style.visibility="visible"}
else if(n01.id.indexOf("SXP")!=-1){
var bset=false
if(i>=nextind&&state.substr(sxpind,1)=="0"){
var elid=n01.id.substring(0,n01.id.indexOf("SXP"))
nextind=p06(elid)
bset=true}
if(!bset&&i>=nextind){
n01.document.images ["M"+n01.id].src=imf+"/sxicon1.gif"
if(n02&&n01.document.images ["N"+n01.id].src&&n01.document.images ["N"+n01.id].src.indexOf('sxicon2.gif')!=-1)n01.document.images ["N"+n01.id].src=imf+"/sxicon3.gif"}
sxpind++}}}
setPosition()}
function p06Impl(el){
var n01=document.getElementById(el+"SXC")
var image=document.images ["M"+el+"SXP"]
var image2=null
if(n02)
image2=document.images ["N"+el+"SXP"]
var bShow=(n01.style.visibility=="hidden")
var fold=document.getElementById(el+'SXP')
p03(n01,image,image2)
var ind=getIndex(n01.id)+1
tempColl=document.getElementsByTagName("DIV")
while(ind !=-1&&ind<tempColl.length){
var retVal=0
elem=tempColl [ind]
if(elem.id&&elem.id.indexOf('SX')!=-1){
var tci=p01(elem)
var tii=p01(n01)
var bfold=(elem.id.indexOf("SXP")!=-1)
if(tci==(tii+1)){
if(bfold)
retVal=3
else
retVal=1}
else if(tci>(tii+1))
retVal=2
else if(tci==tii&&!bfold)
retVal=3
else
break
if(bShow){
if(retVal==3)
p03(elem,null,null)}
else{
elem.style.visibility="hidden"
if(bfold){
document.images ["M"+elem.id].src=imf+"/sxicon0.gif"
if(n02&&document.images["N"+elem.id].src&&document.images["N"+elem.id].src.indexOf('sxicon3.gif')!=-1)document.images["N"+elem.id].src=imf+"/sxicon2.gif"}}}
ind++}
return ind}
function p06(elm,lev,el){
if(!elm){elm="I"+lev+"SXE"+el;}
var ind=p06Impl(elm)
setPosition()
p10V4()
return ind}
function p03(n01,image,image2){
if(n01.style.visibility=="hidden"){
n01.style.visibility="visible"
if(image)
image.src=imf+"/sxicon1.gif"
if(image2&&image2.src&&image2.src.indexOf('sxicon2')!=-1)
image2.src=imf+"/sxicon3.gif"}
else{
n01.style.visibility="hidden"
if(image)
image.src=imf+"/sxicon0.gif"
if(image2&&image2.src&&image2.src.indexOf('sxicon3')!=-1)
image2.src=imf+"/sxicon2.gif"}}
function onExpandAll(){
newSrc=imf+"/sxicon1.gif"
divColl=document.getElementsByTagName("DIV")
for(i=0;i<divColl.length;i++){
el=divColl[i]
if(el.id.indexOf("SX")!=-1){
el.style.visibility="visible"
if(el.id.indexOf("SXP")!=-1){
document.images["M"+el.id].src=newSrc
if(n02&&document.images["N"+el.id].src&&document.images["N"+el.id].src.indexOf('sxicon2.gif')!=-1)
document.images["N"+el.id].src=imf+"/sxicon3.gif"}}}
setPosition()
p10V4()}
function onCollapseAll(){
newSrc=imf+"/sxicon0.gif"
divColl=document.getElementsByTagName("DIV")
for(i=0;i<divColl.length;i++){
el=divColl[i]
if(el.id.indexOf("SXP")!=-1){
document.images ["M"+el.id].src=newSrc
if(n02&&document.images ["N"+el.id].src&&document.images ["N"+el.id].src.indexOf('sxicon3.gif')!=-1)
document.images ["N"+el.id].src=imf+"/sxicon2.gif"}
if(el.id.indexOf("SXC")!=-1 || p01(el)>0)
el.style.visibility="hidden"}
setPosition()
p10V4()}
function p10(){}
function p10V4(){
return true}
function p12(el){
var retval=0
if(!el)return
if(el.id&&el.id.indexOf("SXP")!=-1){
p12(document.getElementById(el.par))
var ch=document.getElementById(el.id.substring(0,el.id.indexOf("SXP"))+"SXC")
if(ch&&ch.style.visibility=="hidden")p06(el.id.substring(0,el.id.indexOf("SXP")))
retval=1}
else if(el.id&&el.id.indexOf("SXC")!=-1){
p12(document.getElementById(el.id.substring(0,el.id.indexOf("SXC"))+"SXP"))
retval=1}
else{
if(el.id&&el.id.indexOf("SXR")!=-1)retval=1
if(p12(el.offsetParent))retval=1}
return retval}
function initializeAll(){
var i
for(i=0;i<=document.lastLoadHandler;i++){
eval(document.loadHandlers[i]+'();')}}
