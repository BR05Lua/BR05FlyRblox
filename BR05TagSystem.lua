local Cd,pd,vd,Yc,Ke,Re=pairs,getmetatable,type,bit32.bxor local Ge,uc,Fb,tf,X,oa,af,Nf,gb,nf,j,Ic,qe,Ma,Gf,Xe,Zb,Xa,sb,ab,td,jd,kb,bc,ue,d_,Q,a_,Ac,yb,cb,t_,Bb,ef,gd,Ia,Nd,Je,ib,Gd,hb,Ve,la,Jd;gd=(getfenv());Xa,Nd,Ma=(string.char),(string.byte),(bit32 .bxor);X=function(Zd,ae)local S,de,te,Tb,Dd,Rf,Wd,y;Wd,Dd={},function(Ta,ha,Ld)Wd[ha]=Yc(Ta,53633)-Yc(Ld,17055)return Wd[ha]end;Rf=Wd[-22402]or Dd(13550,-22402,64443)while Rf~=38394 do if Rf>31330 then if Rf>34523 then de=te if Tb~=Tb then Rf=Wd[17366]or Dd(22081,17366,17018)else Rf=1469 end else return y end elseif Rf>11339 then te=te+S;de=te if te~=te then Rf=Wd[-9813]or Dd(9637,-9813,12246)else Rf=Wd[10156]or Dd(51472,10156,20555)end elseif Rf>=8188 then if Rf<=8188 then y,Rf=y..Xa(Ma(Nd(Zd,(de-74)+1),Nd(ae,(de-74)%#ae+1))),Wd[12052]or Dd(17353,12052,21881)else y='';S,Tb,te,Rf=1,(#Zd-1)+74,74,48648 end else if(S>=0 and te>Tb)or((S<0 or S~=S)and te<Tb)then Rf=34523 else Rf=8188 end end end end;Gf=(select);Nf=(function(...)return{[1]={...},[2]=Gf('#',...)}end);ef=((function()local function He(Te,kc,Rd)if kc>Rd then return end return Te[kc],He(Te,kc+1,Rd)end return He end)());cb,Jd=(string.gsub),(string.char);Ge=(function(lf)lf=cb(lf,'[^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=]','')return(lf:gsub('.',function(ec)if(ec=='=')then return''end local cd,Cf='',(('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'):find(ec)-1)for Lc=6,1,-1 do cd=cd..(Cf%2^Lc-Cf%2^(Lc-1)>0 and'1'or'0')end return cd end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(cc)if(#cc~=8)then return''end local Mb=0 for Hb=1,8 do Mb=Mb+(cc:sub(Hb,Hb)=='1'and 2^(8-Hb)or 0)end return Jd(Mb)end))end);Gd,oa,Ve,qe,d_,tf,ue,af=gd[X('\239\238I\245\244\\','\156\154;')][X('\209\57\231\197\52\252','\164W\151')],gd[X('\196\225\21\222\251\0','\183\149g')][X('\t\15\24','z')],gd[X('O\17\252U\v\233','<e\142')][X('\174+\184\55','\204R')],gd[X('\206\213\216\143\158','\172\188')][X('\222\191\238\219\170\242','\178\204\134')],gd[X('rWd\r\"','\16>')][X('S\16DH\5X','!c,')],gd[X('@\169V\243\16','\"\192')][X('\145U\157P','\243\52')],gd[X('\199\242\209\255\214','\179\147')][X('\142\54h\142\56r','\237Y\6')],{};kb=(function(pf)local fb=af[pf]if not(fb)then else return fb end local O,ga,Z,ra,Xb=qe(1,11),qe(1,5),1,{},''while Z<=#pf do local Df=Ve(pf,Z);Z=Z+1 for z=130,(8)+129 do local Oc=nil if tf(Df,1)~=0 then if Z<=#pf then Oc=oa(pf,Z,Z);Z=Z+1 end else if not(Z+1<=#pf)then else local Uc=Gd(X('M:A','s'),pf,Z);Z=Z+2 local Ed,mf=#Xb-d_(Uc,5),tf(Uc,(ga-1))+3;Oc=oa(Xb,Ed,Ed+mf-1)end end Df=d_(Df,1)if not(Oc)then else ra[#ra+1]=Oc;Xb=oa(Xb..Oc,-O)end end end local Md=ue(ra);af[pf]=Md return Md end);ib=(function()local uf,ma,Ne,xd,ua,Sb,hc,Wc,U,Va,Zc,Ff=gd[X('\194\236\212\182\146','\160\133')][X('M\153@\147','/\225')],gd[X(' \215\54\141p','B\190')][X('N\137B\140',',\232')],gd[X('\251\218\237\128\171','\153\179')][X('\169\164\185','\203')],gd[X('\138q\156+\218','\232\24')][X('\222\53\1\219 \29','\178Fi')],gd[X('\219h\205\50\139','\185\1')][X('\129 \20\154\53\b','\243S|')],gd[X('\242\161\54\232\187#','\129\213D')][X('42%','G')],gd[X('\232\0\24\242\26\r','\155tj')][X('z\230i\236','\n\135')],gd[X("\'Q\26=K\15",'T%h')][X('\176\a\151\164\n\140','\197i\231')],gd[X('\130I\194\152S\215','\241=\176')][X('\214\193\212','\164')],gd[X('\28\4\n\t\r','he')][X('7\230$\236','G\135')],gd[X('\148\244\130\249\133','\224\149')][X('\157wk\137zp','\232\25\27')],gd[X('\187z\173w\170','\207\27')][X('\216R\26\212N\29','\177<i')]local function Ee(p,Cc,B,Pe,lc)local G,Za,rd,ke=p[Cc],p[B],p[Pe],p[lc]local df;G=ma(G+Za,4294967295);df=uf(ke,G);ke=ma(Ne(xd(df,16),ua(df,16)),4294967295);rd=ma(rd+ke,4294967295);df=uf(Za,rd);Za=ma(Ne(xd(df,12),ua(df,20)),4294967295);G=ma(G+Za,4294967295);df=uf(ke,G);ke=ma(Ne(xd(df,8),ua(df,24)),4294967295);rd=ma(rd+ke,4294967295);df=uf(Za,rd);Za=ma(Ne(xd(df,7),ua(df,25)),4294967295);p[Cc],p[B],p[Pe],p[lc]=G,Za,rd,ke return p end local Vb,Db={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}local kd=function(r_,Ib,Ya)Vb[1],Vb[2],Vb[3],Vb[4]=1666052747,2325679498,3516553330,2596169109 for E=170,(8)+169 do Vb[(E-169)+4]=r_[(E-169)]end Vb[13]=Ib for Gb=26,(3)+25 do Vb[(Gb-25)+13]=Ya[(Gb-25)]end for c=236,(16)+235 do Db[(c-235)]=Vb[(c-235)]end for Hc=96,(10)+95 do Ee(Db,1,5,9,13);Ee(Db,2,6,10,14);Ee(Db,3,7,11,15);Ee(Db,4,8,12,16);Ee(Db,1,6,11,16);Ee(Db,2,7,12,13);Ee(Db,3,8,9,14);Ee(Db,4,5,10,15)end for Xc=198,(16)+197 do Vb[(Xc-197)]=ma(Vb[(Xc-197)]+Db[(Xc-197)],4294967295)end return Vb end local function jf(wd,Oe,If,cf,wc)local re_=#cf-wc+1 if re_<64 then local Pb=Sb(cf,wc);cf=Pb..U(X('\221','\221'),64-re_);wc=1 end gd[X('\31JI\27KN','~9:')](#cf>=64)local Yb,Sc=Va(Wc(X('K\146S\130\27\57\20*f2\5\50w\137\26\28C\146S\130\27\57\20*f2\5\50w\137\26\28C','w\219g\203/p cR{1{C\192.U'),cf,wc)),kd(wd,Oe,If)for _a=68,(16)+67 do Yb[(_a-67)]=uf(Yb[(_a-67)],Sc[(_a-67)])end local Jb=hc(X('|9Q\208\"w\244\30\163t\227\130F\147hut9Q\208\"w\244\30\163t\227\130F\147hut','@pe\153\22>\192W\151=\215\203r\218\\<'),Zc(Yb))if not(re_<64)then else Jb=Sb(Jb,1,re_)end return Jb end local function Pa(Be)local Qf=''for ea=167,(#Be)+166 do Qf=Qf..Be[(ea-166)]end return Qf end local function N(ya,Ba,Hf,_b)local Tc,zc,Vc,P=Va(Wc(X('d\n\136[\238\151\175\5l\n\136[\238\151\175\5l','XC\188\18\218\222\155L'),ya)),Va(Wc(X('\195j\153\182\23\228\203','\255#\173'),Hf)),{},1 while P<=#_b do Ff(Vc,jf(Tc,Ba,zc,_b,P));P=P+64;Ba=Ba+1 end return Pa(Vc)end return function(mb,zd,fc)return N(fc,0,zd,mb)end end)();la=(function()local ia,aa,e_,ja,pb,ie,oe,tc,rb,K,we=gd[X('\185\253\175\167\233','\219\148')][X("*\182\'\172",'H\216')],gd[X('\157\202\139\144\205','\255\163')][X("I\'D-",'+_')],gd[X('E\204S\150\21',"\'\165")][X('V\218\5M\207\25','$\169m')],gd[X('gyq#7','\5\16')][X('1\5\29\52\16\1',']vu')],gd[X('\31\96\t:O','}\t')][X('\14%\2 ','lD')],gd[X('\r\197\27\159]','o\172')][X('\234\231\250','\136')],gd[X(')\17?\28\56',']p')][X('\132p\223\136l\216','\237\30\172')],gd[X('\235\196\253\201\250','\159\165')][X('\237\196J\249\201Q','\152\170:')],gd[X('6\170N,\176[','E\222<')][X('\240\231\242','\130')],gd[X('^\138\129D\144\148','-\254\243')][X('\254\186\252\160','\157\210')],gd[X('\247\238\207\237\244\218','\132\154\189')][X('V\207@\211','4\182')]local function ve(Pf,me)local Af,Bd=e_(Pf,me),ja(Pf,32-me)return pb(ie(Af,Bd),4294967295)end local h=function(q)local D={1116352408,1899447441,3049323471,3921009573,961987163,1508970993,2453635748,2870763221,3624381080,310598401,607225278,1426881987,1925078388,2162078206,2614888103,3248222580,3835390401,4022224774,264347078,604807628,770255983,1249150122,1555081692,1996064986,2554220882,2821834349,2952996808,3210313671,3336571891,3584528711,113926993,338241895,666307205,773529912,1294757372,1396182291,1695183700,1986661051,2177026350,2456956037,2730485921,2820302411,3259730800,3345764771,3516065817,3600352804,4094571909,275423344,430227734,506948616,659060556,883997877,958139571,1322822218,1537002063,1747873779,1955562222,2024104815,2227730452,2361852424,2428436474,2756734187,3204031479,3329325298}local function Ze(k)local Oa=#k local nd=Oa*8;k=k..X('Q','\209')local vb=64-((Oa+9)%64)if not(vb~=64)then else k=k..rb(X('B','B'),vb)end k=k..K(pb(e_(nd,56),255),pb(e_(nd,48),255),pb(e_(nd,40),255),pb(e_(nd,32),255),pb(e_(nd,24),255),pb(e_(nd,16),255),pb(e_(nd,8),255),pb(nd,255))return k end local function pe(wb)local Ye={}for hd=142,(#wb)+141,64 do oe(Ye,wb[X('\169\175\184','\218')](wb,(hd-141),(hd-141)+63))end return Ye end local function sd(od,je)local Jf={}for fd=238,(64)+237 do if(fd-237)<=16 then Jf[(fd-237)]=ie(ja(we(od,((fd-237)-1)*4+1),24),ja(we(od,((fd-237)-1)*4+2),16),ja(we(od,((fd-237)-1)*4+3),8),we(od,((fd-237)-1)*4+4))else local wa,C=aa(ve(Jf[(fd-237)-15],7),ve(Jf[(fd-237)-15],18),e_(Jf[(fd-237)-15],3)),aa(ve(Jf[(fd-237)-2],17),ve(Jf[(fd-237)-2],19),e_(Jf[(fd-237)-2],10));Jf[(fd-237)]=pb(Jf[(fd-237)-16]+wa+Jf[(fd-237)-7]+C,4294967295)end end local V,b_,_f,M,La,se_,he,ca=tc(je)for ne=213,(64)+212 do local ze,ge=aa(ve(La,6),ve(La,11),ve(La,25)),aa(pb(La,se_),pb(ia(La),he))local ff,i_,J=pb(ca+ze+ge+D[(ne-212)]+Jf[(ne-212)],4294967295),aa(ve(V,2),ve(V,13),ve(V,22)),aa(pb(V,b_),pb(V,_f),pb(b_,_f))local Ca=pb(i_+J,4294967295);ca=he;he=se_;se_=La;La=pb(M+ff,4294967295);M=_f;_f=b_;b_=V;V=pb(ff+Ca,4294967295)end return pb(je[1]+V,4294967295),pb(je[2]+b_,4294967295),pb(je[3]+_f,4294967295),pb(je[4]+M,4294967295),pb(je[5]+La,4294967295),pb(je[6]+se_,4294967295),pb(je[7]+he,4294967295),pb(je[8]+ca,4294967295)end q=Ze(q)local zb,jc,Ce=pe(q),{1779033703,3144134277,1013904242,2773480762,1359893119,2600822924,528734635,1541459225},''for na,le in gd[X('\223\138\253\223\136\239','\182\250\156')](zb)do jc={sd(le,jc)}end for ud,db in gd[X('\145\55B\145\53P','\248G#')](jc)do Ce=Ce..K(pb(e_(db,24),255));Ce=Ce..K(pb(e_(db,16),255));Ce=Ce..K(pb(e_(db,8),255));Ce=Ce..K(pb(db,255))end return Ce end return h end)()local Ea,Dc,Jc,Ja,Se,Qe,We,lb,qd,sf,xc,ac,Da,l_,Ad,ye,ub,va,w_,Gc,ee,Qd,Lb,Ud,of,xe,Sa,bd,bf,hf=gd[X('\243\5\247\25','\135|')],gd[X('\230\31\247\16\250','\150|')],gd[X('\22\16\1\r\1','sb')],gd[X('\132\179\171\154\157\190\160\157','\240\220\197\239')],gd[X('Xa}\\\96z','9\18\14')],gd[X('?\254M)\248U','L\155!')],gd[X('n\208\144+\170\2|\193\133$\163\19','\29\181\228F\207v')],gd[X('R1\188H+\169','!E\206')][X('\215\202\132\220\196\130','\177\165\246')],gd[X('G\209|]\203i','4\165\14')][X('\225\31u\245\18n','\148q\5')],gd[X('.\213>4\207+',']\161L')][X('/)>','\\')],gd[X('\174;\f\180!\25','\221O~')][X('T\156B\128','6\229')],gd[X('\213uC\207oV','\166\1\49')][X('\197\252\199\230','\166\148')],gd[X('\226!\244,\243','\150@')][X('\184\183\163\189','\213\216')],gd[X('h\213~\216y','\28\180')][X('\131W\144]','\243\54')],gd[X('h\210~\223y','\28\179')][X('\150\165\213\148\163\213','\245\215\176')],gd[X('\206\127\216r\223','\186\30')][X('O\182\150C\170\145','&\216\229')],gd[X('\183\3\161\14\166','\195b')][X('\25\162\177\25\172\171','z\205\223')],gd[X('*\128a9<\155z8,','I\239\19V')][X('\251\181U\249\179U','\152\199\48')],gd[X('\220*An\202\49Zo\218','\191E3\1')][X('\171\131\183\134\182','\210\234')],gd[X('}\243\215\54k\232\204\55{','\30\156\165Y')][X('\23\238\239\16\230\249','e\139\156')],gd[X('\215\149\185\152\193\142\162\153\209','\180\250\203\247')][X("L\'@8J",'/K')],gd[X('*\28\230+\28\252;','My\146')],gd[X('e2sh5','\a[')][X('\157\144\141','\255')],gd[X('\159\133\137\223\207','\253\236')][X('\233\138\228\128','\139\242')],gd[X('\22\245\0\175F','t\156')][X('4\236\56\233','V\141')],gd[X('\203\48\221j\155','\169Y')][X('3]4Z%','Q)')],gd[X('W\156A\198\a','5\245')][X('*\165\31\49\176\3','X\214w')],gd[X('\15\148\25\206_','m\253')][X('go\201bz\213','\v\28\161')],gd[X('PlF6\0','2\5')][X('\244h\231\227q\240\229','\145\16\147')],{[18966]={{0,7,false},{9,0,false},{1,0,false},{6,7,true},{0,10,true},{0,10,false},{1,0,false},{1,0,true},{1,0,false},{1,9,true},{9,0,false},{1,2,false},{3,8,true},{6,7,true},{9,0,false},{1,0,false},{1,1,false},{5,0,false},{1,7,false},{3,7,true},{9,10,false},{6,10,false},{3,4,true},{9,10,false},{1,0,false},{6,10,true},{1,0,false},{0,1,true},{1,0,true},{1,9,true},{0,10,false},{1,0,true},{0,8,false},{9,4,true},{9,0,false},{1,5,false},{6,3,false},{6,7,true},{3,10,true},{5,9,false},{0,9,false},{3,4,false},{9,0,false},{1,0,false},{0,9,false},{1,4,false},{9,0,true},{6,1,false},{9,0,false},{5,3,true},{9,0,false},{1,1,true},{9,0,true},{1,5,false},{9,9,false},{1,0,false},{6,5,false},{9,9,false},{0,3,false},{0,5,false},{1,7,false},{0,4,false},{0,7,true},{6,10,false},{9,8,false},{1,10,true},{5,10,true},{1,7,false},{0,7,true},{1,0,true},{9,7,true},{6,4,false},{1,0,false},{3,4,true},{1,9,true},{6,9,true},{3,3,false},{1,0,true},{1,9,true},{6,4,true},{1,7,false},{1,7,false},{1,0,true},{6,0,false},{6,7,false},{0,8,false},{6,10,true},{1,0,false},{9,1,false},{9,10,false},{3,9,false},{9,10,true},{1,0,false},{6,5,true},{6,6,false},{1,0,false},{9,7,false},{0,8,false},{1,3,true},{1,9,true},{5,8,true},{9,0,false},{9,8,true},{1,3,false},{0,5,true},{6,7,false},{6,7,false},{9,0,false},{1,10,true},{9,1,false},{9,5,true},{6,8,false},{3,3,true},{1,0,false},{0,3,true},{9,7,true},{3,7,true},{6,0,false},{1,9,true},{5,5,false},{6,7,false},{6,3,false},{0,10,true},{9,3,true},{6,4,true},{9,0,true},{1,0,false},{9,10,true},{1,7,false},{1,0,false},{1,1,false},{5,4,false},{1,0,false},{9,5,false},{1,0,false},{1,2,false},{9,1,false},{9,0,false},{1,5,false},{1,0,false},{1,0,false},{3,3,true},{5,1,false},{1,0,false},{5,8,true},{9,9,true},{1,9,true},{9,5,true},{1,9,true},{0,3,false},{3,5,false},{5,4,true},{5,9,false},{6,7,true},{5,7,true},{9,7,true},{0,5,true},{3,0,false},{0,4,false},{1,9,false},{0,9,false},{1,0,false},{9,4,true},{5,1,true},{0,5,false},{3,9,true},{9,0,false},{1,0,true},{1,0,false},{5,10,true},{0,4,true},{1,3,false},{3,9,true},{1,4,false},{3,5,false},{5,0,false},{1,0,false},{0,5,true},{1,5,false},{9,0,true},{0,8,false},{5,10,true},{6,0,true},{1,3,false},{6,10,true},{9,1,false},{0,3,false},{6,7,false},{1,9,true},{9,0,true},{1,1,true},{0,10,false},{3,3,false},{1,0,false},{9,10,false},{1,5,false},{3,9,false},{3,8,true},{1,0,false},{1,0,false},{3,8,true},{1,3,false},{5,1,true},{1,4,true},{6,9,false},{9,0,true},{6,5,true},{9,8,false},{1,3,false},{1,0,false},{9,8,true},{9,5,true},{9,3,false},{1,9,false},{3,5,false},{3,7,true},{1,10,false},{1,0,false},{0,1,false},{6,0,false},{3,9,true},{1,5,false},{1,0,true},{3,3,true},{5,0,false},{6,8,false},{9,1,true},{3,8,false},{1,0,false},{3,8,true},{1,0,true},{9,1,false},{3,10,false},{9,0,true},{1,5,true},{0,10,false},{9,0,false},{0,5,false},{5,10,true},{5,9,false},{9,5,true},{6,7,true},{1,0,false},{1,0,false},{5,8,false},{9,5,true},{3,0,true},{1,0,false},{1,0,false},{6,1,false},{9,3,false},{5,3,false},{6,8,false},{9,9,true},{0,10,true},{1,7,false}},[35365]={},[49874]={}}local oc=(function(_d)local Ue=hf[35365][_d]if Ue then return Ue end local Fd=1 local function Ae()local mc,yd,Ha,u_,kf,n_,fe,Yd,da,m,dd,Cb,Ua,F,Lf,Qb,Ec,pc,o_,Td,Y,Ka,I,v,zf,De,Rb,Ie,W,R,gc,f_;mc,pc={},function(g,Ef,id)mc[id]=Yc(Ef,41084)-Yc(g,54403)return mc[id]end;da=mc[-14970]or pc(35587,20301,-14970)repeat if da<=32779 then if da<=16091 then if da<4710 then if da<2948 then if da<2001 then if da<=123 then if da>=67 then if da>67 then da,f_=mc[23605]or pc(31206,3575,23605),Ud(Ie,20)continue else fe=o_ if kf~=kf then da=mc[-2254]or pc(17030,100725,-2254)else da=58317 end end else Ie=f_;gc=Lb(gc,bd(of(Ie,127),(Ua-217)*7))if(not xe(Ie,128))then da=mc[-10533]or pc(10691,101292,-10533)continue else da=mc[-6814]or pc(63889,14267,-6814)continue end da=mc[-28848]or pc(49259,57313,-28848)end else if Lf==3 then da=mc[23742]or pc(17975,30777,23742)continue elseif Lf==8 then da=mc[9204]or pc(60193,1066,9204)continue elseif(Lf==7)then da=mc[25248]or pc(53043,63943,25248)continue else da=mc[-3079]or pc(28721,106691,-3079)continue end da=mc[21214]or pc(12102,105639,21214)end elseif da<=2478 then if da<2453 then da=mc[-18356]or pc(34792,17939,-18356)continue elseif da<=2453 then da,Ha=mc[-30112]or pc(41073,111270,-30112),Nf(kf)continue else u_=qd(X('\202','\136'),_d,Fd);Fd,da=Fd+1,mc[-23131]or pc(47560,56351,-23131)end elseif da>2905 then R,yd,da=I,nil,mc[-14925]or pc(12968,82442,-14925)else kf=kf+fe;Ka=kf if kf~=kf then da=mc[16524]or pc(34234,1256,16524)else da=3253 end end elseif da>3306 then if da>=4355 then if da>4355 then Ie[26698],da=bf(Ie[58061],0,16),mc[-31028]or pc(33841,12724,-31028)else da,De,I=mc[-8934]or pc(29608,5239,-8934),dd,nil end elseif da>3756 then da,Ka=49608,Ud(u_,20)continue else Ha,da=Nf(nil),mc[-7311]or pc(40041,110918,-7311)end elseif da>3253 then if da>3296 then Y=Y+Qb;gc=Y if Y~=Y then da=mc[-9578]or pc(9952,81661,-9578)else da=mc[19156]or pc(6019,32203,19156)end else R=qd(X('\209','\147'),_d,Fd);Fd,da=Fd+1,49799 end elseif da>3196 then if(fe>=0 and kf>F)or((fe<0 or fe~=fe)and kf<F)then da=mc[-10136]or pc(6062,112372,-10136)else da=mc[17141]or pc(44218,123151,17141)end elseif da<=2948 then n_,da=nil,mc[-30014]or pc(38882,20399,-30014)else Ua[(n_-147)],da=Ae(),mc[28819]or pc(25666,98329,28819)end elseif da>9337 then if da>13049 then if da<=15918 then if da>15883 then zf=qd(X('\235\179','\215'),_d,Fd);Fd,da=Fd+8,mc[-32180]or pc(40646,52930,-32180)else da,Ie[26698]=mc[-6664]or pc(29223,18374,-6664),Ec[Ie[6206]+1]end else Yd=Yd+Ua;f_=Yd if Yd~=Yd then da=24949 else da=9149 end end elseif da<=12754 then if da<12398 then da=mc[-25945]or pc(32971,53721,-25945)continue elseif da<=12398 then yd,da=Ud(v,20),21139 continue else n_,da=nil,mc[-6531]or pc(35077,12316,-6531)end elseif da>13018 then gc=Y if m~=m then da=mc[12118]or pc(60800,17757,12118)else da=6839 end else Ha=qd(X('\96','\"'),_d,Fd);da,Fd=55741,Fd+1 end elseif da>=6839 then if da>8678 then if da>9149 then da,Ha=30392,zf continue else if(Ua>=0 and Yd>W)or((Ua<0 or Ua~=Ua)and Yd<W)then da=mc[-18162]or pc(13209,125171,-18162)else da=mc[-7771]or pc(51425,2737,-7771)end end elseif da<7517 then if(Qb>=0 and Y>m)or((Qb<0 or Qb~=Qb)and Y<m)then da=mc[21979]or pc(60159,19174,21979)else da=mc[-18584]or pc(2067,21874,-18584)end elseif da<=7517 then da,Qb=54262,Ud(gc,-95186102)continue else da,Ec=mc[31698]or pc(38619,102850,31698),Ud(Yd,20)continue end elseif da>=5954 then if da<=6270 then if da<=5954 then f_=Ua;Ie=of(f_,255);Lf=hf[18966][Ie+1];n_,Ha,zf=Lf[1],Lf[2],Lf[3];o_={[46905]=0,[26069]=Ie,[6206]=0,[58061]=0,[18054]=0,[15670]=0,[30509]=0,[906]=nil,[65394]=0,[53961]=Ha,[26698]=0,[39911]=0,[55339]=0,[50894]=0,[490]=0};ye(Y,o_)if n_==6 then da=mc[-10678]or pc(7960,110154,-10678)continue elseif n_==1 then da=mc[-4008]or pc(48188,130779,-4008)continue elseif(n_==9)then da=mc[1453]or pc(43549,27868,1453)continue else da=mc[12313]or pc(36159,111858,12313)continue end da=mc[30827]or pc(65316,17925,30827)else da,Ec=22145,nil end else if(Lf==6)then da=mc[-28906]or pc(39700,5257,-28906)continue else da=mc[3470]or pc(10139,83822,3470)continue end da=mc[26451]or pc(37651,10458,26451)end elseif da<=4710 then o_=of(Sa(n_,10),1023);da,Ie[18054]=mc[19977]or pc(59504,56949,19977),Ec[o_+1]else if(Ec>=0 and Qb>gc)or((Ec<0 or Ec~=Ec)and Qb<gc)then da=mc[-4437]or pc(53705,26048,-4437)else da=mc[17056]or pc(15619,65660,17056)end end elseif da>22460 then if da>27317 then if da>=30392 then if da>=31679 then if da>31679 then da,Yd=mc[23942]or pc(32095,65673,23942),Ud(W,-95186102)continue else da=mc[3576]or pc(54814,8916,3576)continue end elseif da>30392 then if(Ha==3)then da=mc[-25247]or pc(26672,23689,-25247)continue else da=mc[-6185]or pc(36280,14893,-6185)continue end da=mc[-3035]or pc(6050,107595,-3035)else n_,da=Ha,mc[24331]or pc(9223,81034,24331)end elseif da>=28580 then if da<=28580 then f_=f_+Lf;n_=f_ if f_~=f_ then da=mc[20401]or pc(19902,23690,20401)else da=44112 end else o_=zf if o_==0 then da=mc[12528]or pc(6318,102533,12528)continue else da=mc[22976]or pc(5344,98591,22976)continue end da=mc[19091]or pc(26334,121553,19091)end else da,m=mc[7235]or pc(47343,116759,7235),false end elseif da<=25604 then if da<24949 then if da<=23565 then if Lf==9 then da=mc[-6633]or pc(42122,99550,-6633)continue end da=mc[-4883]or pc(56169,61820,-4883)else kf,da=nil,mc[-32010]or pc(53688,18364,-32010)end elseif da>25529 then da,n_=mc[-20753]or pc(54299,3446,-20753),ef(Ha[1],1,Ha[2])elseif da>24949 then return{[54297]=Y,[8042]=v,[53224]=Ua,[49497]=De,[33763]=R,[47602]=''}else Yd,da,Ua,W=250,47734,1,(Td)+249 end elseif da<25950 then if da>25780 then Ha,da=Nf'',mc[29922]or pc(11744,79671,29922)continue else Ie[26698]=Ec[bf(Ie[58061],0,24)+1];da,Ie[46905]=mc[-13580]or pc(14328,99565,-13580),bf(Ie[58061],31,1)==1 end elseif da<=25950 then Ie[26698],da=Ec[Ie[65394]+1],mc[-7928]or pc(50415,61950,-7928)else Ec=Ec+W;Ua=Ec if Ec~=Ec then da=mc[19405]or pc(19115,7161,19405)else da=17304 end end elseif da<19174 then if da>=17304 then if da>=17401 then if da>17809 then Ka=kf if F~=F then da=mc[-21499]or pc(20637,30469,-21499)else da=mc[-30900]or pc(34812,49224,-30900)end elseif da>17401 then da,Ie[26698]=mc[21103]or pc(25561,22540,21103),Ec[Ie[30509]+1]else Lf=Ua if f_~=f_ then da=mc[28227]or pc(41633,22097,28227)else da=19599 end end elseif da>17304 then Ua,da=Ud(f_,-1260901237),mc[-4039]or pc(41247,11426,-4039)continue else if(W>=0 and Ec>Yd)or((W<0 or W~=W)and Ec<Yd)then da=mc[1449]or pc(58100,62376,1449)else da=34994 end end elseif da>16979 then kf,F=of(Sa(f_,8),16777215),nil;F=if kf<8388608 then kf else kf-16777216;da,o_[65394]=mc[4595]or pc(3160,78801,4595),F elseif da<16662 then o_,kf=of(Sa(n_,10),1023),of(Sa(n_,0),1023);Ie[18054]=Ec[o_+1];Ie[15670],da=Ec[kf+1],mc[-27489]or pc(55919,61566,-27489)elseif da<=16662 then Yd=Yd+Ua;f_=Yd if Yd~=Yd then da=mc[9301]or pc(34668,104001,9301)else da=mc[14516]or pc(23863,117519,14516)end else kf,da=F,mc[379]or pc(5214,27150,379)continue end elseif da>21290 then if da>=22145 then if da>22145 then da,dd=4355,Ud(De,20)continue else Yd=qd(X('\135','\197'),_d,Fd);da,Fd=mc[21703]or pc(47392,12277,21703),Fd+1 end elseif da<=21308 then Ka,da=nil,2478 else da,zf=mc[-2942]or pc(47541,31873,-2942),Ud(o_,-95186102)continue end elseif da>=19970 then if da<=21139 then if da>19970 then da,v,Cb=55557,yd,nil else o_[55339]=of(Sa(f_,8),255);kf=of(Sa(f_,16),65535);o_[50894]=kf;F=nil;F=if kf<32768 then kf else kf-65536;da,o_[39911]=mc[12537]or pc(31051,116966,12537),F end else Lf=qd(X('T','\22'),_d,Fd);da,Fd=39258,Fd+1 end elseif da>19174 then if(Ie>=0 and Ua>f_)or((Ie<0 or Ie~=Ie)and Ua<f_)then da=mc[-13720]or pc(7753,125609,-13720)else da=mc[1713]or pc(38253,54204,1713)end else Ha=n_;W=Lb(W,bd(of(Ha,127),(Lf-122)*7))if not xe(Ha,128)then da=mc[22995]or pc(13098,115476,22995)continue end da=mc[16338]or pc(47699,110831,16338)end elseif da>=47734 then if da>=55686 then if da>=59206 then if da>=62458 then if da<=63257 then if da<=62952 then if da>62458 then o_[55339]=of(Sa(f_,8),255);o_[6206]=of(Sa(f_,16),255);da,o_[30509]=mc[-32277]or pc(7765,75220,-32277),of(Sa(f_,24),255)else if(Lf==10)then da=mc[-25820]or pc(15196,74203,-25820)continue else da=mc[-12335]or pc(10870,68684,-12335)continue end da=mc[-21407]or pc(48896,3301,-21407)end else W=Yd;Ua=Ad(W);f_,Ie,Lf,da=148,(W)+147,1,46072 end elseif da<=64511 then Qb=Qb+Ec;Yd=Qb if Qb~=Qb then da=mc[-21297]or pc(39116,109757,-21297)else da=5880 end else v=qd(X('\198','\132'),_d,Fd);Fd,da=Fd+1,mc[21523]or pc(52168,61381,21523)end elseif da>=60100 then if da<=60100 then Td=Cb;Y,m=Ad(Td),false;Ec,Qb,da,gc=1,143,mc[-14654]or pc(12043,81249,-14654),(Td)+142 else Yd=Ec;Td=Lb(Td,bd(of(Yd,127),(gc-122)*7))if(not xe(Yd,128))then da=mc[-15291]or pc(23804,118713,-15291)continue else da=mc[5539]or pc(21456,13377,5539)continue end da=mc[-17044]or pc(522,17167,-17044)end elseif da<=59206 then da=mc[-31750]or pc(17228,123793,-31750)continue else if(Lf==5)then da=mc[5261]or pc(29866,125997,5261)continue else da=mc[19959]or pc(25036,6352,19959)continue end da=mc[1607]or pc(4453,108160,1607)end elseif da>57934 then if da>58037 then if(F>=0 and o_>kf)or((F<0 or F~=F)and o_<kf)then da=mc[20675]or pc(28640,126491,20675)else da=mc[-3751]or pc(37337,14570,-3751)end elseif da>57989 then Ie=qd(X('\211','\145'),_d,Fd);Fd,da=Fd+1,123 else F=qd(X('\223','\188')..o_,_d,Fd);Fd,da=Fd+o_,16979 end elseif da>56520 then if da>57791 then da,Yd=40337,nil else if(Ua>=0 and Yd>W)or((Ua<0 or Ua~=Ua)and Yd<W)then da=57934 else da=mc[27405]or pc(23715,100357,27405)end end elseif da>=55741 then if da>55741 then da,W=mc[24913]or pc(31221,121489,24913),nil else n_,da=Ud(Ha,20),19174 continue end else da,u_=55175,Ud(Rb,20)continue end elseif da>=51280 then if da>54262 then if da<=55442 then if da<55175 then da,m=mc[-4071]or pc(13733,97625,-4071),W elseif da<=55175 then Rb=u_;o_=Lb(o_,bd(of(Rb,127),(Ka-242)*7))if not xe(Rb,128)then da=mc[-4689]or pc(196,118168,-4689)continue end da=mc[11828]or pc(56328,45976,11828)else Ie[26698]=bf(Ie[58061],0,1)==1;Ie[46905],da=bf(Ie[58061],31,1)==1,mc[-25302]or pc(5756,107625,-25302)end else Td=0;da,Y,Qb,m=13049,122,1,126 end elseif da>52098 then if da<=52599 then da,Ua=mc[-29989]or pc(18743,101377,-29989),nil else gc=Qb;Ec=Ad(gc);Yd,da,W,Ua=190,40917,(gc)+189,1 end elseif da<=51514 then if da<=51280 then zf,da=nil,47829 else u_,da=nil,mc[-31346]or pc(2584,66723,-31346)end else o_=o_+F;fe=o_ if o_~=o_ then da=mc[-2477]or pc(16794,100449,-2477)else da=mc[-31319]or pc(62234,109338,-31319)end end elseif da>=49608 then if da<50354 then if da<=49608 then u_=Ka;zf=Lb(zf,bd(of(u_,127),(fe-67)*7))if(not xe(u_,128))then da=mc[19310]or pc(22644,13492,19310)continue else da=mc[-6490]or pc(64905,21744,-6490)continue end da=mc[2670]or pc(47023,102098,2670)else da,I=2908,Ud(R,20)continue end elseif da<=50354 then da,Ha=36514,Nf(nil)else Rb=qd(X('D','\6'),_d,Fd);da,Fd=mc[6588]or pc(55585,18260,6588),Fd+1 end elseif da>=47829 then if da>47829 then Qb,da=nil,38759 else o_=0;fe,da,kf,F=1,18543,242,246 end elseif da<=47734 then f_=Yd if W~=W then da=mc[-17367]or pc(36097,105388,-17367)else da=mc[13117]or pc(23425,118973,13117)end else if(zf)then da=mc[10944]or pc(37429,22798,10944)continue else da=mc[30154]or pc(30885,128359,30154)continue end da=mc[-26792]or pc(49630,7726,-26792)end elseif da<=40519 then if da>=37636 then if da<=39325 then if da<=38759 then if da>38123 then gc=0;Ec,Yd,W,da=217,221,1,40519 elseif da<=37636 then da,Ha=25604,Nf(Ud(zf,-95186102))continue else F=qd(X('\22c\30','*'),_d,Fd);da,Fd=39411,Fd+4 end elseif da>39258 then da=mc[-26511]or pc(20729,30633,-26511)continue else da,Ie=mc[-21718]or pc(7095,129789,-21718),Ud(Lf,20)continue end elseif da>40424 then Ua=Ec if Yd~=Yd then da=mc[-12090]or pc(47361,10915,-12090)else da=17304 end elseif da>40337 then da,n_=mc[12975]or pc(50921,7840,12975),ef(Ha[1],1,Ha[2])elseif da>39411 then W=0;da,Ua,f_,Ie=mc[-20599]or pc(986,113454,-20599),122,126,1 else da,kf=mc[17371]or pc(63613,6151,17371),Ud(F,-1260901237)continue end elseif da>=36514 then if da<=36785 then if da>36553 then dd,da=nil,mc[10791]or pc(27979,119724,10791)elseif da>36514 then f_=qd(X('t\1|','H'),_d,Fd);Fd,da=Fd+4,mc[9636]or pc(60247,9198,9636)else zf=0;F,kf,da,o_=1,71,67,67 end elseif da<=36857 then da,Ha=15918,nil else Ie[26698],da=Ec[Ie[39911]+1],mc[21183]or pc(24863,22222,21183)end elseif da<=35709 then if da<=35661 then if da<=34994 then da,f_=58037,nil else Lf=Ie if Lf==0 then da=mc[6449]or pc(8057,129935,6449)continue elseif(Lf==3)then da=mc[10936]or pc(43912,10995,10936)continue else da=mc[-22008]or pc(40864,19415,-22008)continue end da=mc[-14640]or pc(43628,101149,-14640)end else F=kf;o_[58061]=F;ye(Y,{});da=mc[24214]or pc(17660,104712,24214)end else da,Ie=mc[-9961]or pc(29772,21381,-9961),nil end elseif da<44112 then if da<41411 then if da<41096 then if da>40917 then Ie=Y[(f_-249)];Lf=Ie[53961]if(Lf==4)then da=mc[8342]or pc(5344,80009,8342)continue else da=mc[-18792]or pc(13071,106542,-18792)continue end da=mc[-13212]or pc(18475,32194,-13212)else f_=Yd if W~=W then da=24949 else da=mc[5188]or pc(44557,15927,5188)end end elseif da>41096 then Yd=Qb if gc~=gc then da=49266 else da=mc[24304]or pc(11186,112213,24304)end else if Lf==2 then da=mc[29122]or pc(65277,20300,29122)continue elseif Lf==6 then da=mc[-25896]or pc(21073,13570,-25896)continue end da=mc[9759]or pc(25405,115788,9759)end elseif da<44062 then if da<=41411 then Ua=Ua+Ie;Lf=Ua if Ua~=Ua then da=mc[-28498]or pc(13125,116653,-28498)else da=mc[-24100]or pc(10271,125271,-24100)end else da,W=mc[1564]or pc(57479,108848,1564),zf continue end elseif da>44062 then n_=Ie[58061];Ha,zf=Sa(n_,30),of(Sa(n_,20),1023);Ie[26698]=Ec[zf+1];Ie[490]=Ha if(Ha==2)then da=mc[-2972]or pc(43608,12605,-2972)continue else da=mc[17248]or pc(59417,5875,17248)continue end da=mc[-19727]or pc(23935,27502,-19727)else Cb,da=Ud(Td,-95186102),mc[-26710]or pc(25495,65956,-26710)continue end elseif da<46072 then if da<44347 then if da>44112 then Ec[(f_-189)],da=n_,mc[24424]or pc(50826,61592,24424)else if(Lf>=0 and f_>Ie)or((Lf<0 or Lf~=Lf)and f_<Ie)then da=mc[9189]or pc(33757,7019,9189)else da=mc[29456]or pc(8293,106782,29456)end end elseif da<=44347 then if(Lf==1)then da=mc[9949]or pc(14669,24548,9949)continue else da=mc[-12936]or pc(6592,71800,-12936)continue end da=mc[-7958]or pc(30150,16935,-7958)else kf,da=nil,mc[-19333]or pc(62658,5456,-19333)end elseif da>=46720 then if da<=46720 then if m then da=mc[21803]or pc(64753,14313,21803)continue else da=mc[-27970]or pc(58254,111529,-27970)continue end da=mc[14688]or pc(43680,121438,14688)else De=qd(X('4','v'),_d,Fd);da,Fd=mc[-5142]or pc(8553,126426,-5142),Fd+1 end elseif da>46072 then da,Ie[26698]=mc[-12893]or pc(63704,52493,-12893),Ec[Ie[58061]+1]else n_=f_ if Ie~=Ie then da=25529 else da=mc[32613]or pc(55602,6781,32613)end end until da==34871 end local T=Ae();hf[35365][_d]=T return T end)local A=(function(Sd,vc)Sd=oc(Sd)local wf=Qd()local function Qa(Pd,ce)local L=(function(...)return{...},Qe('#',...)end)local Me;Me=(function(ad,ed,jb)if ed>jb then return end return ad[ed],Me(ad,ed+1,jb)end)local function Mf(xb,nc,rc,Od)local Kf,Vd,qb,xa,xf,Kd,ld,x,Rc,sc,bb,Nb,Bc,pa,Nc,Xd,nb,Wb,qf,yf,sa,qc,Eb,Le;Le,qb=function(Wa,Hd,Fe)qb[Fe]=Yc(Wa,44708)-Yc(Hd,25865)return qb[Fe]end,{};Xd=qb[-24122]or Le(57659,25637,-24122)while Xd~=63528 do if Xd<=31952 then if Xd<=17150 then if Xd>=9069 then if Xd>=13583 then if Xd<=14378 then if Xd>=14110 then if Xd>=14311 then if Xd>=14367 then if Xd<=14367 then Xd,xf=qb[9875]or Le(2424,62430,9875),xf..ac(Ud(xc(Vd,(Kd-215)+1),xc(bb,(Kd-215)%#bb+1)))else x=nc[pa[26698]+1];yf=x[8042];qf=Ad(yf);xb[pa[55339]]=Qa(x,qf);Vd,Eb,bb,Xd=(yf)+251,252,1,qb[-16937]or Le(19782,30758,-16937)end else Vd={qf(xb[x+1],xb[x+2])};Da(Vd,1,yf,x+3,xb)if xb[x+3]~=nil then Xd=qb[-5835]or Le(3202,31814,-5835)continue else Xd=qb[-8152]or Le(102422,61613,-8152)continue end Xd=qb[12571]or Le(106520,16728,12571)end elseif Xd<=14110 then Nc+=1;Xd=qb[-6012]or Le(114899,57605,-6012)else bb,Xd=bb..ac(Ud(xc(Eb,(Kf-108)+1),xc(Vd,(Kf-108)%#Vd+1))),qb[-22991]or Le(75611,36257,-22991)end elseif Xd<13887 then if Xd>13583 then if Wb>226 then Xd=qb[19692]or Le(31177,19065,19692)continue else Xd=qb[32438]or Le(120376,53015,32438)continue end Xd=qb[-30184]or Le(115058,57442,-30184)else ld=Vd if bb~=bb then Xd=qb[21072]or Le(72049,36159,21072)else Xd=52249 end end elseif Xd>=13892 then if Xd<=13892 then Nc+=1;Xd=qb[19971]or Le(76409,65403,19971)else if not xb[pa[55339]]then Xd=qb[25015]or Le(19944,30646,25015)continue end Xd=qb[2529]or Le(122486,58222,2529)end else ld,Xd=ld..ac(Ud(xc(bb,(Rc-226)+1),xc(xf,(Rc-226)%#xf+1))),qb[5475]or Le(28702,42759,5475)end elseif Xd>16352 then if Xd<16597 then if(pa[30509]==69)then Xd=qb[5310]or Le(22858,52723,5310)continue else Xd=qb[4956]or Le(71898,40128,4956)continue end Xd=qb[4270]or Le(17355,26125,4270)elseif Xd>16597 then if Vd>0 then Xd=qb[8310]or Le(106909,35620,8310)continue else Xd=qb[-12128]or Le(102170,1625,-12128)continue end Xd=qb[-7142]or Le(120511,59577,-7142)else Rc=Bc if Kf~=Kf then Xd=qb[2089]or Le(91345,47788,2089)else Xd=31989 end end elseif Xd>=15536 then if Xd<16163 then if(Wb>243)then Xd=qb[10262]or Le(66620,47786,10262)continue else Xd=qb[-12116]or Le(131034,538,-12116)continue end Xd=qb[-20282]or Le(70505,46699,-20282)elseif Xd>16163 then sc={[2]=xb[Kd[6206]],[1]=2};sc[3]=sc;Xd,bb[(Kf-253)]=qb[-8579]or Le(26759,22477,-8579),sc else Vd=Ja(yf)if Vd==nil then Xd=qb[-7998]or Le(77669,46420,-7998)continue end Xd=10569 end elseif Xd>14591 then ee(bb);Xd,sa[Vd]=qb[9186]or Le(100514,8784,9186),nil else Xd,Vd=qb[-31733]or Le(13643,12621,-31733),Vd..ac(Ud(xc(qf,(Bc-111)+1),xc(Eb,(Bc-111)%#Eb+1)))end elseif Xd<=11988 then if Xd<=10569 then if Xd>9660 then if Xd<=10494 then if(pa[30509]==245)then Xd=qb[19525]or Le(38414,29003,19525)continue else Xd=qb[-29747]or Le(8290,7192,-29747)continue end Xd=qb[-3986]or Le(73234,41794,-3986)else xb[x]=Vd;yf,Xd=Vd,qb[-29599]or Le(76263,65372,-29599)end elseif Xd<9482 then if Xd<=9069 then xf,Xd=qf-1,qb[-30235]or Le(17653,50802,-30235)else Nc-=1;Xd,rc[Nc]=qb[22290]or Le(97052,36420,22290),{[26069]=134,[55339]=Ud(pa[55339],1),[6206]=Ud(pa[6206],16),[30509]=0}end elseif Xd<=9482 then if(Wb>162)then Xd=qb[-12743]or Le(8343,16895,-12743)continue else Xd=qb[31710]or Le(114209,22394,31710)continue end Xd=qb[-11281]or Le(84398,39318,-11281)else bb[(Kf-253)],Xd=ce[Kd[6206]+1],qb[9071]or Le(101972,59544,9071)end elseif Xd<=11745 then if Xd<=11105 then if Xd<=10826 then Nc+=pa[39911];Xd=qb[-12605]or Le(128216,5400,-12605)else if(Wb>80)then Xd=qb[23151]or Le(105380,624,23151)continue else Xd=qb[-515]or Le(1811,31718,-515)continue end Xd=qb[-15533]or Le(75480,64280,-15533)end else if Wb>10 then Xd=qb[-30462]or Le(823,12009,-30462)continue else Xd=qb[86]or Le(24715,29898,86)continue end Xd=qb[-31385]or Le(102913,14131,-31385)end else Da(bb,1,yf,x+3,xb);xb[x+2]=xb[x+3];Nc+=pa[39911];Xd=qb[31739]or Le(98810,8698,31739)end elseif Xd>13228 then if Xd>13343 then Nc-=1;rc[Nc],Xd={[26069]=92,[55339]=Ud(pa[55339],30),[6206]=Ud(pa[6206],119),[30509]=0},qb[-1656]or Le(125882,16314,-1656)elseif Xd<=13334 then xb[pa[55339]],Xd=xb[pa[30509]]-xb[pa[6206]],qb[-13079]or Le(92053,48079,-13079)else Eb=xb[x];xf,Vd,bb,Xd=1,x+1,yf,qb[6870]or Le(1215,4101,6870)end elseif Xd<12452 then if Xd<=12273 then if Wb>143 then Xd=qb[21491]or Le(114453,63783,21491)continue else Xd=qb[12945]or Le(58301,8413,12945)continue end Xd=qb[1446]or Le(129321,2091,1446)else if(Wb>50)then Xd=qb[-8019]or Le(20591,35609,-8019)continue else Xd=qb[9168]or Le(20363,61834,9168)continue end Xd=qb[2376]or Le(118390,4974,2376)end elseif Xd>13005 then Nb={[1]=sc,[3]=xb};xa[sc],Xd=Nb,qb[-18937]or Le(117956,51542,-18937)elseif Xd>12452 then if(Wb>2)then Xd=qb[8736]or Le(109850,53268,8736)continue else Xd=qb[28171]or Le(70916,33184,28171)continue end Xd=qb[-12317]or Le(90706,34690,-12317)else Xd,yf[18054]=qb[-26059]or Le(114977,58497,-26059),Eb end elseif Xd>4753 then if Xd<6906 then if Xd<=5976 then if Xd<5646 then if Xd>5012 then x,yf=pa[55339],pa[6206]-1 if yf==-1 then Xd=qb[32415]or Le(113507,31177,32415)continue end Xd=20262 else x=ce[pa[6206]+1];xb[pa[55339]],Xd=x[3][x[1]],qb[19370]or Le(100035,22773,19370)end elseif Xd<=5853 then if Xd<=5646 then Xd,xb[pa[6206]]=qb[23136]or Le(94864,38080,23136),xb[pa[55339]]*pa[26698]else if(vd(yf)==X('\136\128\158\141\153','\252\225'))then Xd=qb[20660]or Le(117634,38750,20660)continue else Xd=qb[7797]or Le(97609,36937,7797)continue end Xd=qb[-12921]or Le(110801,23233,-12921)end else if Wb>107 then Xd=qb[-7731]or Le(104156,63285,-7731)continue else Xd=qb[-7670]or Le(17823,53552,-7670)continue end Xd=qb[-14541]or Le(110591,29689,-14541)end elseif Xd<=6421 then if Xd>6008 then Nc+=pa[39911];Xd=qb[-6288]or Le(24288,24784,-6288)else if(Wb>132)then Xd=qb[-28192]or Le(121670,64279,-28192)continue else Xd=qb[9631]or Le(21474,37971,9631)continue end Xd=qb[22551]or Le(78970,54650,22551)end else Vd,bb=yf[18054],pa[18054];bb=X("\186\244\'\223\184%n\143",'\136>P\14')..bb;xf='';Kf,Xd,ld,Bc=1,44756,222,(#Vd-1)+222 end elseif Xd<7385 then if Xd<=7340 then if Xd>7283 then Bc=Bc+Kd;Rc=Bc if Bc~=Bc then Xd=qb[18496]or Le(116641,6972,18496)else Xd=31989 end elseif Xd>6906 then x[26698]=yf;Xd,pa[26069]=qb[9799]or Le(16472,24984,9799),224 else Nc+=pa[39911];Xd=qb[5566]or Le(20504,29016,5566)end else x,yf=nil,Ud(pa[50894],18732);x=if yf<32768 then yf else yf-65536;qf=x;Xd,xb[Ud(pa[55339],194)]=qb[-29800]or Le(67998,55750,-29800),qf end elseif Xd<=8717 then if Xd<=8460 then if Xd>7385 then if(not(ld<=yf))then Xd=qb[10535]or Le(27905,55124,10535)continue else Xd=qb[-7514]or Le(126658,12530,-7514)continue end Xd=qb[21903]or Le(114784,57680,21903)else x=pa[46905]if((xb[pa[55339]]==nil)~=x)then Xd=qb[23292]or Le(21220,16439,23292)continue else Xd=qb[676]or Le(124243,44707,676)continue end Xd=qb[-20709]or Le(96411,36573,-20709)end else if(bb[1]>=pa[55339])then Xd=qb[19841]or Le(23153,10289,19841)continue else Xd=qb[-30096]or Le(4491,51607,-30096)continue end Xd=qb[9994]or Le(34194,32172,9994)end elseif Xd<=8791 then x=pd(yf)if(x~=nil and x[X('b\140\234I\182\241','=\211\131')]~=nil)then Xd=qb[-24185]or Le(100325,45051,-24185)continue else Xd=qb[24428]or Le(18205,50465,24428)continue end Xd=qb[-24638]or Le(17642,32835,-24638)else Xd,Eb=qb[22884]or Le(10161,27947,22884),yf-1 end elseif Xd<3203 then if Xd<=2715 then if Xd>1861 then if Xd<=2675 then if Wb>94 then Xd=qb[29310]or Le(6792,15814,29310)continue else Xd=qb[22356]or Le(75271,40351,22356)continue end Xd=qb[-27277]or Le(104458,10570,-27277)else if Wb>233 then Xd=qb[30300]or Le(68984,49988,30300)continue else Xd=qb[-29093]or Le(22248,17922,-29093)continue end Xd=qb[27587]or Le(128735,2841,27587)end elseif Xd<=1284 then if Xd<=772 then if Wb>81 then Xd=qb[-16976]or Le(19090,26297,-16976)continue else Xd=qb[-22415]or Le(101678,40224,-22415)continue end Xd=qb[-29757]or Le(84769,40467,-29757)else Vd,bb=yf(qf,Eb);Eb=Vd if Eb==nil then Xd=qb[-24052]or Le(114137,53889,-24052)else Xd=41722 end end else if pa[30509]==240 then Xd=qb[4841]or Le(99719,36,4841)continue else Xd=qb[268]or Le(12040,2833,268)continue end Xd=qb[22053]or Le(125855,16345,22053)end elseif Xd<3052 then if Xd>2768 then if x==3 then Xd=qb[17538]or Le(106308,3065,17538)continue end Xd=qb[-18430]or Le(23731,51087,-18430)else if(Wb>148)then Xd=qb[15035]or Le(110305,9327,15035)continue else Xd=qb[7925]or Le(51125,25029,7925)continue end Xd=qb[-25660]or Le(94038,45710,-25660)end elseif Xd<=3052 then xb[pa[30509]]=pa[6206]==1;Nc+=pa[55339];Xd=qb[-17943]or Le(122041,58043,-17943)else Jc'';Xd=qb[23973]or Le(121782,47689,23973)end elseif Xd<=4355 then if Xd<=4094 then if Xd<=3271 then if Xd>3203 then x=pa[55339];yf,qf=xb[x],xb[x+1];Eb=xb[x+2]+qf;xb[x+2]=Eb if(qf>0)then Xd=qb[-13290]or Le(126853,63709,-13290)continue else Xd=qb[-12852]or Le(128796,39094,-12852)continue end Xd=qb[13624]or Le(111723,21869,13624)else Nc+=pa[39911];Xd=qb[25116]or Le(107925,17871,25116)end else Vd=Vd+xf;ld=Vd if Vd~=Vd then Xd=qb[17886]or Le(111575,10461,17886)else Xd=qb[-12360]or Le(111499,13343,-12360)end end elseif Xd>4283 then if(Wb>217)then Xd=qb[-2967]or Le(99218,10178,-2967)continue else Xd=qb[7241]or Le(31228,62778,7241)continue end Xd=qb[-22822]or Le(116826,6554,-22822)else Xd,xb[pa[30509]]=qb[-29185]or Le(95238,38206,-29185),xb[pa[55339]]+pa[26698]end elseif Xd<4504 then if Xd<=4357 then ld=ld+Kf;Kd=ld if ld~=ld then Xd=qb[7701]or Le(124088,58650,7701)else Xd=qb[-961]or Le(50288,26862,-961)end else Nc+=pa[39911];Xd=qb[-2092]or Le(126129,12963,-2092)end elseif Xd>4504 then Vd,bb=yf(qf,Eb);Eb=Vd if Eb==nil then Xd=qb[27212]or Le(75577,64059,27212)else Xd=qb[-17343]or Le(7157,63053,-17343)end else Nc+=pa[39911];Xd=qb[-18725]or Le(22405,27583,-18725)end elseif Xd<24578 then if Xd>21780 then if Xd>=23512 then if Xd>=24038 then if Xd>24143 then if Xd>24363 then x,yf,qf=pa[26698],pa[46905],xb[pa[55339]]if((qf==x)~=yf)then Xd=qb[-12447]or Le(26078,50233,-12447)continue else Xd=qb[8212]or Le(123126,1171,8212)continue end Xd=qb[-2668]or Le(113067,18861,-2668)else Xd,qf=qb[-31875]or Le(98907,52390,-31875),bb continue end elseif Xd<24126 then if x==3 then Xd=qb[21151]or Le(20200,1653,21151)continue end Xd=qb[-20942]or Le(24218,26440,-20942)elseif Xd>24126 then yf,qf,Eb=x[X('\200\172A\227\150Z','\151\243(')](yf);Xd=qb[-31319]or Le(7797,52932,-31319)else nb,Xd=x+xf-1,qb[17545]or Le(61856,32039,17545)end elseif Xd>=23545 then if Xd>23545 then if(Kf>=0 and ld>Bc)or((Kf<0 or Kf~=Kf)and ld<Bc)then Xd=qb[7634]or Le(123012,57630,7634)else Xd=14367 end else if(yf<=Eb)then Xd=qb[-8314]or Le(110996,10365,-8314)continue else Xd=qb[19066]or Le(122863,58345,19066)continue end Xd=qb[-28252]or Le(122867,58341,-28252)end elseif Xd<=23512 then if(bb==-2)then Xd=qb[22530]or Le(75458,40919,22530)continue else Xd=qb[-6801]or Le(56203,9042,-6801)continue end Xd=qb[18089]or Le(78224,53696,18089)else yf,qf,Eb=sa if vd(yf)~=X('\203(\185\216\217\52\184\213','\173]\215\187')then Xd=qb[8059]or Le(104232,3236,8059)continue end Xd=qb[-4800]or Le(70066,34144,-4800)end elseif Xd>=23193 then if Xd<=23389 then if Xd<=23332 then if Xd<=23193 then yf,qf,Eb=x[X('\138\246\129\161\204\154','\213\169\232')](yf);Xd=qb[-8856]or Le(93708,34034,-8856)else if(Wb>182)then Xd=qb[24904]or Le(66716,46360,24904)continue else Xd=qb[25238]or Le(27538,60411,25238)continue end Xd=qb[3046]or Le(91801,47323,3046)end else Xd,xb[pa[55339]]=qb[26439]or Le(109573,32063,26439),#xb[pa[6206]]end else Nc+=1;Xd=qb[3649]or Le(100806,23038,3649)end elseif Xd<23043 then if Xd>21805 then Xd,xf=qb[4789]or Le(124724,41806,4789),xf..ac(Ud(xc(Vd,(Kd-222)+1),xc(bb,(Kd-222)%#bb+1)))else if Wb>134 then Xd=qb[31656]or Le(22146,51454,31656)continue else Xd=qb[-23740]or Le(56221,14536,-23740)continue end Xd=qb[27061]or Le(103664,10976,27061)end elseif Xd>23043 then if xb[pa[55339]]==xb[pa[58061]]then Xd=qb[2855]or Le(66214,48040,2855)continue else Xd=qb[-11382]or Le(4075,22423,-11382)continue end Xd=qb[29487]or Le(126381,15767,29487)else Bc=bb if xf~=xf then Xd=qb[-30188]or Le(127250,33651,-30188)else Xd=61972 end end elseif Xd<20083 then if Xd<=18347 then if Xd>18213 then if Xd<=18220 then x,yf,qf=pa[6206],pa[55339],pa[26698];Eb=xb[yf];xb[x+1]=Eb;xb[x]=Eb[qf];Nc+=1;Xd=qb[-29608]or Le(122621,57575,-29608)else bb=bb+ld;Bc=bb if bb~=bb then Xd=qb[-15883]or Le(127272,33625,-15883)else Xd=qb[30561]or Le(74485,65332,30561)end end elseif Xd>18134 then if(Wb>210)then Xd=qb[-1477]or Le(23179,60363,-1477)continue else Xd=qb[21693]or Le(113335,11997,21693)continue end Xd=qb[22385]or Le(113654,20462,22385)elseif Xd<=17915 then yf,qf,Eb=Cd(yf);Xd=qb[-21281]or Le(47616,26394,-21281)else Da(bb,1,xf,x,xb);Xd=qb[-10423]or Le(125145,14619,-10423)end elseif Xd<=19079 then if Xd<=18991 then if Xd<=18833 then if vd(yf)==X('\1\131\23\142\16','u\226')then Xd=qb[32283]or Le(107667,62306,32283)continue end Xd=qb[27223]or Le(33893,16564,27223)else x,yf=nil,Ud(pa[50894],13402);x=if yf<32768 then yf else yf-65536;qf=x;Eb=nc[qf+1];Vd=Eb[8042];bb=Ad(Vd);xb[Ud(pa[55339],120)]=Qa(Eb,bb);xf,Xd,Bc,ld=254,59185,1,(Vd)+253 end else x,yf,qf,Xd=pa[490],rc[Nc+1],nil,37856 end else if(Wb>46)then Xd=qb[-21504]or Le(106340,57012,-21504)continue else Xd=qb[-19618]or Le(106415,11794,-19618)continue end Xd=qb[-1822]or Le(127144,5800,-1822)end elseif Xd>20362 then if Xd>=21078 then if Xd<=21078 then Xd,xb[pa[55339]]=qb[-17152]or Le(22115,27477,-17152),nil else Nc-=1;rc[Nc],Xd={[26069]=248,[55339]=Ud(pa[55339],254),[6206]=Ud(pa[6206],175),[30509]=0},qb[-4319]or Le(81807,50121,-4319)end elseif Xd<=20369 then Nc+=1;Xd=qb[15340]or Le(94469,36927,15340)else Xd,xb[pa[55339]]=qb[11417]or Le(4488,2706,11417),qf end elseif Xd<=20212 then if Xd<=20129 then if Xd<=20083 then nb,Nc,xa,sa,qc,Xd=-1,1,We({},{[X("\23\215\192\'\236\200",'H\136\173')]=X('\n\15','|')}),We({},{[X('\239#8\223\24\48','\176|U')]=X('\149\141','\254')}),false,60011 else x=xb[pa[6206]];Xd,xb[pa[30509]]=qb[-28793]or Le(71965,43079,-28793),if x then x else xb[pa[55339]]or false end else Nc-=1;rc[Nc],Xd={[26069]=193,[55339]=Ud(pa[55339],36),[6206]=Ud(pa[6206],41),[30509]=0},qb[31690]or Le(112596,18956,31690)end elseif Xd>20262 then Xd,xb[pa[55339]]=qb[26237]or Le(107013,18239,26237),pa[26698]else Da(Od[42245],1,yf,x,xb);Xd=qb[14608]or Le(100047,23305,14608)end elseif Xd>=29391 then if Xd>31172 then if Xd>31467 then if Xd>=31924 then if Xd<=31924 then if Wb>110 then Xd=qb[23166]or Le(30445,62484,23166)continue else Xd=qb[-12600]or Le(60248,19373,-12600)continue end Xd=qb[31791]or Le(23524,28636,31791)else Eb,Xd=nil,6861 end else if Wb>118 then Xd=qb[-17133]or Le(107781,59828,-17133)continue else Xd=qb[-5107]or Le(20232,497,-5107)continue end Xd=qb[-25293]or Le(129651,3941,-25293)end elseif Xd>31331 then if Xd>31358 then Xd=qb[-3653]or Le(77714,60423,-3653)continue else if(Wb>43)then Xd=qb[17430]or Le(112890,33615,17430)continue else Xd=qb[16822]or Le(123480,42407,16822)continue end Xd=qb[-6277]or Le(83140,39676,-6277)end elseif Xd>=31292 then if Xd>31292 then x=xb[pa[30509]];xb[pa[55339]],Xd=if x then x else pa[26698]or false,qb[28386]or Le(81006,52566,28386)else Nc+=pa[39911];Xd=qb[-1055]or Le(111808,19184,-1055)end else Nc+=pa[39911];Xd=qb[-15768]or Le(91388,47844,-15768)end elseif Xd>=30083 then if Xd>30556 then if Xd>31036 then if Wb>126 then Xd=qb[6973]or Le(101086,21032,6973)continue else Xd=qb[-9183]or Le(9943,27109,-9183)continue end Xd=qb[15146]or Le(21124,29884,15146)else yf,Xd=Vd,7283 continue end elseif Xd<=30211 then if Xd<=30083 then x=pa[26698];xb[pa[30509]][x]=xb[pa[6206]];Nc+=1;Xd=qb[10775]or Le(81380,52700,10775)else Nc+=pa[39911];Xd=qb[-12083]or Le(79892,51532,-12083)end else if(Wb>92)then Xd=qb[24888]or Le(97589,35590,24888)continue else Xd=qb[-20712]or Le(34900,18149,-20712)continue end Xd=qb[11750]or Le(73288,41864,11750)end elseif Xd>29644 then if Xd>29665 then Nc+=pa[39911];Xd=qb[4779]or Le(115269,59263,4779)else if Wb>20 then Xd=qb[23306]or Le(50644,22095,23306)continue else Xd=qb[15525]or Le(100974,45129,15525)continue end Xd=qb[11687]or Le(102970,14138,11687)end elseif Xd>29419 then yf,qf,Eb=Cd(yf);Xd=qb[-26439]or Le(12274,6491,-26439)elseif Xd<=29391 then yf,qf,Eb=Cd(yf);Xd=qb[-24400]or Le(130198,5772,-24400)else xb[x+2]=Kd;Xd,ld=qb[-20452]or Le(50283,17112,-20452),Kd end elseif Xd<26941 then if Xd<=25669 then if Xd<=24644 then if Xd<=24598 then if Xd<=24578 then Kf=xf if ld~=ld then Xd=qb[-4777]or Le(109132,49332,-4777)else Xd=qb[30439]or Le(80968,64997,30439)end else Nc+=pa[39911];Xd=qb[-537]or Le(114763,57741,-537)end else yf,qf,Eb=xa if vd(yf)~=X('\244}\130\151\230a\131\154','\146\b\236\244')then Xd=qb[-11142]or Le(19627,55985,-11142)continue end Xd=qb[-22491]or Le(51311,1230,-22491)end elseif Xd>25011 then if Wb>140 then Xd=qb[31865]or Le(125930,42114,31865)continue else Xd=qb[-6924]or Le(77711,48627,-6924)continue end Xd=qb[17473]or Le(109501,32679,17473)else if(xb[pa[55339]])then Xd=qb[14782]or Le(116647,55997,14782)continue else Xd=qb[1209]or Le(111407,22057,1209)continue end Xd=qb[-27399]or Le(107032,18264,-27399)end elseif Xd>=26556 then if Xd>26556 then if Wb>67 then Xd=qb[-21029]or Le(130013,62113,-21029)continue else Xd=qb[-2593]or Le(108478,57490,-2593)continue end Xd=qb[19177]or Le(122710,57998,19177)else Nc-=1;rc[Nc],Xd={[26069]=140,[55339]=Ud(pa[55339],91),[6206]=Ud(pa[6206],58),[30509]=0},qb[5028]or Le(78413,55159,5028)end else xb[pa[55339]],Xd=xb[pa[30509]][pa[6206]+1],qb[-18365]or Le(122375,58161,-18365)end elseif Xd<28337 then if Xd>27564 then Vd,bb=yf[18054],pa[18054];bb=X('\171\t\252S\169\216\181\3','\153\195\139\130')..bb;xf='';Bc,ld,Xd,Kf=(#Vd-1)+215,215,qb[-17003]or Le(117545,41744,-17003),1 elseif Xd<27346 then x,yf=xb[pa[55339]],nil;yf=Ea(x)==X('\190\163p}\172\191qp','\216\214\30\30')if(not yf)then Xd=qb[27038]or Le(101337,21710,27038)continue else Xd=qb[-2792]or Le(19423,44936,-2792)continue end Xd=6906 elseif Xd<=27346 then if Wb>34 then Xd=qb[-4850]or Le(57613,22492,-4850)continue else Xd=qb[-18965]or Le(68447,43014,-18965)continue end Xd=qb[-30026]or Le(77368,62264,-30026)else bb,xf=yf[15670],pa[15670];xf=X('\159\14\53G\157\223|\23','\173\196B\150')..xf;ld='';Bc,Xd,Kf,Kd=226,16597,(#bb-1)+226,1 end elseif Xd<=28613 then if Xd<28538 then Nc+=pa[39911];Xd=qb[-9472]or Le(114265,17307,-9472)elseif Xd<=28538 then xb[pa[55339]],Xd=xb[pa[30509]]*xb[pa[6206]],qb[28463]or Le(99994,22746,28463)else if pa[30509]==147 then Xd=qb[-25211]or Le(55921,31432,-25211)continue else Xd=qb[-2722]or Le(28615,2564,-2722)continue end Xd=qb[-32647]or Le(23009,27091,-32647)end elseif Xd>28895 then Kd=rc[Nc];Nc+=1;Rc=Kd[55339]if Rc==0 then Xd=qb[-26302]or Le(24447,54514,-26302)continue elseif(Rc==1)then Xd=qb[6694]or Le(19780,1675,6694)continue else Xd=qb[-16032]or Le(26187,32156,-16032)continue end Xd=qb[-10711]or Le(110044,5392,-10711)else Nc-=1;Xd,rc[Nc]=qb[-16658]or Le(94927,38665,-16658),{[26069]=143,[55339]=Ud(pa[55339],73),[6206]=Ud(pa[6206],57),[30509]=0}end elseif Xd<=48236 then if Xd<=39172 then if Xd>=34982 then if Xd>37359 then if Xd>38354 then if Xd>=39130 then if Xd<=39130 then Jc'';Xd=qb[-18361]or Le(31963,20023,-18361)else if(Wb>23)then Xd=qb[14925]or Le(92000,39380,14925)continue else Xd=qb[-15465]or Le(4455,12011,-15465)continue end Xd=qb[-8732]or Le(96486,36574,-8732)end else Xd,xb[pa[55339]]=qb[-4164]or Le(61971,26671,-4164),qf[pa[18054]]end elseif Xd>=37856 then if Xd>=38195 then if Xd>38195 then xb[x+1]=ld;Xd,Vd=qb[19138]or Le(20618,23956,19138),ld else if(Wb>139)then Xd=qb[4818]or Le(121465,42235,4818)continue else Xd=qb[-24473]or Le(118382,53446,-24473)continue end Xd=qb[-20032]or Le(93778,45954,-20032)end else Eb,Vd=yf[26698],pa[26698];Vd=X('\218\132\158:\216U\215j','\232N\233\235')..Vd;bb='';xf,ld,Bc,Xd=108,(#Eb-1)+108,1,24578 end elseif Xd<=37400 then if(Wb>193)then Xd=qb[20923]or Le(62945,30135,20923)continue else Xd=qb[20552]or Le(32631,13598,20552)continue end Xd=qb[16943]or Le(76473,64699,16943)else xf=xf+Bc;Kf=xf if xf~=xf then Xd=qb[9768]or Le(97272,36856,9768)else Xd=qb[-19181]or Le(3511,32355,-19181)end end elseif Xd<=36277 then if Xd<=35918 then if Xd<35528 then if Xd<=34982 then qf,Eb=x[26698],pa[26698];Eb=X('\171\242\161\163\169#\232\243','\153\56\214r')..Eb;Vd='';bb,xf,ld,Xd=111,(#qf-1)+111,1,23043 else xb[x+2]=xb[x+3];Nc+=pa[39911];Xd=qb[28132]or Le(116211,58853,28132)end elseif Xd<=35528 then if(Wb>72)then Xd=qb[-23996]or Le(110074,5222,-23996)continue else Xd=qb[24214]or Le(110042,15146,24214)continue end Xd=qb[-15075]or Le(78994,51906,-15075)else if(Wb>42)then Xd=qb[-20157]or Le(110354,7700,-20157)continue else Xd=qb[-26359]or Le(30242,2237,-26359)continue end Xd=qb[-10352]or Le(95612,37988,-10352)end elseif Xd>36232 then yf,qf,Eb=x[X('\0\250J+\192Q','_\165#')](yf);Xd=qb[23844]or Le(5112,53186,23844)else sa[pa]=nil;Nc+=1;Xd=qb[-25962]or Le(17714,25634,-25962)end elseif Xd<37221 then if Xd<=36877 then x,Xd,yf=rc[Nc],qb[-19165]or Le(4001,32086,-19165),nil else Kd=Ja(ld)if(Kd==nil)then Xd=qb[-24808]or Le(22040,9810,-24808)continue else Xd=qb[11189]or Le(123624,48232,11189)continue end Xd=29419 end elseif Xd>37221 then xb[pa[30509]],Xd=xb[pa[55339]]-pa[26698],qb[-6908]or Le(112815,20137,-6908)else Eb..=xb[ld];Xd=qb[13452]or Le(29448,43175,13452)end elseif Xd<=33609 then if Xd>32923 then if Xd<=33522 then if Xd>33212 then x=pd(yf)if(x~=nil and x[X('-\150r\6\172i','r\201\27')]~=nil)then Xd=qb[31642]or Le(107962,6240,31642)continue else Xd=qb[13626]or Le(97620,35973,13626)continue end Xd=qb[30378]or Le(61658,12004,30378)elseif Xd>33011 then if(Wb>189)then Xd=qb[20112]or Le(16415,7167,20112)continue else Xd=qb[3994]or Le(8031,13278,3994)continue end Xd=qb[-5089]or Le(81577,49323,-5089)else return Me(xb,x,x+Eb-1)end else ld=ld+Kf;Kd=ld if ld~=ld then Xd=qb[20460]or Le(1817,28046,20460)else Xd=40436 end end elseif Xd<32845 then if Xd<=32484 then if Xd<=31989 then if(Kd>=0 and Bc>Kf)or((Kd<0 or Kd~=Kd)and Bc<Kf)then Xd=qb[-22273]or Le(103676,10881,-22273)else Xd=13887 end else x,yf,qf=Ud(pa[30509],173),Ud(pa[55339],166),Ud(pa[6206],137);Eb,Vd=yf==0 and nb-x or yf-1,xb[x];bb,xf=L(Vd(Me(xb,x+1,x+Eb)))if(qf==0)then Xd=qb[-25181]or Le(100285,45010,-25181)continue else Xd=qb[22990]or Le(107076,35962,22990)continue end Xd=18134 end else Da(xb,yf,yf+qf-1,pa[58061],xb[x]);Nc+=1;Xd=qb[-20390]or Le(117043,6181,-20390)end elseif Xd>=32862 then if Xd>32862 then ld=Ja(Vd)if ld==nil then Xd=qb[-27821]or Le(15577,58155,-27821)continue end Xd=38354 else sc=Kd[6206];Nb=xa[sc]if(Nb==nil)then Xd=qb[-16349]or Le(114456,47897,-16349)continue else Xd=qb[-17553]or Le(105518,6528,-17553)continue end Xd=46593 end else Nc+=1;Xd=qb[-25333]or Le(90544,33184,-25333)end elseif Xd>=34263 then if Xd>=34729 then if Xd<=34729 then if(Bc>=0 and xf>ld)or((Bc<0 or Bc~=Bc)and xf<ld)then Xd=qb[-7207]or Le(104163,10453,-7207)else Xd=28989 end else Xd,Eb=qb[-1324]or Le(115220,36532,-1324),nb-x+1 end elseif Xd<=34263 then Nc+=1;Xd=qb[15417]or Le(67851,55373,15417)else x,yf=pa[55339],pa[30509];qf,Eb=Dc(ub,xb,'',x,yf)if not qf then Xd=qb[-6225]or Le(112651,34713,-6225)continue end Xd=53151 end elseif Xd>33731 then if Wb>176 then Xd=qb[13448]or Le(17065,28395,13448)continue else Xd=qb[-29467]or Le(111386,8086,-29467)continue end Xd=qb[-2649]or Le(67868,55364,-2649)elseif Xd<=33663 then if Xd<=33616 then yf[26698]=qf if(x==2)then Xd=qb[-16370]or Le(106867,5560,-16370)continue else Xd=qb[-18737]or Le(21336,50463,-18737)continue end Xd=60925 else if Wb>31 then Xd=qb[-2716]or Le(120667,39560,-2716)continue else Xd=qb[8332]or Le(76803,59818,8332)continue end Xd=qb[17307]or Le(80262,51646,17307)end else if Wb>146 then Xd=qb[-9229]or Le(24029,19541,-9229)continue else Xd=qb[-2813]or Le(32038,50840,-2813)continue end Xd=qb[-32155]or Le(118671,5065,-32155)end elseif Xd>43278 then if Xd<44756 then if Xd<=43804 then if Xd<=43712 then if Xd>=43460 then if Xd>43460 then xb[pa[55339]],Xd=xb[pa[30509]][xb[pa[6206]]],qb[28786]or Le(109707,29389,28786)else x,yf,qf,Eb=pa[26698],pa[46905],xb[pa[55339]],nil;Eb=Ea(qf)==X('\176\143\158\190\133\144\188','\210\224\241')if((Eb and(qf==x))~=yf)then Xd=qb[-10694]or Le(64900,9345,-10694)continue else Xd=qb[11652]or Le(10468,10795,11652)continue end Xd=qb[-26050]or Le(123410,1858,-26050)end else Nc+=pa[39911];Xd=qb[11413]or Le(79254,54734,11413)end elseif Xd>43771 then xb[pa[55339]],Xd=not xb[pa[6206]],qb[-15719]or Le(118108,7300,-15719)else Xd,xb[pa[30509]]=qb[26907]or Le(119849,62763,26907),xb[pa[6206]]+xb[pa[55339]]end elseif Xd>=44573 then if Xd<=44573 then if(Wb>206)then Xd=qb[8095]or Le(56980,14884,8095)continue else Xd=qb[-5801]or Le(117437,46856,-5801)continue end Xd=qb[-13026]or Le(93482,48170,-13026)else qf,Xd=nb-yf+1,qb[25871]or Le(31597,12474,25871)end else Eb=Eb+bb;xf=Eb if Eb~=Eb then Xd=qb[15703]or Le(80839,53233,15703)else Xd=51978 end end elseif Xd<=45844 then if Xd>45412 then if Xd>45803 then Vd,bb=Gc(sa[pa],qf,xb[x+1],xb[x+2])if(not Vd)then Xd=qb[22046]or Le(78206,51225,22046)continue else Xd=qb[3190]or Le(129746,40343,3190)continue end Xd=qb[-30994]or Le(11467,17310,-30994)else xb[pa[55339]],Xd=-xb[pa[6206]],qb[18572]or Le(71879,44785,18572)end elseif Xd>=45146 then if Xd<=45146 then if Rc==2 then Xd=qb[4012]or Le(38790,30319,4012)continue end Xd=qb[-31187]or Le(17982,12338,-31187)else Jc'';Xd=qb[11598]or Le(8337,485,11598)end else Kd=ld if Bc~=Bc then Xd=qb[-24905]or Le(25979,20384,-24905)else Xd=qb[-30746]or Le(4104,17841,-30746)end end elseif Xd<48218 then if Xd>46433 then Xd,bb[(Kf-253)]=qb[-19759]or Le(99048,64996,-19759),Nb else Jc'';Xd=qb[-17089]or Le(28415,10361,-17089)end elseif Xd>48218 then x,yf=nil,xb[pa[55339]];x=Ea(yf)==X('\152$\195V\138\56\194[','\254Q\173\53')if(not x)then Xd=qb[-25195]or Le(104301,50662,-25195)continue else Xd=qb[24046]or Le(99541,58937,24046)continue end Xd=42817 else Kf={[2]=xb[ld[6206]],[1]=2};Kf[3]=Kf;qf[(xf-251)],Xd=Kf,qb[19231]or Le(104393,59688,19231)end elseif Xd>=41759 then if Xd>=42817 then if Xd>43005 then if Xd<=43057 then if(Wb>137)then Xd=qb[11552]or Le(3765,28631,11552)continue else Xd=qb[-16617]or Le(7628,15154,-16617)continue end Xd=qb[-27765]or Le(105597,11623,-27765)else Nc+=1;Xd=qb[-9936]or Le(124821,15311,-9936)end elseif Xd<42909 then Nc+=pa[39911];Xd=qb[-20508]or Le(111423,22073,-20508)elseif Xd>42909 then x,yf,qf=pa[6206],pa[55339],pa[30509]-1 if(qf==-1)then Xd=qb[30130]or Le(28922,19095,30130)continue else Xd=qb[-6728]or Le(113612,61531,-6728)continue end Xd=qb[-12033]or Le(121574,37157,-12033)else bb[2]=bb[3][bb[1]];bb[3]=bb;bb[1]=2;Xd,xa[Vd]=qb[-24327]or Le(13955,57503,-24327),nil end elseif Xd<=42331 then if Xd>41805 then if pa[30509]==108 then Xd=qb[29535]or Le(70213,44594,29535)continue elseif(pa[30509]==154)then Xd=qb[31398]or Le(11592,10766,31398)continue else Xd=qb[32386]or Le(125770,1447,32386)continue end Xd=qb[-11058]or Le(95385,35547,-11058)elseif Xd>41759 then if Eb<=yf then Xd=qb[-9918]or Le(52732,13276,-9918)continue end Xd=qb[18043]or Le(76381,65415,18043)else if(Wb>171)then Xd=qb[-13215]or Le(23441,12048,-13215)continue else Xd=qb[-9031]or Le(65401,24262,-9031)continue end Xd=qb[10632]or Le(118906,61818,10632)end else x,yf=pa[490],pa[26698];qf=wf[yf]or hf[49874][yf]if x==1 then Xd=qb[12745]or Le(547,15896,12745)continue elseif(x==2)then Xd=qb[10300]or Le(102681,49862,10300)continue else Xd=qb[-2386]or Le(3324,62033,-2386)continue end Xd=20369 end elseif Xd>41270 then if Xd<41674 then if Xd>41303 then if(Wb>179)then Xd=qb[15032]or Le(119985,58984,15032)continue else Xd=qb[28590]or Le(29495,47050,28590)continue end Xd=qb[10215]or Le(21111,30561,10215)else xf=xf+Bc;Kf=xf if xf~=xf then Xd=qb[-16431]or Le(109563,49981,-16431)else Xd=64000 end end elseif Xd<=41674 then Nc+=1;Xd=qb[13564]or Le(120757,60335,13564)else bb[2]=bb[3][bb[1]];bb[3]=bb;bb[1]=2;xa[Vd],Xd=nil,qb[-9895]or Le(42866,25051,-9895)end elseif Xd>=40742 then if Xd<=40820 then if Xd>40742 then Kd=ld if Bc~=Bc then Xd=qb[5403]or Le(105151,3867,5403)else Xd=23789 end else Xd,Eb=qb[5493]or Le(99750,55809,5493),nil end else Eb,Xd=xf,49505 continue end elseif Xd>40436 then Eb=(function(...)for Kb,be,Bf,H,rf,za,ba,Fa,Kc,Ob,ic,vf,tb,Aa,s_,fa_,Qc,Mc,Ga,gf in...do w_{Kb,be,Bf,H,rf,za,ba,Fa,Kc,Ob,ic,vf,tb,Aa,s_,fa_,Qc,Mc,Ga,gf}end w_(-2)end);Xd,sa[qf]=qb[-1934]or Le(28395,49244,-1934),va(Eb)else if(Kf>=0 and ld>Bc)or((Kf<0 or Kf~=Kf)and ld<Bc)then Xd=qb[-7221]or Le(1748,25139,-7221)else Xd=qb[6181]or Le(53983,18127,6181)end end elseif Xd>=57210 then if Xd<60925 then if Xd<59185 then if Xd>58572 then if Xd<58754 then if(pa[30509]==202)then Xd=qb[7313]or Le(101729,55279,7313)continue else Xd=qb[-32162]or Le(75498,54662,-32162)continue end Xd=qb[14629]or Le(99168,9808,14629)elseif Xd<=58754 then if(Wb>95)then Xd=qb[4046]or Le(127846,39785,4046)continue else Xd=qb[-16428]or Le(227,50909,-16428)continue end Xd=qb[-27746]or Le(94127,45993,-27746)else if xb[pa[55339]]==xb[pa[58061]]then Xd=qb[16457]or Le(109329,62492,16457)continue else Xd=qb[-30577]or Le(79330,50157,-30577)continue end Xd=qb[-10558]or Le(69549,54167,-10558)end elseif Xd<57478 then if Xd>57210 then if(xb[pa[55339]]<xb[pa[58061]])then Xd=qb[-22240]or Le(110789,49452,-22240)continue else Xd=qb[14483]or Le(121639,47024,14483)continue end Xd=qb[-17433]or Le(100370,22850,-17433)else if(Wb>166)then Xd=qb[21530]or Le(60874,27217,21530)continue else Xd=qb[-29430]or Le(111652,36991,-29430)continue end Xd=qb[23797]or Le(105952,11728,23797)end elseif Xd<58486 then if Wb>87 then Xd=qb[-3792]or Le(27801,59139,-3792)continue else Xd=qb[23490]or Le(125173,65176,23490)continue end Xd=qb[-9951]or Le(77335,62273,-9951)elseif Xd>58486 then ld=rc[Nc];Nc+=1;Bc=ld[55339]if Bc==0 then Xd=qb[28216]or Le(80861,48150,28216)continue elseif Bc==2 then Xd=qb[-20822]or Le(118970,57530,-20822)continue end Xd=qb[-20519]or Le(31402,17355,-20519)else Xd,xb[pa[55339]]=qb[-16480]or Le(108857,30779,-16480),xb[pa[6206]]end elseif Xd<=60112 then if Xd>60004 then if Xd<=60011 then if(not qc)then Xd=qb[9515]or Le(87817,40791,9515)continue else Xd=qb[7754]or Le(69154,52358,7754)continue end Xd=63223 else Vd,Xd=ld,qb[-31570]or Le(77465,61539,-31570)continue end elseif Xd<=59854 then if Xd>59185 then if Wb>236 then Xd=qb[-7773]or Le(22440,55637,-7773)continue else Xd=qb[5609]or Le(33906,17714,5609)continue end Xd=qb[-5276]or Le(73817,49563,-5276)else Kf=xf if ld~=ld then Xd=qb[-12474]or Le(125643,16141,-12474)else Xd=34729 end end else if vd(yf)==X('\151\249\129\244\134','\227\152')then Xd=qb[15657]or Le(49659,19565,15657)continue end Xd=qb[7434]or Le(106643,40623,7434)end elseif Xd<60654 then if Xd>60115 then Nc+=1;Xd=qb[-4007]or Le(119969,60051,-4007)else yf[15670],Xd=Vd,qb[-17968]or Le(124364,14434,-17968)end elseif Xd>60654 then if Wb>128 then Xd=qb[21815]or Le(21025,25354,21815)continue else Xd=qb[25078]or Le(31881,12995,25078)continue end Xd=qb[-26369]or Le(75721,64011,-26369)else Vd,bb=xb[x+1],nil;xf=Vd;bb=Ea(xf)==X('\232E\151\228U\136','\134\48\250')if(not bb)then Xd=qb[-25926]or Le(127677,48759,-25926)continue else Xd=qb[1994]or Le(20887,23723,1994)continue end Xd=qb[-24161]or Le(122589,53217,-24161)end elseif Xd>63223 then if Xd<64911 then if Xd<=63765 then if Xd<63751 then qf[(xf-251)],Xd=ce[ld[6206]+1],qb[-9321]or Le(124698,63867,-9321)elseif Xd>63751 then x=ce[pa[6206]+1];Xd,x[3][x[1]]=qb[-8712]or Le(108246,31502,-8712),xb[pa[55339]]else yf=Od[63739];Xd,nb=qb[5568]or Le(113080,41727,5568),x+yf-1 end else if(Bc>=0 and xf>ld)or((Bc<0 or Bc~=Bc)and xf<ld)then Xd=qb[22174]or Le(50691,27765,22174)else Xd=qb[9563]or Le(113195,47558,9563)end end elseif Xd>65108 then pa=rc[Nc];Wb,Xd=pa[26069],qb[-1074]or Le(105471,23405,-1074)elseif Xd<=64924 then if Xd>64911 then if(Wb>6)then Xd=qb[-1131]or Le(112545,36397,-1131)continue else Xd=qb[3517]or Le(52278,19148,3517)continue end Xd=qb[31030]or Le(70212,46972,31030)else x=pa[55339];yf,qf=xb[x],nil;Eb=yf;qf=Ea(Eb)==X('\134\206\128\138\222\159','\232\187\237')if not qf then Xd=qb[13943]or Le(25181,59615,13943)continue end Xd=60654 end else Nc-=1;rc[Nc],Xd={[26069]=72,[55339]=Ud(pa[55339],205),[6206]=Ud(pa[6206],32),[30509]=0},qb[264]or Le(70255,46953,264)end elseif Xd>=62562 then if Xd>63106 then if Xd<=63156 then if Wb>224 then Xd=qb[26195]or Le(110608,20975,26195)continue else Xd=qb[-15837]or Le(17971,24435,-15837)continue end Xd=qb[-8509]or Le(67242,55466,-8509)else qc=false;Nc+=1 if Wb>129 then Xd=qb[-25843]or Le(108410,684,-25843)continue else Xd=qb[-11932]or Le(107673,50961,-11932)continue end Xd=qb[-6652]or Le(21853,29831,-6652)end elseif Xd>62980 then xb[pa[55339]][xb[pa[6206]]],Xd=xb[pa[30509]],qb[-30780]or Le(108873,30859,-30780)elseif Xd>62562 then if Wb>14 then Xd=qb[2202]or Le(122789,45812,2202)continue else Xd=qb[-17295]or Le(121978,4171,-17295)continue end Xd=qb[15255]or Le(80808,53160,15255)else Nc+=1;Xd=qb[22545]or Le(76844,64788,22545)end elseif Xd>61972 then if Xd<=62154 then Jc(bb);Xd=qb[16773]or Le(123026,38743,16773)else qf=rc[Nc+pa[39911]]if(sa[qf]==nil)then Xd=qb[4523]or Le(80001,37587,4523)continue else Xd=qb[-30426]or Le(11629,3526,-30426)continue end Xd=qb[19487]or Le(26123,51388,19487)end elseif Xd>61862 then if(ld>=0 and bb>xf)or((ld<0 or ld~=ld)and bb<xf)then Xd=qb[31024]or Le(22233,6728,31024)else Xd=14591 end elseif Xd<=60925 then pa[26069]=182;Nc+=1;Xd=qb[7381]or Le(76909,64855,7381)else Nc-=1;rc[Nc],Xd={[26069]=2,[55339]=Ud(pa[55339],194),[6206]=Ud(pa[6206],207),[30509]=0},qb[13523]or Le(71573,43983,13523)end elseif Xd<=52577 then if Xd<50867 then if Xd>=49383 then if Xd>=49904 then if Xd<=50577 then if Xd<=49904 then Xd,xb[pa[55339]]=qb[-16207]or Le(104989,32801,-16207),qf[pa[18054]][pa[15670]]else ld,Bc=xb[x+2],nil;Kf=ld;Bc=Ea(Kf)==X('\18G\21\30W\n','|2x')if not Bc then Xd=qb[-24134]or Le(19942,13869,-24134)continue end Xd=17150 end else Nc-=1;rc[Nc],Xd={[26069]=95,[55339]=Ud(pa[55339],136),[6206]=Ud(pa[6206],149),[30509]=0},qb[23429]or Le(98625,8307,23429)end elseif Xd<=49383 then Nc+=pa[39911];Xd=qb[28795]or Le(126446,15830,28795)else yf[18054]=Eb;Vd,Xd=nil,27564 end elseif Xd<48750 then if Xd>48309 then if(Wb>102)then Xd=qb[-16302]or Le(116318,35391,-16302)continue else Xd=qb[10089]or Le(26451,14226,10089)continue end Xd=qb[-16153]or Le(90424,32824,-16153)else if(pa[30509]==83)then Xd=qb[17873]or Le(94983,47686,17873)continue else Xd=qb[10779]or Le(1726,6677,10779)continue end Xd=qb[-4948]or Le(110369,29203,-4948)end elseif Xd>48750 then if Wb>168 then Xd=qb[12147]or Le(127885,48386,12147)continue else Xd=qb[31911]or Le(69462,42865,31911)continue end Xd=qb[23948]or Le(105703,8913,23948)else if not(yf<=ld)then Xd=qb[-441]or Le(49858,13912,-441)continue end Xd=qb[-30110]or Le(127256,4184,-30110)end elseif Xd<51957 then if Xd>=51721 then if Xd<=51721 then Xd,Eb=qb[22854]or Le(64045,18156,22854),xf continue else x=pa[26698];xb[pa[6206]]=xb[pa[55339]][x];Nc+=1;Xd=qb[-3610]or Le(91732,48012,-3610)end elseif Xd>50867 then x,yf,qf=pa[26698],pa[46905],xb[pa[55339]]if(qf==x)~=yf then Xd=qb[-13990]or Le(10885,28419,-13990)continue else Xd=qb[2402]or Le(122127,35037,2402)continue end Xd=qb[24693]or Le(83896,39864,24693)else xf=Eb if Vd~=Vd then Xd=qb[-1613]or Le(79115,54349,-1613)else Xd=51978 end end elseif Xd>52249 then if Xd<=52455 then xb[pa[55339]]=Ad(pa[58061]);Nc+=1;Xd=qb[23880]or Le(103040,13488,23880)else Nc+=1;Xd=qb[4628]or Le(105836,11348,4628)end elseif Xd>51978 then if(xf>=0 and Vd>bb)or((xf<0 or xf~=xf)and Vd<bb)then Xd=qb[-22654]or Le(20396,29792,-22654)else Xd=37221 end elseif Xd<=51957 then yf,qf,Eb=xa if vd(yf)~=X('E3\146\56W/\147\53','#F\252[')then Xd=qb[8919]or Le(24486,2841,8919)continue end Xd=qb[26152]or Le(54593,3165,26152)else if(bb>=0 and Eb>Vd)or((bb<0 or bb~=bb)and Eb<Vd)then Xd=qb[22144]or Le(129657,3963,22144)else Xd=58572 end end elseif Xd<=55031 then if Xd>53215 then if Xd>54593 then if(Wb>1)then Xd=qb[28174]or Le(73644,54010,28174)continue else Xd=qb[18381]or Le(126189,58475,18381)continue end Xd=qb[11499]or Le(90204,33156,11499)elseif Xd<53692 then Nc+=pa[39911];Xd=qb[-18292]or Le(92652,47572,-18292)elseif Xd<=53692 then Nc+=pa[39911];Xd=qb[-24687]or Le(101347,24533,-24687)else if(Wb>230)then Xd=qb[18164]or Le(61540,24890,18164)continue else Xd=qb[-27078]or Le(15896,16274,-27078)continue end Xd=qb[-3775]or Le(69231,54121,-3775)end elseif Xd>=52862 then if Xd>=53151 then if Xd<=53151 then Xd,xb[pa[6206]]=qb[17413]or Le(83726,39478,17413),Eb else x=pd(yf)if(x~=nil and x[X('f\254\176M\196\171','9\161\217')]~=nil)then Xd=qb[-1918]or Le(11,12575,-1918)continue else Xd=qb[11232]or Le(25397,54205,11232)continue end Xd=qb[-15918]or Le(92180,36106,-15918)end else x,yf=pa[55339],pa[26698];nb=x+6;qf,Eb=xb[x],nil;Eb=Ea(qf)==X(']~\206fOb\207k',';\v\160\5')if Eb then Xd=qb[-19105]or Le(32519,64693,-19105)continue else Xd=qb[-19789]or Le(19411,22378,-19789)continue end Xd=qb[-13879]or Le(92505,47259,-13879)end elseif Xd<=52615 then xb[pa[55339]],Xd=xb[pa[30509]]%pa[26698],qb[-17142]or Le(71545,43643,-17142)else Nc-=1;rc[Nc],Xd={[26069]=176,[55339]=Ud(pa[55339],28),[6206]=Ud(pa[6206],45),[30509]=0},qb[-13923]or Le(94551,36993,-13923)end elseif Xd>=55532 then if Xd<56850 then if Xd>55532 then if(xb[pa[55339]]<xb[pa[58061]])then Xd=qb[14383]or Le(125547,35852,14383)continue else Xd=qb[-5541]or Le(103815,48644,-5541)continue end Xd=qb[21407]or Le(24325,25151,21407)else if(Wb>33)then Xd=qb[11852]or Le(3851,61921,11852)continue else Xd=qb[-9769]or Le(21276,14077,-9769)continue end Xd=qb[-14228]or Le(78413,55159,-14228)end elseif Xd<=56850 then if Wb>161 then Xd=qb[-3595]or Le(26692,53006,-3595)continue else Xd=qb[18977]or Le(110235,62924,18977)continue end Xd=qb[7231]or Le(78147,53365,7231)else Vd,bb=yf(qf,Eb);Eb=Vd if Eb==nil then Xd=qb[-30650]or Le(129941,48975,-30650)else Xd=15396 end end elseif Xd>=55231 then if Xd<=55231 then x,yf=pa[55339],pa[6206];qf=yf-1 if(qf==-1)then Xd=qb[-20782]or Le(76906,40767,-20782)continue else Xd=qb[-17074]or Le(9312,3434,-17074)continue end Xd=33011 else if pa[30509]==45 then Xd=qb[-5419]or Le(56734,28279,-5419)continue elseif(pa[30509]==153)then Xd=qb[359]or Le(100604,15769,359)continue else Xd=qb[1355]or Le(111017,24478,1355)continue end Xd=qb[-1974]or Le(114317,16567,-1974)end else Nc+=pa[39911];Xd=qb[-14282]or Le(92036,48060,-14282)end end end return function(...)local ob,Of,_c,Ub,dc,Fc,Ra,Pc,ta,eb,ka;Of,Fc={},function(Ab,md,yc)Of[md]=Yc(yc,31535)-Yc(Ab,36596)return Of[md]end;dc=Of[20530]or Fc(23660,20530,119193)while dc~=2690 do if dc<=41128 then if dc>=16894 then if dc<26786 then dc=Of[-11117]or Fc(5860,-11117,55741)continue elseif dc>26786 then _c,Ra=L(Dc(Mf,ta,Pd[53224],Pd[54297],Ub))if(_c[1])then dc=Of[-2384]or Fc(32204,-2384,123397)continue else dc=Of[10043]or Fc(56367,10043,62398)continue end dc=Of[-10112]or Fc(12599,-10112,97006)else dc,ob=Of[21582]or Fc(58410,21582,56651),Ea(ob)end elseif dc<=13750 then ob,eb=_c[2],nil;Pc=ob;eb=Ea(Pc)==X('\136Ze\146@p','\251.\23')if eb==false then dc=Of[8910]or Fc(16172,8910,90453)continue end dc=Of[26044]or Fc(26280,26044,88269)else return Jc(ob,0)end elseif dc<55326 then return Me(_c,2,Ra)elseif dc<=55326 then ka,ta,Ub=l_(...),Ad(Pd[49497]),{[63739]=0,[42245]={}};Da(ka,1,Pd[33763],0,ta)if Pd[33763]<ka[X('\147','\253')]then dc=Of[-21548]or Fc(49616,-21548,82705)continue end dc=Of[3208]or Fc(58911,3208,94908)else _c,Ra=Pd[33763]+1,ka[X('\a','i')]-Pd[33763];Ub[63739]=Ra;Da(ka,_c,_c+Ra-1,1,Ub[42245]);dc=Of[27672]or Fc(20903,27672,66772)end end end end return Qa(Sd,vc)end)local _e;_e,Ke={[0]=0},function()_e[0]=_e[0]+1 return{[1]=_e[0],[3]=_e}end;Re=A return(function()local if_,Id,Na,qa;qa={[2]=Re,[1]=2};qa[3]=qa;if_={[2]=kb,[1]=2};if_[3]=if_;Na={[1]=2,[2]=ib};Na[3]=Na;Id={[1]=2,[2]=la};Id[3]=Id return Re(Ge'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',{[2]=if_,[4]=Id,[1]=qa,[3]=Na})end)()(...)
--------------------------------------------------------------------
-- QUICK EXAMPLES FOR PRESETS
-- TagEffectProfiles[123] = { Preset = "RED_SCROLL" }
-- TagEffectProfiles[123] = { Preset = "BLUE_SPIN" }
-- TagEffectProfiles[123] = { Preset = "BLACK_SOLID" }
-- TagEffectProfiles[123] = { Preset = "WHITE_SOLID" }
-- TagEffectProfiles[123] = { Preset = "RAINBOW_SPIN" }
-- TagEffectProfiles[123] = { Preset = "RAINBOW_SCROLL" }
-- TagEffectProfiles[123] = { Preset = "PURPLE_SCROLL", Effects = { "Pulse", "Scanline", "Sparkles" } }
-- TagEffectProfiles[123] = { Preset = "YELLOW_SCROLL", TopTextColor = Color3.fromRGB(0,0,0) }
--------------------------------------------------------------------

if IY_LOADED and not _G.IY_DEBUG == true then
	-- error("Infinite Yield is already running!",0)
	return
end

pcall(function() getgenv().IY_LOADED = true end)

COREGUI = game:GetService("CoreGui")
if not game:IsLoaded() then
	local notLoaded = Instance.new("Message")
	notLoaded.Parent = COREGUI
	notLoaded.Text = 'Infinite Yield is waiting for the game to load'
	game.Loaded:Wait()
	notLoaded:Destroy()
end

currentVersion = '5.9.3'

Players = game:GetService("Players")

Holder = Instance.new("Frame")
Title = Instance.new("TextLabel")
Dark = Instance.new("Frame")
Cmdbar = Instance.new("TextBox")
CMDsF = Instance.new("ScrollingFrame")
cmdListLayout = Instance.new("UIListLayout")
SettingsButton = Instance.new("ImageButton")
ColorsButton = Instance.new("ImageButton")
Settings = Instance.new("Frame")
Prefix = Instance.new("TextLabel")
PrefixBox = Instance.new("TextBox")
Keybinds = Instance.new("TextLabel")
StayOpen = Instance.new("TextLabel")
Button = Instance.new("Frame")
On = Instance.new("TextButton")
Positions = Instance.new("TextLabel")
EventBind = Instance.new("TextLabel")
Plugins = Instance.new("TextLabel")
Example = Instance.new("TextButton")
Notification = Instance.new("Frame")
Title_2 = Instance.new("TextLabel")
Text_2 = Instance.new("TextLabel")
CloseButton = Instance.new("TextButton")
CloseImage = Instance.new("ImageLabel")
PinButton = Instance.new("TextButton")
PinImage = Instance.new("ImageLabel")
Tooltip = Instance.new("Frame")
Title_3 = Instance.new("TextLabel")
Description = Instance.new("TextLabel")
IntroBackground = Instance.new("Frame")
Logo = Instance.new("ImageLabel")
Credits = Instance.new("TextBox")
KeybindsFrame = Instance.new("Frame")
Close = Instance.new("TextButton")
Add = Instance.new("TextButton")
Delete = Instance.new("TextButton")
Holder_2 = Instance.new("ScrollingFrame")
Example_2 = Instance.new("Frame")
Text_3 = Instance.new("TextLabel")
Delete_2 = Instance.new("TextButton")
KeybindEditor = Instance.new("Frame")
background_2 = Instance.new("Frame")
Dark_3 = Instance.new("Frame")
Directions = Instance.new("TextLabel")
BindTo = Instance.new("TextButton")
TriggerLabel = Instance.new("TextLabel")
BindTriggerSelect = Instance.new("TextButton")
Add_2 = Instance.new("TextButton")
Toggles = Instance.new("ScrollingFrame")
ClickTP  = Instance.new("TextLabel")
Select = Instance.new("TextButton")
ClickDelete = Instance.new("TextLabel")
Select_2 = Instance.new("TextButton")
Cmdbar_2 = Instance.new("TextBox")
Cmdbar_3 = Instance.new("TextBox")
CreateToggle = Instance.new("TextLabel")
Button_2 = Instance.new("Frame")
On_2 = Instance.new("TextButton")
shadow_2 = Instance.new("Frame")
PopupText_2 = Instance.new("TextLabel")
Exit_2 = Instance.new("TextButton")
ExitImage_2 = Instance.new("ImageLabel")
PositionsFrame = Instance.new("Frame")
Close_3 = Instance.new("TextButton")
Delete_5 = Instance.new("TextButton")
Part = Instance.new("TextButton")
Holder_4 = Instance.new("ScrollingFrame")
Example_4 = Instance.new("Frame")
Text_5 = Instance.new("TextLabel")
Delete_6 = Instance.new("TextButton")
TP = Instance.new("TextButton")
AliasesFrame = Instance.new("Frame")
Close_2 = Instance.new("TextButton")
Delete_3 = Instance.new("TextButton")
Holder_3 = Instance.new("ScrollingFrame")
Example_3 = Instance.new("Frame")
Text_4 = Instance.new("TextLabel")
Delete_4 = Instance.new("TextButton")
Aliases = Instance.new("TextLabel")
PluginsFrame = Instance.new("Frame")
Close_4 = Instance.new("TextButton")
Add_3 = Instance.new("TextButton")
Holder_5 = Instance.new("ScrollingFrame")
Example_5 = Instance.new("Frame")
Text_6 = Instance.new("TextLabel")
Delete_7 = Instance.new("TextButton")
PluginEditor = Instance.new("Frame")
background_3 = Instance.new("Frame")
Dark_2 = Instance.new("Frame")
Img = Instance.new("ImageButton")
AddPlugin = Instance.new("TextButton")
FileName = Instance.new("TextBox")
About = Instance.new("TextLabel")
Directions_2 = Instance.new("TextLabel")
shadow_3 = Instance.new("Frame")
PopupText_3 = Instance.new("TextLabel")
Exit_3 = Instance.new("TextButton")
ExitImage_3 = Instance.new("ImageLabel")
AliasHint = Instance.new("TextLabel")
PluginsHint = Instance.new("TextLabel")
PositionsHint = Instance.new("TextLabel")
ToPartFrame = Instance.new("Frame")
background_4 = Instance.new("Frame")
ChoosePart = Instance.new("TextButton")
CopyPath = Instance.new("TextButton")
Directions_3 = Instance.new("TextLabel")
Path = Instance.new("TextLabel")
shadow_4 = Instance.new("Frame")
PopupText_5 = Instance.new("TextLabel")
Exit_4 = Instance.new("TextButton")
ExitImage_5 = Instance.new("ImageLabel")
logs = Instance.new("Frame")
shadow = Instance.new("Frame")
Hide = Instance.new("TextButton")
ImageLabel = Instance.new("ImageLabel")
PopupText = Instance.new("TextLabel")
Exit = Instance.new("TextButton")
ImageLabel_2 = Instance.new("ImageLabel")
background = Instance.new("Frame")
chat = Instance.new("Frame")
Clear = Instance.new("TextButton")
SaveChatlogs = Instance.new("TextButton")
Toggle = Instance.new("TextButton")
scroll_2 = Instance.new("ScrollingFrame")
join = Instance.new("Frame")
Toggle_2 = Instance.new("TextButton")
Clear_2 = Instance.new("TextButton")
scroll_3 = Instance.new("ScrollingFrame")
listlayout = Instance.new("UIListLayout",scroll_3)
selectChat = Instance.new("TextButton")
selectJoin = Instance.new("TextButton")

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

PARENT = nil
if get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = hiddenUI()
	PARENT = Main
elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	syn.protect_gui(Main)
	Main.Parent = COREGUI
	PARENT = Main
elseif COREGUI:FindFirstChild('RobloxGui') then
	PARENT = COREGUI.RobloxGui
else
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = COREGUI
	PARENT = Main
end

shade1 = {}
shade2 = {}
shade3 = {}
text1 = {}
text2 = {}
scroll = {}

Holder.Name = randomString()
Holder.Parent = PARENT
Holder.Active = true
Holder.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(1, -250, 1, -220)
Holder.Size = UDim2.new(0, 250, 0, 220)
Holder.ZIndex = 10
table.insert(shade2,Holder)

Title.Name = "Title"
Title.Parent = Holder
Title.Active = true
Title.BackgroundColor3 = Color3.fromRGB(36,36,37)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 250, 0, 20)
Title.Font = Enum.Font.SourceSans
Title.TextSize = 18
Title.Text = "Infinite Yield FE v" .. currentVersion

do
	local emoji = ({
		["01 01"] = "🎆",
		[(function(Year)
			local A = math.floor(Year/100)
			local B = math.floor((13+8*A)/25)
			local C = (15-B+A-math.floor(A/4))%30
			local D = (4+A-math.floor(A/4))%7
			local E = (19*(Year%19)+C)%30
			local F = (2*(Year%4)+4*(Year%7)+6*E+D)%7
			local G = (22+E+F)
			if E == 29 and F == 6 then
				return "04 19"
			elseif E == 28 and F == 6 then
				return "04 18"
			elseif 31 < G then
				return ("04 %02d"):format(G-31)
			end
			return ("03 %02d"):format(G)
		end)(tonumber(os.date"%Y"))] = "🥚",
		["10 31"] = "🎃",
		["12 25"] = "🎄"
	})[os.date("%m %d")]
	if emoji then
		Title.Text = ("%s %s %s"):format(emoji, Title.Text, emoji)
	end
end

Title.TextColor3 = Color3.new(1, 1, 1)
Title.ZIndex = 10
table.insert(shade1,Title)
table.insert(text1,Title)

Dark.Name = "Dark"
Dark.Parent = Holder
Dark.Active = true
Dark.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
Dark.BorderSizePixel = 0
Dark.Position = UDim2.new(0, 0, 0, 45)
Dark.Size = UDim2.new(0, 250, 0, 175)
Dark.ZIndex = 10
table.insert(shade1,Dark)

Cmdbar.Name = "Cmdbar"
Cmdbar.Parent = Holder
Cmdbar.BackgroundTransparency = 1
Cmdbar.BorderSizePixel = 0
Cmdbar.Position = UDim2.new(0, 5, 0, 20)
Cmdbar.Size = UDim2.new(0, 240, 0, 25)
Cmdbar.Font = Enum.Font.SourceSans
Cmdbar.TextSize = 18
Cmdbar.TextXAlignment = Enum.TextXAlignment.Left
Cmdbar.TextColor3 = Color3.new(1, 1, 1)
Cmdbar.Text = ""
Cmdbar.ZIndex = 10
Cmdbar.PlaceholderText = "Command Bar"

CMDsF.Name = "CMDs"
CMDsF.Parent = Holder
CMDsF.BackgroundTransparency = 1
CMDsF.BorderSizePixel = 0
CMDsF.Position = UDim2.new(0, 5, 0, 45)
CMDsF.Size = UDim2.new(0, 245, 0, 175)
CMDsF.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
CMDsF.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
CMDsF.CanvasSize = UDim2.new(0, 0, 0, 0)
CMDsF.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
CMDsF.ScrollBarThickness = 8
CMDsF.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
CMDsF.VerticalScrollBarInset = 'Always'
CMDsF.ZIndex = 10
table.insert(scroll,CMDsF)

cmdListLayout.Parent = CMDsF

SettingsButton.Name = "SettingsButton"
SettingsButton.Parent = Holder
SettingsButton.BackgroundTransparency = 1
SettingsButton.Position = UDim2.new(0, 230, 0, 0)
SettingsButton.Size = UDim2.new(0, 20, 0, 20)
SettingsButton.Image = "rbxassetid://1204397029"
SettingsButton.ZIndex = 10

ReferenceButton = Instance.new("ImageButton")
ReferenceButton.Name = "ReferenceButton"
ReferenceButton.Parent = Holder
ReferenceButton.BackgroundTransparency = 1
ReferenceButton.Position = UDim2.new(0, 212, 0, 2)
ReferenceButton.Size = UDim2.new(0, 16, 0, 16)
ReferenceButton.Image = "rbxassetid://3523243755"
ReferenceButton.ZIndex = 10

Settings.Name = "Settings"
Settings.Parent = Holder
Settings.Active = true
Settings.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0, 0, 0, 220)
Settings.Size = UDim2.new(0, 250, 0, 175)
Settings.ZIndex = 10
table.insert(shade1,Settings)

SettingsHolder = Instance.new("ScrollingFrame")
SettingsHolder.Name = "Holder"
SettingsHolder.Parent = Settings
SettingsHolder.BackgroundTransparency = 1
SettingsHolder.BorderSizePixel = 0
SettingsHolder.Size = UDim2.new(1,0,1,0)
SettingsHolder.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
SettingsHolder.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
SettingsHolder.CanvasSize = UDim2.new(0, 0, 0, 235)
SettingsHolder.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
SettingsHolder.ScrollBarThickness = 8
SettingsHolder.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
SettingsHolder.VerticalScrollBarInset = 'Always'
SettingsHolder.ZIndex = 10
table.insert(scroll,SettingsHolder)

Prefix.Name = "Prefix"
Prefix.Parent = SettingsHolder
Prefix.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Prefix.BorderSizePixel = 0
Prefix.BackgroundTransparency = 1
Prefix.Position = UDim2.new(0, 5, 0, 5)
Prefix.Size = UDim2.new(1, -10, 0, 20)
Prefix.Font = Enum.Font.SourceSans
Prefix.TextSize = 14
Prefix.Text = "Prefix"
Prefix.TextColor3 = Color3.new(1, 1, 1)
Prefix.TextXAlignment = Enum.TextXAlignment.Left
Prefix.ZIndex = 10
table.insert(shade2,Prefix)
table.insert(text1,Prefix)

PrefixBox.Name = "PrefixBox"
PrefixBox.Parent = Prefix
PrefixBox.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
PrefixBox.BorderSizePixel = 0
PrefixBox.Position = UDim2.new(1, -20, 0, 0)
PrefixBox.Size = UDim2.new(0, 20, 0, 20)
PrefixBox.Font = Enum.Font.SourceSansBold
PrefixBox.TextSize = 14
PrefixBox.Text = ''
PrefixBox.TextColor3 = Color3.new(0, 0, 0)
PrefixBox.ZIndex = 10
table.insert(shade3,PrefixBox)
table.insert(text2,PrefixBox)

function makeSettingsButton(name,iconID,off)
	local button = Instance.new("TextButton")
	button.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	button.BorderSizePixel = 0
	button.Position = UDim2.new(0,0,0,0)
	button.Size = UDim2.new(1,0,0,25)
	button.Text = ""
	button.ZIndex = 10
	local icon = Instance.new("ImageLabel")
	icon.Name = "Icon"
	icon.Parent = button
	icon.Position = UDim2.new(0,5,0,5)
	icon.Size = UDim2.new(0,16,0,16)
	icon.BackgroundTransparency = 1
	icon.Image = iconID
	icon.ZIndex = 10
	if off then
		icon.ScaleType = Enum.ScaleType.Crop
		icon.ImageRectSize = Vector2.new(16,16)
		icon.ImageRectOffset = Vector2.new(off,0)
	end
	local label = Instance.new("TextLabel")
	label.Name = "ButtonLabel"
	label.Parent = button
	label.BackgroundTransparency = 1
	label.Text = name
	label.Position = UDim2.new(0,28,0,0)
	label.Size = UDim2.new(1,-28,1,0)
	label.Font = Enum.Font.SourceSans
	label.TextColor3 = Color3.new(1, 1, 1)
	label.TextSize = 14
	label.ZIndex = 10
	label.TextXAlignment = Enum.TextXAlignment.Left
	table.insert(shade2,button)
	table.insert(text1,label)
	return button
end

ColorsButton = makeSettingsButton("Edit Theme","rbxassetid://4911962991")
ColorsButton.Position = UDim2.new(0,5,0,55)
ColorsButton.Size = UDim2.new(1,-10,0,25)
ColorsButton.Name = "Colors"
ColorsButton.Parent = SettingsHolder

Keybinds = makeSettingsButton("Edit Keybinds","rbxassetid://129697930")
Keybinds.Position = UDim2.new(0, 5, 0, 85)
Keybinds.Size = UDim2.new(1, -10, 0, 25)
Keybinds.Name = "Keybinds"
Keybinds.Parent = SettingsHolder

Aliases = makeSettingsButton("Edit Aliases","rbxassetid://5147488658")
Aliases.Position = UDim2.new(0, 5, 0, 115)
Aliases.Size = UDim2.new(1, -10, 0, 25)
Aliases.Name = "Aliases"
Aliases.Parent = SettingsHolder

StayOpen.Name = "StayOpen"
StayOpen.Parent = SettingsHolder
StayOpen.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
StayOpen.BorderSizePixel = 0
StayOpen.BackgroundTransparency = 1
StayOpen.Position = UDim2.new(0, 5, 0, 30)
StayOpen.Size = UDim2.new(1, -10, 0, 20)
StayOpen.Font = Enum.Font.SourceSans
StayOpen.TextSize = 14
StayOpen.Text = "Keep Menu Open"
StayOpen.TextColor3 = Color3.new(1, 1, 1)
StayOpen.TextXAlignment = Enum.TextXAlignment.Left
StayOpen.ZIndex = 10
table.insert(shade2,StayOpen)
table.insert(text1,StayOpen)

Button.Name = "Button"
Button.Parent = StayOpen
Button.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(1, -20, 0, 0)
Button.Size = UDim2.new(0, 20, 0, 20)
Button.ZIndex = 10
table.insert(shade3,Button)

On.Name = "On"
On.Parent = Button
On.BackgroundColor3 = Color3.fromRGB(150, 150, 151)
On.BackgroundTransparency = 1
On.BorderSizePixel = 0
On.Position = UDim2.new(0, 2, 0, 2)
On.Size = UDim2.new(0, 16, 0, 16)
On.Font = Enum.Font.SourceSans
On.FontSize = Enum.FontSize.Size14
On.Text = ""
On.TextColor3 = Color3.new(0, 0, 0)
On.ZIndex = 10

Positions = makeSettingsButton("Edit/Goto Waypoints","rbxassetid://5147488592")
Positions.Position = UDim2.new(0, 5, 0, 145)
Positions.Size = UDim2.new(1, -10, 0, 25)
Positions.Name = "Waypoints"
Positions.Parent = SettingsHolder

EventBind = makeSettingsButton("Edit Event Binds","rbxassetid://5147695474",759)
EventBind.Position = UDim2.new(0, 5, 0, 205)
EventBind.Size = UDim2.new(1, -10, 0, 25)
EventBind.Name = "EventBinds"
EventBind.Parent = SettingsHolder

Plugins = makeSettingsButton("Manage Plugins","rbxassetid://5147695474",743)
Plugins.Position = UDim2.new(0, 5, 0, 175)
Plugins.Size = UDim2.new(1, -10, 0, 25)
Plugins.Name = "Plugins"
Plugins.Parent = SettingsHolder

Example.Name = "Example"
Example.Parent = Holder
Example.BackgroundTransparency = 1
Example.BorderSizePixel = 0
Example.Size = UDim2.new(0, 190, 0, 20)
Example.Visible = false
Example.Font = Enum.Font.SourceSans
Example.TextSize = 18
Example.Text = "Example"
Example.TextColor3 = Color3.new(1, 1, 1)
Example.TextXAlignment = Enum.TextXAlignment.Left
Example.ZIndex = 10
table.insert(text1,Example)

Notification.Name = randomString()
Notification.Parent = PARENT
Notification.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
Notification.BorderSizePixel = 0
Notification.Position = UDim2.new(1, -500, 1, 20)
Notification.Size = UDim2.new(0, 250, 0, 100)
Notification.ZIndex = 10
table.insert(shade1,Notification)

Title_2.Name = "Title"
Title_2.Parent = Notification
Title_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Title_2.BorderSizePixel = 0
Title_2.Size = UDim2.new(0, 250, 0, 20)
Title_2.Font = Enum.Font.SourceSans
Title_2.TextSize = 14
Title_2.Text = "Notification Title"
Title_2.TextColor3 = Color3.new(1, 1, 1)
Title_2.ZIndex = 10
table.insert(shade2,Title_2)
table.insert(text1,Title_2)

Text_2.Name = "Text"
Text_2.Parent = Notification
Text_2.BackgroundTransparency = 1
Text_2.BorderSizePixel = 0
Text_2.Position = UDim2.new(0, 5, 0, 25)
Text_2.Size = UDim2.new(0, 240, 0, 75)
Text_2.Font = Enum.Font.SourceSans
Text_2.TextSize = 16
Text_2.Text = "Notification Text"
Text_2.TextColor3 = Color3.new(1, 1, 1)
Text_2.TextWrapped = true
Text_2.ZIndex = 10
table.insert(text1,Text_2)

CloseButton.Name = "CloseButton"
CloseButton.Parent = Notification
CloseButton.BackgroundTransparency = 1
CloseButton.Position = UDim2.new(1, -20, 0, 0)
CloseButton.Size = UDim2.new(0, 20, 0, 20)
CloseButton.Text = ""
CloseButton.ZIndex = 10

CloseImage.Parent = CloseButton
CloseImage.BackgroundColor3 = Color3.new(1, 1, 1)
CloseImage.BackgroundTransparency = 1
CloseImage.Position = UDim2.new(0, 5, 0, 5)
CloseImage.Size = UDim2.new(0, 10, 0, 10)
CloseImage.Image = "rbxassetid://5054663650"
CloseImage.ZIndex = 10

PinButton.Name = "PinButton"
PinButton.Parent = Notification
PinButton.BackgroundTransparency = 1
PinButton.Size = UDim2.new(0, 20, 0, 20)
PinButton.ZIndex = 10
PinButton.Text = ""

PinImage.Parent = PinButton
PinImage.BackgroundColor3 = Color3.new(1, 1, 1)
PinImage.BackgroundTransparency = 1
PinImage.Position = UDim2.new(0, 3, 0, 3)
PinImage.Size = UDim2.new(0, 14, 0, 14)
PinImage.ZIndex = 10
PinImage.Image = "rbxassetid://6234691350"

Tooltip.Name = randomString()
Tooltip.Parent = PARENT
Tooltip.Active = true
Tooltip.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
Tooltip.BackgroundTransparency = 0.1
Tooltip.BorderSizePixel = 0
Tooltip.Size = UDim2.new(0, 200, 0, 96)
Tooltip.Visible = false
Tooltip.ZIndex = 10
table.insert(shade1,Tooltip)

Title_3.Name = "Title"
Title_3.Parent = Tooltip
Title_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Title_3.BackgroundTransparency = 0.1
Title_3.BorderSizePixel = 0
Title_3.Size = UDim2.new(0, 200, 0, 20)
Title_3.Font = Enum.Font.SourceSans
Title_3.TextSize = 14
Title_3.Text = ""
Title_3.TextColor3 = Color3.new(1, 1, 1)
Title_3.TextTransparency = 0.1
Title_3.ZIndex = 10
table.insert(shade2,Title_3)
table.insert(text1,Title_3)

Description.Name = "Description"
Description.Parent = Tooltip
Description.BackgroundTransparency = 1
Description.BorderSizePixel = 0
Description.Size = UDim2.new(0,180,0,72)
Description.Position = UDim2.new(0,10,0,18)
Description.Font = Enum.Font.SourceSans
Description.TextSize = 16
Description.Text = ""
Description.TextColor3 = Color3.new(1, 1, 1)
Description.TextTransparency = 0.1
Description.TextWrapped = true
Description.ZIndex = 10
table.insert(text1,Description)

IntroBackground.Name = "IntroBackground"
IntroBackground.Parent = Holder
IntroBackground.Active = true
IntroBackground.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
IntroBackground.BorderSizePixel = 0
IntroBackground.Position = UDim2.new(0, 0, 0, 45)
IntroBackground.Size = UDim2.new(0, 250, 0, 175)
IntroBackground.ZIndex = 10

Logo.Name = "Logo"
Logo.Parent = Holder
Logo.BackgroundTransparency = 1
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0, 125, 0, 127)
Logo.Size = UDim2.new(0, 10, 0, 10)
Logo.Image = "rbxassetid://1352543873"
Logo.ImageTransparency = 0
Logo.ZIndex = 10

Credits.Name = "Credits"
Credits.Parent = Holder
Credits.BackgroundTransparency = 1
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0, 0, 0.9, 30)
Credits.Size = UDim2.new(0, 250, 0, 20)
Credits.Font = Enum.Font.SourceSansLight
Credits.FontSize = Enum.FontSize.Size18
Credits.Text = "Edge // Zwolf // Moon // Toon"
Credits.TextColor3 = Color3.new(1, 1, 1)
Credits.ZIndex = 10

KeybindsFrame.Name = "KeybindsFrame"
KeybindsFrame.Parent = Settings
KeybindsFrame.Active = true
KeybindsFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
KeybindsFrame.BorderSizePixel = 0
KeybindsFrame.Position = UDim2.new(0, 0, 0, 175)
KeybindsFrame.Size = UDim2.new(0, 250, 0, 175)
KeybindsFrame.ZIndex = 10
table.insert(shade1,KeybindsFrame)

Close.Name = "Close"
Close.Parent = KeybindsFrame
Close.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0, 205, 0, 150)
Close.Size = UDim2.new(0, 40, 0, 20)
Close.Font = Enum.Font.SourceSans
Close.TextSize = 14
Close.Text = "Close"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.ZIndex = 10
table.insert(shade2,Close)
table.insert(text1,Close)

Add.Name = "Add"
Add.Parent = KeybindsFrame
Add.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Add.BorderSizePixel = 0
Add.Position = UDim2.new(0, 5, 0, 150)
Add.Size = UDim2.new(0, 40, 0, 20)
Add.Font = Enum.Font.SourceSans
Add.TextSize = 14
Add.Text = "Add"
Add.TextColor3 = Color3.new(1, 1, 1)
Add.ZIndex = 10
table.insert(shade2,Add)
table.insert(text1,Add)

Delete.Name = "Delete"
Delete.Parent = KeybindsFrame
Delete.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Delete.BorderSizePixel = 0
Delete.Position = UDim2.new(0, 50, 0, 150)
Delete.Size = UDim2.new(0, 40, 0, 20)
Delete.Font = Enum.Font.SourceSans
Delete.TextSize = 14
Delete.Text = "Clear"
Delete.TextColor3 = Color3.new(1, 1, 1)
Delete.ZIndex = 10
table.insert(shade2,Delete)
table.insert(text1,Delete)

Holder_2.Name = "Holder"
Holder_2.Parent = KeybindsFrame
Holder_2.BackgroundTransparency = 1
Holder_2.BorderSizePixel = 0
Holder_2.Position = UDim2.new(0, 0, 0, 0)
Holder_2.Size = UDim2.new(0, 250, 0, 145)
Holder_2.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
Holder_2.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_2.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_2.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_2.ScrollBarThickness = 0
Holder_2.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_2.VerticalScrollBarInset = 'Always'
Holder_2.ZIndex = 10

Example_2.Name = "Example"
Example_2.Parent = KeybindsFrame
Example_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Example_2.BorderSizePixel = 0
Example_2.Size = UDim2.new(0, 10, 0, 20)
Example_2.Visible = false
Example_2.ZIndex = 10
table.insert(shade2,Example_2)

Text_3.Name = "Text"
Text_3.Parent = Example_2
Text_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Text_3.BorderSizePixel = 0
Text_3.Position = UDim2.new(0, 10, 0, 0)
Text_3.Size = UDim2.new(0, 240, 0, 20)
Text_3.Font = Enum.Font.SourceSans
Text_3.TextSize = 14
Text_3.Text = "nom"
Text_3.TextColor3 = Color3.new(1, 1, 1)
Text_3.TextXAlignment = Enum.TextXAlignment.Left
Text_3.ZIndex = 10
table.insert(shade2,Text_3)
table.insert(text1,Text_3)

Delete_2.Name = "Delete"
Delete_2.Parent = Text_3
Delete_2.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Delete_2.BorderSizePixel = 0
Delete_2.Position = UDim2.new(0, 200, 0, 0)
Delete_2.Size = UDim2.new(0, 40, 0, 20)
Delete_2.Font = Enum.Font.SourceSans
Delete_2.TextSize = 14
Delete_2.Text = "Delete"
Delete_2.TextColor3 = Color3.new(0, 0, 0)
Delete_2.ZIndex = 10
table.insert(shade3,Delete_2)
table.insert(text2,Delete_2)

KeybindEditor.Name = randomString()
KeybindEditor.Parent = PARENT
KeybindEditor.Active = true
KeybindEditor.BackgroundTransparency = 1
KeybindEditor.Position = UDim2.new(0.5, -180, 0, -500)
KeybindEditor.Size = UDim2.new(0, 360, 0, 20)
KeybindEditor.ZIndex = 10

background_2.Name = "background"
background_2.Parent = KeybindEditor
background_2.Active = true
background_2.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
background_2.BorderSizePixel = 0
background_2.Position = UDim2.new(0, 0, 0, 20)
background_2.Size = UDim2.new(0, 360, 0, 185)
background_2.ZIndex = 10
table.insert(shade1,background_2)

Dark_3.Name = "Dark"
Dark_3.Parent = background_2
Dark_3.Active = true
Dark_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Dark_3.BorderSizePixel = 0
Dark_3.Position = UDim2.new(0, 135, 0, 0)
Dark_3.Size = UDim2.new(0, 2, 0, 185)
Dark_3.ZIndex = 10
table.insert(shade2,Dark_3)

Directions.Name = "Directions"
Directions.Parent = background_2
Directions.BackgroundTransparency = 1
Directions.BorderSizePixel = 0
Directions.Position = UDim2.new(0, 10, 0, 15)
Directions.Size = UDim2.new(0, 115, 0, 90)
Directions.ZIndex = 10
Directions.Font = Enum.Font.SourceSans
Directions.Text = "Click the button below and press a key/mouse button. Then select what you want to bind it to."
Directions.TextColor3 = Color3.fromRGB(255, 255, 255)
Directions.TextSize = 14.000
Directions.TextWrapped = true
Directions.TextYAlignment = Enum.TextYAlignment.Top
table.insert(text1,Directions)

BindTo.Name = "BindTo"
BindTo.Parent = background_2
BindTo.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
BindTo.BorderSizePixel = 0
BindTo.Position = UDim2.new(0, 10, 0, 95)
BindTo.Size = UDim2.new(0, 115, 0, 50)
BindTo.ZIndex = 10
BindTo.Font = Enum.Font.SourceSans
BindTo.Text = "Click to bind"
BindTo.TextColor3 = Color3.fromRGB(255, 255, 255)
BindTo.TextSize = 16.000
table.insert(shade2,BindTo)
table.insert(text1,BindTo)

TriggerLabel.Name = "TriggerLabel"
TriggerLabel.Parent = background_2
TriggerLabel.BackgroundTransparency = 1
TriggerLabel.Position = UDim2.new(0, 10, 0, 155)
TriggerLabel.Size = UDim2.new(0, 45, 0, 20)
TriggerLabel.ZIndex = 10
TriggerLabel.Font = Enum.Font.SourceSans
TriggerLabel.Text = "Trigger:"
TriggerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TriggerLabel.TextSize = 14.000
TriggerLabel.TextXAlignment = Enum.TextXAlignment.Left
table.insert(text1,TriggerLabel)

BindTriggerSelect.Name = "BindTo"
BindTriggerSelect.Parent = background_2
BindTriggerSelect.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
BindTriggerSelect.BorderSizePixel = 0
BindTriggerSelect.Position = UDim2.new(0, 60, 0, 155)
BindTriggerSelect.Size = UDim2.new(0, 65, 0, 20)
BindTriggerSelect.ZIndex = 10
BindTriggerSelect.Font = Enum.Font.SourceSans
BindTriggerSelect.Text = "KeyDown"
BindTriggerSelect.TextColor3 = Color3.fromRGB(255, 255, 255)
BindTriggerSelect.TextSize = 16.000
table.insert(shade2,BindTriggerSelect)
table.insert(text1,BindTriggerSelect)

Add_2.Name = "Add"
Add_2.Parent = background_2
Add_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Add_2.BorderSizePixel = 0
Add_2.Position = UDim2.new(0, 310, 0, 35)
Add_2.Size = UDim2.new(0, 40, 0, 20)
Add_2.ZIndex = 10
Add_2.Font = Enum.Font.SourceSans
Add_2.Text = "Add"
Add_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Add_2.TextSize = 14.000
table.insert(shade2,Add_2)
table.insert(text1,Add_2)

Toggles.Name = "Toggles"
Toggles.Parent = background_2
Toggles.BackgroundTransparency = 1
Toggles.BorderSizePixel = 0
Toggles.Position = UDim2.new(0, 150, 0, 125)
Toggles.Size = UDim2.new(0, 200, 0, 50)
Toggles.ZIndex = 10
Toggles.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Toggles.CanvasSize = UDim2.new(0, 0, 0, 50)
Toggles.ScrollBarThickness = 8
Toggles.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Toggles.VerticalScrollBarInset = Enum.ScrollBarInset.Always
table.insert(scroll,Toggles)

ClickTP.Name = "Click TP (Hold Key & Click)"
ClickTP.Parent = Toggles
ClickTP.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
ClickTP.BorderSizePixel = 0
ClickTP.Size = UDim2.new(0, 200, 0, 20)
ClickTP.ZIndex = 10
ClickTP.Font = Enum.Font.SourceSans
ClickTP.Text = "    Click TP (Hold Key & Click)"
ClickTP.TextColor3 = Color3.fromRGB(255, 255, 255)
ClickTP.TextSize = 14.000
ClickTP.TextXAlignment = Enum.TextXAlignment.Left
table.insert(shade2,ClickTP)
table.insert(text1,ClickTP)

Select.Name = "Select"
Select.Parent = ClickTP
Select.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Select.BorderSizePixel = 0
Select.Position = UDim2.new(0, 160, 0, 0)
Select.Size = UDim2.new(0, 40, 0, 20)
Select.ZIndex = 10
Select.Font = Enum.Font.SourceSans
Select.Text = "Add"
Select.TextColor3 = Color3.fromRGB(0, 0, 0)
Select.TextSize = 14.000
table.insert(shade3,Select)
table.insert(text2,Select)

ClickDelete.Name = "Click Delete (Hold Key & Click)"
ClickDelete.Parent = Toggles
ClickDelete.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
ClickDelete.BorderSizePixel = 0
ClickDelete.Position = UDim2.new(0, 0, 0, 25)
ClickDelete.Size = UDim2.new(0, 200, 0, 20)
ClickDelete.ZIndex = 10
ClickDelete.Font = Enum.Font.SourceSans
ClickDelete.Text = "    Click Delete (Hold Key & Click)"
ClickDelete.TextColor3 = Color3.fromRGB(255, 255, 255)
ClickDelete.TextSize = 14.000
ClickDelete.TextXAlignment = Enum.TextXAlignment.Left
table.insert(shade2,ClickDelete)
table.insert(text1,ClickDelete)

Select_2.Name = "Select"
Select_2.Parent = ClickDelete
Select_2.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Select_2.BorderSizePixel = 0
Select_2.Position = UDim2.new(0, 160, 0, 0)
Select_2.Size = UDim2.new(0, 40, 0, 20)
Select_2.ZIndex = 10
Select_2.Font = Enum.Font.SourceSans
Select_2.Text = "Add"
Select_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Select_2.TextSize = 14.000
table.insert(shade3,Select_2)
table.insert(text2,Select_2)

Cmdbar_2.Name = "Cmdbar_2"
Cmdbar_2.Parent = background_2
Cmdbar_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Cmdbar_2.BorderSizePixel = 0
Cmdbar_2.Position = UDim2.new(0, 150, 0, 35)
Cmdbar_2.Size = UDim2.new(0, 150, 0, 20)
Cmdbar_2.ZIndex = 10
Cmdbar_2.Font = Enum.Font.SourceSans
Cmdbar_2.PlaceholderText = "Command"
Cmdbar_2.Text = ""
Cmdbar_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Cmdbar_2.TextSize = 14.000
Cmdbar_2.TextXAlignment = Enum.TextXAlignment.Left

Cmdbar_3.Name = "Cmdbar_3"
Cmdbar_3.Parent = background_2
Cmdbar_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Cmdbar_3.BorderSizePixel = 0
Cmdbar_3.Position = UDim2.new(0, 150, 0, 60)
Cmdbar_3.Size = UDim2.new(0, 150, 0, 20)
Cmdbar_3.ZIndex = 10
Cmdbar_3.Font = Enum.Font.SourceSans
Cmdbar_3.PlaceholderText = "Command 2"
Cmdbar_3.Text = ""
Cmdbar_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Cmdbar_3.TextSize = 14.000
Cmdbar_3.TextXAlignment = Enum.TextXAlignment.Left

CreateToggle.Name = "CreateToggle"
CreateToggle.Parent = background_2
CreateToggle.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
CreateToggle.BackgroundTransparency = 1
CreateToggle.BorderSizePixel = 0
CreateToggle.Position = UDim2.new(0, 152, 0, 10)
CreateToggle.Size = UDim2.new(0, 198, 0, 20)
CreateToggle.ZIndex = 10
CreateToggle.Font = Enum.Font.SourceSans
CreateToggle.Text = "Create Toggle"
CreateToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
CreateToggle.TextSize = 14.000
CreateToggle.TextXAlignment = Enum.TextXAlignment.Left
table.insert(text1,CreateToggle)

Button_2.Name = "Button"
Button_2.Parent = CreateToggle
Button_2.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Button_2.BorderSizePixel = 0
Button_2.Position = UDim2.new(1, -20, 0, 0)
Button_2.Size = UDim2.new(0, 20, 0, 20)
Button_2.ZIndex = 10
table.insert(shade3,Button_2)

On_2.Name = "On"
On_2.Parent = Button_2
On_2.BackgroundColor3 = Color3.fromRGB(150, 150, 151)
On_2.BackgroundTransparency = 1
On_2.BorderSizePixel = 0
On_2.Position = UDim2.new(0, 2, 0, 2)
On_2.Size = UDim2.new(0, 16, 0, 16)
On_2.ZIndex = 10
On_2.Font = Enum.Font.SourceSans
On_2.Text = ""
On_2.TextColor3 = Color3.fromRGB(0, 0, 0)
On_2.TextSize = 14.000

shadow_2.Name = "shadow"
shadow_2.Parent = KeybindEditor
shadow_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
shadow_2.BorderSizePixel = 0
shadow_2.Size = UDim2.new(0, 360, 0, 20)
shadow_2.ZIndex = 10
table.insert(shade2,shadow_2)

PopupText_2.Name = "PopupText_2"
PopupText_2.Parent = shadow_2
PopupText_2.BackgroundTransparency = 1
PopupText_2.Size = UDim2.new(1, 0, 0.949999988, 0)
PopupText_2.ZIndex = 10
PopupText_2.Font = Enum.Font.SourceSans
PopupText_2.Text = "Set Keybinds"
PopupText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
PopupText_2.TextSize = 14.000
PopupText_2.TextWrapped = true
table.insert(text1,PopupText_2)

Exit_2.Name = "Exit_2"
Exit_2.Parent = shadow_2
Exit_2.BackgroundTransparency = 1
Exit_2.Position = UDim2.new(1, -20, 0, 0)
Exit_2.Size = UDim2.new(0, 20, 0, 20)
Exit_2.ZIndex = 10
Exit_2.Text = ""

ExitImage_2.Parent = Exit_2
ExitImage_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExitImage_2.BackgroundTransparency = 1
ExitImage_2.Position = UDim2.new(0, 5, 0, 5)
ExitImage_2.Size = UDim2.new(0, 10, 0, 10)
ExitImage_2.ZIndex = 10
ExitImage_2.Image = "rbxassetid://5054663650"

PositionsFrame.Name = "PositionsFrame"
PositionsFrame.Parent = Settings
PositionsFrame.Active = true
PositionsFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
PositionsFrame.BorderSizePixel = 0
PositionsFrame.Size = UDim2.new(0, 250, 0, 175)
PositionsFrame.Position = UDim2.new(0, 0, 0, 175)
PositionsFrame.ZIndex = 10
table.insert(shade1,PositionsFrame)

Close_3.Name = "Close"
Close_3.Parent = PositionsFrame
Close_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Close_3.BorderSizePixel = 0
Close_3.Position = UDim2.new(0, 205, 0, 150)
Close_3.Size = UDim2.new(0, 40, 0, 20)
Close_3.Font = Enum.Font.SourceSans
Close_3.TextSize = 14
Close_3.Text = "Close"
Close_3.TextColor3 = Color3.new(1, 1, 1)
Close_3.ZIndex = 10
table.insert(shade2,Close_3)
table.insert(text1,Close_3)

Delete_5.Name = "Delete"
Delete_5.Parent = PositionsFrame
Delete_5.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Delete_5.BorderSizePixel = 0
Delete_5.Position = UDim2.new(0, 50, 0, 150)
Delete_5.Size = UDim2.new(0, 40, 0, 20)
Delete_5.Font = Enum.Font.SourceSans
Delete_5.TextSize = 14
Delete_5.Text = "Clear"
Delete_5.TextColor3 = Color3.new(1, 1, 1)
Delete_5.ZIndex = 10
table.insert(shade2,Delete_5)
table.insert(text1,Delete_5)

Part.Name = "PartGoto"
Part.Parent = PositionsFrame
Part.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Part.BorderSizePixel = 0
Part.Position = UDim2.new(0, 5, 0, 150)
Part.Size = UDim2.new(0, 40, 0, 20)
Part.Font = Enum.Font.SourceSans
Part.TextSize = 14
Part.Text = "Part"
Part.TextColor3 = Color3.new(1, 1, 1)
Part.ZIndex = 10
table.insert(shade2,Part)
table.insert(text1,Part)

Holder_4.Name = "Holder"
Holder_4.Parent = PositionsFrame
Holder_4.BackgroundTransparency = 1
Holder_4.BorderSizePixel = 0
Holder_4.Position = UDim2.new(0, 0, 0, 0)
Holder_4.Selectable = false
Holder_4.Size = UDim2.new(0, 250, 0, 145)
Holder_4.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
Holder_4.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_4.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_4.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_4.ScrollBarThickness = 0
Holder_4.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_4.VerticalScrollBarInset = 'Always'
Holder_4.ZIndex = 10

Example_4.Name = "Example"
Example_4.Parent = PositionsFrame
Example_4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Example_4.BorderSizePixel = 0
Example_4.Size = UDim2.new(0, 10, 0, 20)
Example_4.Visible = false
Example_4.Position = UDim2.new(0, 0, 0, -5)
Example_4.ZIndex = 10
table.insert(shade2,Example_4)

Text_5.Name = "Text"
Text_5.Parent = Example_4
Text_5.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Text_5.BorderSizePixel = 0
Text_5.Position = UDim2.new(0, 10, 0, 0)
Text_5.Size = UDim2.new(0, 240, 0, 20)
Text_5.Font = Enum.Font.SourceSans
Text_5.TextSize = 14
Text_5.Text = "Position"
Text_5.TextColor3 = Color3.new(1, 1, 1)
Text_5.TextXAlignment = Enum.TextXAlignment.Left
Text_5.ZIndex = 10
table.insert(shade2,Text_5)
table.insert(text1,Text_5)

Delete_6.Name = "Delete"
Delete_6.Parent = Text_5
Delete_6.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Delete_6.BorderSizePixel = 0
Delete_6.Position = UDim2.new(0, 200, 0, 0)
Delete_6.Size = UDim2.new(0, 40, 0, 20)
Delete_6.Font = Enum.Font.SourceSans
Delete_6.TextSize = 14
Delete_6.Text = "Delete"
Delete_6.TextColor3 = Color3.new(0, 0, 0)
Delete_6.ZIndex = 10
table.insert(shade3,Delete_6)
table.insert(text2,Delete_6)

TP.Name = "TP"
TP.Parent = Text_5
TP.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
TP.BorderSizePixel = 0
TP.Position = UDim2.new(0, 155, 0, 0)
TP.Size = UDim2.new(0, 40, 0, 20)
TP.Font = Enum.Font.SourceSans
TP.TextSize = 14
TP.Text = "Goto"
TP.TextColor3 = Color3.new(0, 0, 0)
TP.ZIndex = 10
table.insert(shade3,TP)
table.insert(text2,TP)

AliasesFrame.Name = "AliasesFrame"
AliasesFrame.Parent = Settings
AliasesFrame.Active = true
AliasesFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
AliasesFrame.BorderSizePixel = 0
AliasesFrame.Position = UDim2.new(0, 0, 0, 175)
AliasesFrame.Size = UDim2.new(0, 250, 0, 175)
AliasesFrame.ZIndex = 10
table.insert(shade1,AliasesFrame)

Close_2.Name = "Close"
Close_2.Parent = AliasesFrame
Close_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Close_2.BorderSizePixel = 0
Close_2.Position = UDim2.new(0, 205, 0, 150)
Close_2.Size = UDim2.new(0, 40, 0, 20)
Close_2.Font = Enum.Font.SourceSans
Close_2.TextSize = 14
Close_2.Text = "Close"
Close_2.TextColor3 = Color3.new(1, 1, 1)
Close_2.ZIndex = 10
table.insert(shade2,Close_2)
table.insert(text1,Close_2)

Delete_3.Name = "Delete"
Delete_3.Parent = AliasesFrame
Delete_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Delete_3.BorderSizePixel = 0
Delete_3.Position = UDim2.new(0, 5, 0, 150)
Delete_3.Size = UDim2.new(0, 40, 0, 20)
Delete_3.Font = Enum.Font.SourceSans
Delete_3.TextSize = 14
Delete_3.Text = "Clear"
Delete_3.TextColor3 = Color3.new(1, 1, 1)
Delete_3.ZIndex = 10
table.insert(shade2,Delete_3)
table.insert(text1,Delete_3)

Holder_3.Name = "Holder"
Holder_3.Parent = AliasesFrame
Holder_3.BackgroundTransparency = 1
Holder_3.BorderSizePixel = 0
Holder_3.Position = UDim2.new(0, 0, 0, 0)
Holder_3.Size = UDim2.new(0, 250, 0, 145)
Holder_3.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
Holder_3.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_3.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_3.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_3.ScrollBarThickness = 0
Holder_3.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_3.VerticalScrollBarInset = 'Always'
Holder_3.ZIndex = 10

Example_3.Name = "Example"
Example_3.Parent = AliasesFrame
Example_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Example_3.BorderSizePixel = 0
Example_3.Size = UDim2.new(0, 10, 0, 20)
Example_3.Visible = false
Example_3.ZIndex = 10
table.insert(shade2,Example_3)

Text_4.Name = "Text"
Text_4.Parent = Example_3
Text_4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Text_4.BorderSizePixel = 0
Text_4.Position = UDim2.new(0, 10, 0, 0)
Text_4.Size = UDim2.new(0, 240, 0, 20)
Text_4.Font = Enum.Font.SourceSans
Text_4.TextSize = 14
Text_4.Text = "honk"
Text_4.TextColor3 = Color3.new(1, 1, 1)
Text_4.TextXAlignment = Enum.TextXAlignment.Left
Text_4.ZIndex = 10
table.insert(shade2,Text_4)
table.insert(text1,Text_4)

Delete_4.Name = "Delete"
Delete_4.Parent = Text_4
Delete_4.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Delete_4.BorderSizePixel = 0
Delete_4.Position = UDim2.new(0, 200, 0, 0)
Delete_4.Size = UDim2.new(0, 40, 0, 20)
Delete_4.Font = Enum.Font.SourceSans
Delete_4.TextSize = 14
Delete_4.Text = "Delete"
Delete_4.TextColor3 = Color3.new(0, 0, 0)
Delete_4.ZIndex = 10
table.insert(shade3,Delete_4)
table.insert(text2,Delete_4)

PluginsFrame.Name = "PluginsFrame"
PluginsFrame.Parent = Settings
PluginsFrame.Active = true
PluginsFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
PluginsFrame.BorderSizePixel = 0
PluginsFrame.Position = UDim2.new(0, 0, 0, 175)
PluginsFrame.Size = UDim2.new(0, 250, 0, 175)
PluginsFrame.ZIndex = 10
table.insert(shade1,PluginsFrame)

Close_4.Name = "Close"
Close_4.Parent = PluginsFrame
Close_4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Close_4.BorderSizePixel = 0
Close_4.Position = UDim2.new(0, 205, 0, 150)
Close_4.Size = UDim2.new(0, 40, 0, 20)
Close_4.Font = Enum.Font.SourceSans
Close_4.TextSize = 14
Close_4.Text = "Close"
Close_4.TextColor3 = Color3.new(1, 1, 1)
Close_4.ZIndex = 10
table.insert(shade2,Close_4)
table.insert(text1,Close_4)

Add_3.Name = "Add"
Add_3.Parent = PluginsFrame
Add_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Add_3.BorderSizePixel = 0
Add_3.Position = UDim2.new(0, 5, 0, 150)
Add_3.Size = UDim2.new(0, 40, 0, 20)
Add_3.Font = Enum.Font.SourceSans
Add_3.TextSize = 14
Add_3.Text = "Add"
Add_3.TextColor3 = Color3.new(1, 1, 1)
Add_3.ZIndex = 10
table.insert(shade2,Add_3)
table.insert(text1,Add_3)

Holder_5.Name = "Holder"
Holder_5.Parent = PluginsFrame
Holder_5.BackgroundTransparency = 1
Holder_5.BorderSizePixel = 0
Holder_5.Position = UDim2.new(0, 0, 0, 0)
Holder_5.Selectable = false
Holder_5.Size = UDim2.new(0, 250, 0, 145)
Holder_5.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
Holder_5.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_5.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_5.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_5.ScrollBarThickness = 0
Holder_5.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_5.VerticalScrollBarInset = 'Always'
Holder_5.ZIndex = 10

Example_5.Name = "Example"
Example_5.Parent = PluginsFrame
Example_5.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Example_5.BorderSizePixel = 0
Example_5.Size = UDim2.new(0, 10, 0, 20)
Example_5.Visible = false
Example_5.ZIndex = 10
table.insert(shade2,Example_5)

Text_6.Name = "Text"
Text_6.Parent = Example_5
Text_6.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Text_6.BorderSizePixel = 0
Text_6.Position = UDim2.new(0, 10, 0, 0)
Text_6.Size = UDim2.new(0, 240, 0, 20)
Text_6.Font = Enum.Font.SourceSans
Text_6.TextSize = 14
Text_6.Text = "F4 > Toggle Fly"
Text_6.TextColor3 = Color3.new(1, 1, 1)
Text_6.TextXAlignment = Enum.TextXAlignment.Left
Text_6.ZIndex = 10
table.insert(shade2,Text_6)
table.insert(text1,Text_6)

Delete_7.Name = "Delete"
Delete_7.Parent = Text_6
Delete_7.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Delete_7.BorderSizePixel = 0
Delete_7.Position = UDim2.new(0, 200, 0, 0)
Delete_7.Size = UDim2.new(0, 40, 0, 20)
Delete_7.Font = Enum.Font.SourceSans
Delete_7.TextSize = 14
Delete_7.Text = "Delete"
Delete_7.TextColor3 = Color3.new(0, 0, 0)
Delete_7.ZIndex = 10
table.insert(shade3,Delete_7)
table.insert(text2,Delete_7)

PluginEditor.Name = randomString()
PluginEditor.Parent = PARENT
PluginEditor.BorderSizePixel = 0
PluginEditor.Active = true
PluginEditor.BackgroundTransparency = 1
PluginEditor.Position = UDim2.new(0.5, -180, 0, -500)
PluginEditor.Size = UDim2.new(0, 360, 0, 20)
PluginEditor.ZIndex = 10

background_3.Name = "background"
background_3.Parent = PluginEditor
background_3.Active = true
background_3.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
background_3.BorderSizePixel = 0
background_3.Position = UDim2.new(0, 0, 0, 20)
background_3.Size = UDim2.new(0, 360, 0, 160)
background_3.ZIndex = 10
table.insert(shade1,background_3)

Dark_2.Name = "Dark"
Dark_2.Parent = background_3
Dark_2.Active = true
Dark_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Dark_2.BorderSizePixel = 0
Dark_2.Position = UDim2.new(0, 222, 0, 0)
Dark_2.Size = UDim2.new(0, 2, 0, 160)
Dark_2.ZIndex = 10
table.insert(shade2,Dark_2)

Img.Name = "Img"
Img.Parent = background_3
Img.BackgroundTransparency = 1
Img.Position = UDim2.new(0, 242, 0, 3)
Img.Size = UDim2.new(0, 100, 0, 95)
Img.Image = "rbxassetid://4113050383"
Img.ZIndex = 10

AddPlugin.Name = "AddPlugin"
AddPlugin.Parent = background_3
AddPlugin.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
AddPlugin.BorderSizePixel = 0
AddPlugin.Position = UDim2.new(0, 235, 0, 100)
AddPlugin.Size = UDim2.new(0, 115, 0, 50)
AddPlugin.Font = Enum.Font.SourceSans
AddPlugin.TextSize = 14
AddPlugin.Text = "Add Plugin"
AddPlugin.TextColor3 = Color3.new(1, 1, 1)
AddPlugin.ZIndex = 10
table.insert(shade2,AddPlugin)
table.insert(text1,AddPlugin)

FileName.Name = "FileName"
FileName.Parent = background_3
FileName.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
FileName.BorderSizePixel = 0
FileName.Position = UDim2.new(0.028, 0, 0.625, 0)
FileName.Size = UDim2.new(0, 200, 0, 50)
FileName.Font = Enum.Font.SourceSans
FileName.TextSize = 14
FileName.Text = "Plugin File Name"
FileName.TextColor3 = Color3.new(1, 1, 1)
FileName.ZIndex = 10
table.insert(shade2,FileName)
table.insert(text1,FileName)

About.Name = "About"
About.Parent = background_3
About.BackgroundTransparency = 1
About.BorderSizePixel = 0
About.Position = UDim2.new(0, 17, 0, 10)
About.Size = UDim2.new(0, 187, 0, 49)
About.Font = Enum.Font.SourceSans
About.TextSize = 14
About.Text = "Plugins are .iy files and should be located in the 'workspace' folder of your exploit."
About.TextColor3 = Color3.fromRGB(255, 255, 255)
About.TextWrapped = true
About.TextYAlignment = Enum.TextYAlignment.Top
About.ZIndex = 10
table.insert(text1,About)

Directions_2.Name = "Directions"
Directions_2.Parent = background_3
Directions_2.BackgroundTransparency = 1
Directions_2.BorderSizePixel = 0
Directions_2.Position = UDim2.new(0, 17, 0, 60)
Directions_2.Size = UDim2.new(0, 187, 0, 49)
Directions_2.Font = Enum.Font.SourceSans
Directions_2.TextSize = 14
Directions_2.Text = "Type the name of the plugin file you want to add below."
Directions_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Directions_2.TextWrapped = true
Directions_2.TextYAlignment = Enum.TextYAlignment.Top
Directions_2.ZIndex = 10
table.insert(text1,Directions_2)

shadow_3.Name = "shadow"
shadow_3.Parent = PluginEditor
shadow_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
shadow_3.BorderSizePixel = 0
shadow_3.Size = UDim2.new(0, 360, 0, 20)
shadow_3.ZIndex = 10
table.insert(shade2,shadow_3)

PopupText_3.Name = "PopupText"
PopupText_3.Parent = shadow_3
PopupText_3.BackgroundTransparency = 1
PopupText_3.Size = UDim2.new(1, 0, 0.95, 0)
PopupText_3.ZIndex = 10
PopupText_3.Font = Enum.Font.SourceSans
PopupText_3.TextSize = 14
PopupText_3.Text = "Add Plugins"
PopupText_3.TextColor3 = Color3.new(1, 1, 1)
PopupText_3.TextWrapped = true
table.insert(text1,PopupText_3)

Exit_3.Name = "Exit"
Exit_3.Parent = shadow_3
Exit_3.BackgroundTransparency = 1
Exit_3.Position = UDim2.new(1, -20, 0, 0)
Exit_3.Size = UDim2.new(0, 20, 0, 20)
Exit_3.Text = ""
Exit_3.ZIndex = 10

ExitImage_3.Parent = Exit_3
ExitImage_3.BackgroundColor3 = Color3.new(1, 1, 1)
ExitImage_3.BackgroundTransparency = 1
ExitImage_3.Position = UDim2.new(0, 5, 0, 5)
ExitImage_3.Size = UDim2.new(0, 10, 0, 10)
ExitImage_3.Image = "rbxassetid://5054663650"
ExitImage_3.ZIndex = 10

AliasHint.Name = "AliasHint"
AliasHint.Parent = AliasesFrame
AliasHint.BackgroundTransparency = 1
AliasHint.BorderSizePixel = 0
AliasHint.Position = UDim2.new(0, 25, 0, 40)
AliasHint.Size = UDim2.new(0, 200, 0, 50)
AliasHint.Font = Enum.Font.SourceSansItalic
AliasHint.TextSize = 16
AliasHint.Text = "Add aliases by using the 'addalias' command"
AliasHint.TextColor3 = Color3.new(1, 1, 1)
AliasHint.TextStrokeColor3 = Color3.new(1, 1, 1)
AliasHint.TextWrapped = true
AliasHint.ZIndex = 10
table.insert(text1,AliasHint)

PluginsHint.Name = "PluginsHint"
PluginsHint.Parent = PluginsFrame
PluginsHint.BackgroundTransparency = 1
PluginsHint.BorderSizePixel = 0
PluginsHint.Position = UDim2.new(0, 25, 0, 40)
PluginsHint.Size = UDim2.new(0, 200, 0, 50)
PluginsHint.Font = Enum.Font.SourceSansItalic
PluginsHint.TextSize = 16
PluginsHint.Text = "Download plugins, Not from the IY Discord, Moon Is a skid"
PluginsHint.TextColor3 = Color3.new(1, 1, 1)
PluginsHint.TextStrokeColor3 = Color3.new(1, 1, 1)
PluginsHint.TextWrapped = true
PluginsHint.ZIndex = 10
table.insert(text1,PluginsHint)

PositionsHint.Name = "PositionsHint"
PositionsHint.Parent = PositionsFrame
PositionsHint.BackgroundTransparency = 1
PositionsHint.BorderSizePixel = 0
PositionsHint.Position = UDim2.new(0, 25, 0, 40)
PositionsHint.Size = UDim2.new(0, 200, 0, 70)
PositionsHint.Font = Enum.Font.SourceSansItalic
PositionsHint.TextSize = 16
PositionsHint.Text = "Use the 'swp' or 'setwaypoint' command to add a position using your character (NOTE: Part teleports will not save)"
PositionsHint.TextColor3 = Color3.new(1, 1, 1)
PositionsHint.TextStrokeColor3 = Color3.new(1, 1, 1)
PositionsHint.TextWrapped = true
PositionsHint.ZIndex = 10
table.insert(text1,PositionsHint)

ToPartFrame.Name = randomString()
ToPartFrame.Parent = PARENT
ToPartFrame.Active = true
ToPartFrame.BackgroundTransparency = 1
ToPartFrame.Position = UDim2.new(0.5, -180, 0, -500)
ToPartFrame.Size = UDim2.new(0, 360, 0, 20)
ToPartFrame.ZIndex = 10

background_4.Name = "background"
background_4.Parent = ToPartFrame
background_4.Active = true
background_4.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
background_4.BorderSizePixel = 0
background_4.Position = UDim2.new(0, 0, 0, 20)
background_4.Size = UDim2.new(0, 360, 0, 117)
background_4.ZIndex = 10
table.insert(shade1,background_4)

ChoosePart.Name = "ChoosePart"
ChoosePart.Parent = background_4
ChoosePart.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
ChoosePart.BorderSizePixel = 0
ChoosePart.Position = UDim2.new(0, 100, 0, 55)
ChoosePart.Size = UDim2.new(0, 75, 0, 30)
ChoosePart.Font = Enum.Font.SourceSans
ChoosePart.TextSize = 14
ChoosePart.Text = "Select Part"
ChoosePart.TextColor3 = Color3.new(1, 1, 1)
ChoosePart.ZIndex = 10
table.insert(shade2,ChoosePart)
table.insert(text1,ChoosePart)

CopyPath.Name = "CopyPath"
CopyPath.Parent = background_4
CopyPath.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
CopyPath.BorderSizePixel = 0
CopyPath.Position = UDim2.new(0, 185, 0, 55)
CopyPath.Size = UDim2.new(0, 75, 0, 30)
CopyPath.Font = Enum.Font.SourceSans
CopyPath.TextSize = 14
CopyPath.Text = "Copy Path"
CopyPath.TextColor3 = Color3.new(1, 1, 1)
CopyPath.ZIndex = 10
table.insert(shade2,CopyPath)
table.insert(text1,CopyPath)

Directions_3.Name = "Directions"
Directions_3.Parent = background_4
Directions_3.BackgroundTransparency = 1
Directions_3.BorderSizePixel = 0
Directions_3.Position = UDim2.new(0, 51, 0, 17)
Directions_3.Size = UDim2.new(0, 257, 0, 32)
Directions_3.Font = Enum.Font.SourceSans
Directions_3.TextSize = 14
Directions_3.Text = 'Click on a part and then click the "Select Part" button below to set it as a teleport location'
Directions_3.TextColor3 = Color3.new(1, 1, 1)
Directions_3.TextWrapped = true
Directions_3.TextYAlignment = Enum.TextYAlignment.Top
Directions_3.ZIndex = 10
table.insert(text1,Directions_3)

Path.Name = "Path"
Path.Parent = background_4
Path.BackgroundTransparency = 1
Path.BorderSizePixel = 0
Path.Position = UDim2.new(0, 0, 0, 94)
Path.Size = UDim2.new(0, 360, 0, 16)
Path.Font = Enum.Font.SourceSansItalic
Path.TextSize = 14
Path.Text = ""
Path.TextColor3 = Color3.new(1, 1, 1)
Path.TextScaled = true
Path.TextWrapped = true
Path.TextYAlignment = Enum.TextYAlignment.Top
Path.ZIndex = 10
table.insert(text1,Path)

shadow_4.Name = "shadow"
shadow_4.Parent = ToPartFrame
shadow_4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
shadow_4.BorderSizePixel = 0
shadow_4.Size = UDim2.new(0, 360, 0, 20)
shadow_4.ZIndex = 10
table.insert(shade2,shadow_4)

PopupText_5.Name = "PopupText"
PopupText_5.Parent = shadow_4
PopupText_5.BackgroundTransparency = 1
PopupText_5.Size = UDim2.new(1, 0, 0.95, 0)
PopupText_5.ZIndex = 10
PopupText_5.Font = Enum.Font.SourceSans
PopupText_5.TextSize = 14
PopupText_5.Text = "Teleport to Part"
PopupText_5.TextColor3 = Color3.new(1, 1, 1)
PopupText_5.TextWrapped = true
table.insert(text1,PopupText_5)

Exit_4.Name = "Exit"
Exit_4.Parent = shadow_4
Exit_4.BackgroundTransparency = 1
Exit_4.Position = UDim2.new(1, -20, 0, 0)
Exit_4.Size = UDim2.new(0, 20, 0, 20)
Exit_4.Text = ""
Exit_4.ZIndex = 10

ExitImage_5.Parent = Exit_4
ExitImage_5.BackgroundColor3 = Color3.new(1, 1, 1)
ExitImage_5.BackgroundTransparency = 1
ExitImage_5.Position = UDim2.new(0, 5, 0, 5)
ExitImage_5.Size = UDim2.new(0, 10, 0, 10)
ExitImage_5.Image = "rbxassetid://5054663650"
ExitImage_5.ZIndex = 10

logs.Name = randomString()
logs.Parent = PARENT
logs.Active = true
logs.BackgroundTransparency = 1
logs.Position = UDim2.new(0, 0, 1, 10)
logs.Size = UDim2.new(0, 338, 0, 20)
logs.ZIndex = 10

shadow.Name = "shadow"
shadow.Parent = logs
shadow.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
shadow.BorderSizePixel = 0
shadow.Position = UDim2.new(0, 0, 0.00999999978, 0)
shadow.Size = UDim2.new(0, 338, 0, 20)
shadow.ZIndex = 10
table.insert(shade2,shadow)

Hide.Name = "Hide"
Hide.Parent = shadow
Hide.BackgroundTransparency = 1
Hide.Position = UDim2.new(1, -40, 0, 0)
Hide.Size = UDim2.new(0, 20, 0, 20)
Hide.ZIndex = 10
Hide.Text = ""

ImageLabel.Parent = Hide
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0, 3, 0, 3)
ImageLabel.Size = UDim2.new(0, 14, 0, 14)
ImageLabel.Image = "rbxassetid://2406617031"
ImageLabel.ZIndex = 10

PopupText.Name = "PopupText"
PopupText.Parent = shadow
PopupText.BackgroundTransparency = 1
PopupText.Size = UDim2.new(1, 0, 0.949999988, 0)
PopupText.ZIndex = 10
PopupText.Font = Enum.Font.SourceSans
PopupText.FontSize = Enum.FontSize.Size14
PopupText.Text = "Logs"
PopupText.TextColor3 = Color3.new(1, 1, 1)
PopupText.TextWrapped = true
table.insert(text1,PopupText)

Exit.Name = "Exit"
Exit.Parent = shadow
Exit.BackgroundTransparency = 1
Exit.Position = UDim2.new(1, -20, 0, 0)
Exit.Size = UDim2.new(0, 20, 0, 20)
Exit.ZIndex = 10
Exit.Text = ""

ImageLabel_2.Parent = Exit
ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel_2.BackgroundTransparency = 1
ImageLabel_2.Position = UDim2.new(0, 5, 0, 5)
ImageLabel_2.Size = UDim2.new(0, 10, 0, 10)
ImageLabel_2.Image = "rbxassetid://5054663650"
ImageLabel_2.ZIndex = 10

background.Name = "background"
background.Parent = logs
background.Active = true
background.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.145098)
background.BorderSizePixel = 0
background.ClipsDescendants = true
background.Position = UDim2.new(0, 0, 1, 0)
background.Size = UDim2.new(0, 338, 0, 245)
background.ZIndex = 10

chat.Name = "chat"
chat.Parent = background
chat.Active = true
chat.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.145098)
chat.BorderSizePixel = 0
chat.ClipsDescendants = true
chat.Size = UDim2.new(0, 338, 0, 245)
chat.ZIndex = 10
table.insert(shade1,chat)

Clear.Name = "Clear"
Clear.Parent = chat
Clear.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0, 5, 0, 220)
Clear.Size = UDim2.new(0, 50, 0, 20)
Clear.ZIndex = 10
Clear.Font = Enum.Font.SourceSans
Clear.FontSize = Enum.FontSize.Size14
Clear.Text = "Clear"
Clear.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade2,Clear)
table.insert(text1,Clear)

SaveChatlogs.Name = "SaveChatlogs"
SaveChatlogs.Parent = chat
SaveChatlogs.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
SaveChatlogs.BorderSizePixel = 0
SaveChatlogs.Position = UDim2.new(0, 258, 0, 220)
SaveChatlogs.Size = UDim2.new(0, 75, 0, 20)
SaveChatlogs.ZIndex = 10
SaveChatlogs.Font = Enum.Font.SourceSans
SaveChatlogs.FontSize = Enum.FontSize.Size14
SaveChatlogs.Text = "Save To .txt"
SaveChatlogs.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade2,SaveChatlogs)
table.insert(text1,SaveChatlogs)

Toggle.Name = "Toggle"
Toggle.Parent = chat
Toggle.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0, 60, 0, 220)
Toggle.Size = UDim2.new(0, 66, 0, 20)
Toggle.ZIndex = 10
Toggle.Font = Enum.Font.SourceSans
Toggle.FontSize = Enum.FontSize.Size14
Toggle.Text = "Disabled"
Toggle.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade2,Toggle)
table.insert(text1,Toggle)

scroll_2.Name = "scroll"
scroll_2.Parent = chat
scroll_2.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
scroll_2.BorderSizePixel = 0
scroll_2.Position = UDim2.new(0, 5, 0, 25)
scroll_2.Size = UDim2.new(0, 328, 0, 190)
scroll_2.ZIndex = 10
scroll_2.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scroll_2.CanvasSize = UDim2.new(0, 0, 0, 10)
scroll_2.ScrollBarThickness = 8
scroll_2.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
table.insert(scroll,scroll_2)
table.insert(shade2,scroll_2)

join.Name = "join"
join.Parent = background
join.Active = true
join.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.145098)
join.BorderSizePixel = 0
join.ClipsDescendants = true
join.Size = UDim2.new(0, 338, 0, 245)
join.Visible = false
join.ZIndex = 10
table.insert(shade1,join)

Toggle_2.Name = "Toggle"
Toggle_2.Parent = join
Toggle_2.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
Toggle_2.BorderSizePixel = 0
Toggle_2.Position = UDim2.new(0, 60, 0, 220)
Toggle_2.Size = UDim2.new(0, 66, 0, 20)
Toggle_2.ZIndex = 10
Toggle_2.Font = Enum.Font.SourceSans
Toggle_2.FontSize = Enum.FontSize.Size14
Toggle_2.Text = "Disabled"
Toggle_2.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade2,Toggle_2)
table.insert(text1,Toggle_2)

Clear_2.Name = "Clear"
Clear_2.Parent = join
Clear_2.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
Clear_2.BorderSizePixel = 0
Clear_2.Position = UDim2.new(0, 5, 0, 220)
Clear_2.Size = UDim2.new(0, 50, 0, 20)
Clear_2.ZIndex = 10
Clear_2.Font = Enum.Font.SourceSans
Clear_2.FontSize = Enum.FontSize.Size14
Clear_2.Text = "Clear"
Clear_2.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade2,Clear_2)
table.insert(text1,Clear_2)

scroll_3.Name = "scroll"
scroll_3.Parent = join
scroll_3.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
scroll_3.BorderSizePixel = 0
scroll_3.Position = UDim2.new(0, 5, 0, 25)
scroll_3.Size = UDim2.new(0, 328, 0, 190)
scroll_3.ZIndex = 10
scroll_3.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scroll_3.CanvasSize = UDim2.new(0, 0, 0, 10)
scroll_3.ScrollBarThickness = 8
scroll_3.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
table.insert(scroll,scroll_3)
table.insert(shade2,scroll_3)

selectChat.Name = "selectChat"
selectChat.Parent = background
selectChat.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
selectChat.BorderSizePixel = 0
selectChat.Position = UDim2.new(0, 5, 0, 5)
selectChat.Size = UDim2.new(0, 164, 0, 20)
selectChat.ZIndex = 10
selectChat.Font = Enum.Font.SourceSans
selectChat.FontSize = Enum.FontSize.Size14
selectChat.Text = "Chat Logs"
selectChat.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade2,selectChat)
table.insert(text1,selectChat)

selectJoin.Name = "selectJoin"
selectJoin.Parent = background
selectJoin.BackgroundColor3 = Color3.new(0.305882, 0.305882, 0.309804)
selectJoin.BorderSizePixel = 0
selectJoin.Position = UDim2.new(0, 169, 0, 5)
selectJoin.Size = UDim2.new(0, 164, 0, 20)
selectJoin.ZIndex = 10
selectJoin.Font = Enum.Font.SourceSans
selectJoin.FontSize = Enum.FontSize.Size14
selectJoin.Text = "Join Logs"
selectJoin.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade3,selectJoin)
table.insert(text1,selectJoin)

function create(data)
	local insts = {}
	for i,v in pairs(data) do insts[v[1]] = Instance.new(v[2]) end

	for _,v in pairs(data) do
		for prop,val in pairs(v[3]) do
			if type(val) == "table" then
				insts[v[1]][prop] = insts[val[1]]
			else
				insts[v[1]][prop] = val
			end
		end
	end

	return insts[1]
end

local textService = game:GetService("TextService")
ViewportTextBox = (function()

	local funcs = {}
	funcs.Update = function(self)
		local cursorPos = self.TextBox.CursorPosition
		local text = self.TextBox.Text
		if text == "" then self.TextBox.Position = UDim2.new(0,2,0,0) return end
		if cursorPos == -1 then return end

		local cursorText = text:sub(1,cursorPos-1)
		local pos = nil
		local leftEnd = -self.TextBox.Position.X.Offset
		local rightEnd = leftEnd + self.View.AbsoluteSize.X

		local totalTextSize = textService:GetTextSize(text,self.TextBox.TextSize,self.TextBox.Font,Vector2.new(999999999,100)).X
		local cursorTextSize = textService:GetTextSize(cursorText,self.TextBox.TextSize,self.TextBox.Font,Vector2.new(999999999,100)).X

		if cursorTextSize > rightEnd then
			pos = math.max(-2,cursorTextSize - self.View.AbsoluteSize.X + 2)
		elseif cursorTextSize < leftEnd then
			pos = math.max(-2,cursorTextSize-2)
		elseif totalTextSize < rightEnd then
			pos = math.max(-2,totalTextSize - self.View.AbsoluteSize.X + 2)
		end

		if pos then
			self.TextBox.Position = UDim2.new(0,-pos,0,0)
			self.TextBox.Size = UDim2.new(1,pos,1,0)
		end
	end

	local mt = {}
	mt.__index = funcs

	local function convert(textbox)
		local obj = setmetatable({OffsetX = 0, TextBox = textbox},mt)

		local view = Instance.new("Frame")
		view.BackgroundTransparency = textbox.BackgroundTransparency
		view.BackgroundColor3 = textbox.BackgroundColor3
		view.BorderSizePixel = textbox.BorderSizePixel
		view.BorderColor3 = textbox.BorderColor3
		view.Position = textbox.Position
		view.Size = textbox.Size
		view.ClipsDescendants = true
		view.Name = textbox.Name
		view.ZIndex = 10
		textbox.BackgroundTransparency = 1
		textbox.Position = UDim2.new(0,4,0,0)
		textbox.Size = UDim2.new(1,-8,1,0)
		textbox.TextXAlignment = Enum.TextXAlignment.Left
		textbox.Name = "Input"
		table.insert(text1,textbox)
		table.insert(shade2,view)

		obj.View = view

		textbox.Changed:Connect(function(prop)
			if prop == "Text" or prop == "CursorPosition" or prop == "AbsoluteSize" then
				obj:Update()
			end
		end)

		obj:Update()

		view.Parent = textbox.Parent
		textbox.Parent = view

		return obj
	end

	return {convert = convert}
end)()

ViewportTextBox.convert(Cmdbar).View.ZIndex = 10
ViewportTextBox.convert(Cmdbar_2).View.ZIndex = 10
ViewportTextBox.convert(Cmdbar_3).View.ZIndex = 10

IYMouse = Players.LocalPlayer:GetMouse()
UserInputService = game:GetService("UserInputService")
TweenService = game:GetService("TweenService")
HttpService = game:GetService("HttpService")
MarketplaceService = game:GetService("MarketplaceService")
RunService = game:GetService("RunService")
TeleportService = game:GetService("TeleportService")
StarterGui = game:GetService("StarterGui")
GuiService = game:GetService("GuiService")
Lighting = game:GetService("Lighting")
ContextActionService = game:GetService("ContextActionService")
NetworkClient = game:GetService("NetworkClient")
ReplicatedStorage = game:GetService("ReplicatedStorage")
GroupService = game:GetService("GroupService")
PathService = game:GetService("PathfindingService")
SoundService = game:GetService("SoundService")
Teams = game:GetService("Teams")
StarterPlayer = game:GetService("StarterPlayer")
InsertService = game:GetService("InsertService")
ChatService = game:GetService("Chat")
ProximityPromptService = game:GetService("ProximityPromptService")
StatsService = game:GetService("Stats")
MaterialService = game:GetService("MaterialService")

sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
gethidden = gethiddenproperty or get_hidden_property or get_hidden_prop
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
PlaceId, JobId = game.PlaceId, game.JobId

function writefileExploit()
	if writefile then
		return true
	end
end

function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
end

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

function tools(plr)
	if plr:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass('Tool') or plr.Character:FindFirstChildOfClass('Tool') then
		return true
	end
end

function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end

function toClipboard(String)
	local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
	if clipBoard then
		clipBoard(String)
		notify('Clipboard','Copied to clipboard')
	else
		notify('Clipboard',"Your exploit doesn't have the ability to use the clipboard")
	end
end

function getHierarchy(obj)
	local fullname
	local period

	if string.find(obj.Name,' ') then
		fullname = '["'..obj.Name..'"]'
		period = false
	else
		fullname = obj.Name
		period = true
	end

	local getS = obj
	local parent = obj
	local service = ''

	if getS.Parent ~= game then
		repeat
			getS = getS.Parent
			service = getS.ClassName
		until getS.Parent == game
	end

	if parent.Parent ~= getS then
		repeat
			parent = parent.Parent
			if string.find(tostring(parent),' ') then
				if period then
					fullname = '["'..parent.Name..'"].'..fullname
				else
					fullname = '["'..parent.Name..'"]'..fullname
				end
				period = false
			else
				if period then
					fullname = parent.Name..'.'..fullname
				else
					fullname = parent.Name..''..fullname
				end
				period = true
			end
		until parent.Parent == getS
	elseif string.find(tostring(parent),' ') then
		fullname = '["'..parent.Name..'"]'
		period = false
	end

	if period then
		return 'game:GetService("'..service..'").'..fullname
	else
		return 'game:GetService("'..service..'")'..fullname
	end
end

AllWaypoints = {}

local cooldown = false
function writefileCooldown(name,data)
	task.spawn(function()
		if not cooldown then
			cooldown = true
			writefile(name, data)
		else
			repeat wait() until cooldown == false
			writefileCooldown(name,data)
		end
		wait(3)
		cooldown = false
	end)
end

function dragGUI(gui)
	task.spawn(function()
		local dragging
		local dragInput
		local dragStart = Vector3.new(0,0,0)
		local startPos
		local function update(input)
			local delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
		end
		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end)
end

dragGUI(logs)
dragGUI(KeybindEditor)
dragGUI(PluginEditor)
dragGUI(ToPartFrame)

eventEditor = (function()
	local events = {}

	local function registerEvent(name,sets)
		events[name] = {
			commands = {},
			sets = sets or {}
		}
	end

	local onEdited = nil

	local function fireEvent(name,...)
		local args = {...}
		local event = events[name]
		if event then
			for i,cmd in pairs(event.commands) do
				local metCondition = true
				for idx,set in pairs(event.sets) do
					local argVal = args[idx]
					local cmdSet = cmd[2][idx]
					local condType = set.Type
					if condType == "Player" then
						if cmdSet == 0 then
							metCondition = metCondition and (tostring(Players.LocalPlayer) == argVal)
						elseif cmdSet ~= 1 then
							metCondition = metCondition and table.find(getPlayer(cmdSet,Players.LocalPlayer),argVal)
						end
					elseif condType == "String" then
						if cmdSet ~= 0 then
							metCondition = metCondition and string.find(argVal:lower(),cmdSet:lower())
						end
					elseif condType == "Number" then
						if cmdSet ~= 0 then
							metCondition = metCondition and tonumber(argVal)<=tonumber(cmdSet)
						end
					end
					if not metCondition then break end
				end

				if metCondition then
					pcall(task.spawn(function()
						local cmdStr = cmd[1]
						for count,arg in pairs(args) do
							cmdStr = cmdStr:gsub("%$"..count,arg)
						end
						wait(cmd[3] or 0)
						execCmd(cmdStr)
					end))
				end
			end
		end
	end

	local main = create({
		{1,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderSizePixel=0,Name="EventEditor",Position=UDim2.new(0.5,-175,0,-500),Size=UDim2.new(0,350,0,20),ZIndex=10,}},
		{2,"Frame",{BackgroundColor3=currentShade2,BorderSizePixel=0,Name="TopBar",Parent={1},Size=UDim2.new(1,0,0,20),ZIndex=10,}},
		{3,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={2},Position=UDim2.new(0,0,0,0),Size=UDim2.new(1,0,0.95,0),Text="Event Editor",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=Enum.TextXAlignment.Center,ZIndex=10,}},
		{4,"TextButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Close",Parent={2},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{5,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://5054663650",Parent={4},Position=UDim2.new(0,5,0,5),Size=UDim2.new(0,10,0,10),ZIndex=10,}},
		{6,"Frame",{BackgroundColor3=currentShade1,BorderSizePixel=0,Name="Content",Parent={1},Position=UDim2.new(0,0,0,20),Size=UDim2.new(1,0,0,202),ZIndex=10,}},
		{7,"ScrollingFrame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png",CanvasSize=UDim2.new(0,0,0,100),Name="List",Parent={6},Position=UDim2.new(0,5,0,5),ScrollBarImageColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),ScrollBarThickness=8,Size=UDim2.new(1,-10,1,-10),TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png",ZIndex=10,}},
		{8,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Holder",Parent={7},Size=UDim2.new(1,0,1,0),ZIndex=10,}},
		{9,"UIListLayout",{Parent={8},SortOrder=2,}},
		{10,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.3137255012989,0.3137255012989,0.3137255012989),BorderSizePixel=0,ClipsDescendants=true,Name="Settings",Parent={6},Position=UDim2.new(1,0,0,0),Size=UDim2.new(0,150,1,0),ZIndex=10,}},
		{11,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),Name="Slider",Parent={10},Position=UDim2.new(0,-150,0,0),Size=UDim2.new(1,0,1,0),ZIndex=10,}},
		{12,"Frame",{BackgroundColor3=Color3.new(0.23529413342476,0.23529413342476,0.23529413342476),BorderColor3=Color3.new(0.3137255012989,0.3137255012989,0.3137255012989),BorderSizePixel=0,Name="Line",Parent={11},Size=UDim2.new(0,1,1,0),ZIndex=10,}},
		{13,"ScrollingFrame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png",CanvasSize=UDim2.new(0,0,0,100),Name="List",Parent={11},Position=UDim2.new(0,0,0,25),ScrollBarImageColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),ScrollBarThickness=8,Size=UDim2.new(1,0,1,-25),TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png",ZIndex=10,}},
		{14,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Holder",Parent={13},Size=UDim2.new(1,0,1,0),ZIndex=10,}},
		{15,"UIListLayout",{Parent={14},SortOrder=2,}},
		{16,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={11},Size=UDim2.new(1,0,0,20),Text="Event Settings",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{17,"TextButton",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Font=3,Name="Close",BorderSizePixel=0,Parent={11},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="<",TextColor3=Color3.new(1,1,1),TextSize=18,ZIndex=10,}},
		{18,"Folder",{Name="Templates",Parent={10},}},
		{19,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Name="Players",Parent={18},Position=UDim2.new(0,0,0,25),Size=UDim2.new(1,0,0,86),Visible=false,ZIndex=10,}},
		{20,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={19},Size=UDim2.new(1,0,0,20),Text="Choose Players",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{21,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Any",Parent={19},Position=UDim2.new(0,5,0,42),Size=UDim2.new(1,-10,0,20),Text="Any Player",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{22,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="Button",Parent={21},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{23,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={22},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{24,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Me",Parent={19},Position=UDim2.new(0,5,0,20),Size=UDim2.new(1,-10,0,20),Text="Me Only",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{25,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="Button",Parent={24},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{26,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={25},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{27,"TextBox",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,ClearTextOnFocus=false,Font=3,Name="Custom",Parent={19},PlaceholderColor3=Color3.new(0.47058826684952,0.47058826684952,0.47058826684952),PlaceholderText="Custom Player Set",Position=UDim2.new(0,5,0,64),Size=UDim2.new(1,-35,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{28,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="CustomButton",Parent={19},Position=UDim2.new(1,-25,0,64),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{29,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={28},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{30,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Name="Strings",Parent={18},Position=UDim2.new(0,0,0,25),Size=UDim2.new(1,0,0,64),Visible=false,ZIndex=10,}},
		{31,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={30},Size=UDim2.new(1,0,0,20),Text="Choose String",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{32,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Any",Parent={30},Position=UDim2.new(0,5,0,20),Size=UDim2.new(1,-10,0,20),Text="Any String",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{33,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="Button",Parent={32},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{34,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={33},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{54,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Name="Numbers",Parent={18},Position=UDim2.new(0,0,0,25),Size=UDim2.new(1,0,0,64),Visible=false,ZIndex=10,}},
		{55,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={54},Size=UDim2.new(1,0,0,20),Text="Choose String",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{56,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Any",Parent={54},Position=UDim2.new(0,5,0,20),Size=UDim2.new(1,-10,0,20),Text="Any Number",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{57,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="Button",Parent={56},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{58,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={57},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{59,"TextBox",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,ClearTextOnFocus=false,Font=3,Name="Custom",Parent={54},PlaceholderColor3=Color3.new(0.47058826684952,0.47058826684952,0.47058826684952),PlaceholderText="Number",Position=UDim2.new(0,5,0,42),Size=UDim2.new(1,-35,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{60,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="CustomButton",Parent={54},Position=UDim2.new(1,-25,0,42),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{61,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={60},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{35,"TextBox",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,ClearTextOnFocus=false,Font=3,Name="Custom",Parent={30},PlaceholderColor3=Color3.new(0.47058826684952,0.47058826684952,0.47058826684952),PlaceholderText="Match String",Position=UDim2.new(0,5,0,42),Size=UDim2.new(1,-35,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{36,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="CustomButton",Parent={30},Position=UDim2.new(1,-25,0,42),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{37,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={36},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{38,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Name="DelayEditor",Parent={18},Position=UDim2.new(0,0,0,25),Size=UDim2.new(1,0,0,24),Visible=false,ZIndex=10,}},
		{39,"TextBox",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,Font=3,Name="Secs",Parent={38},PlaceholderColor3=Color3.new(0.47058826684952,0.47058826684952,0.47058826684952),Position=UDim2.new(0,60,0,2),Size=UDim2.new(1,-65,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{40,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Label",Parent={39},Position=UDim2.new(0,-55,0,0),Size=UDim2.new(1,0,1,0),Text="Delay (s):",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{41,"Frame",{BackgroundColor3=currentShade1,BorderSizePixel=0,ClipsDescendants=true,Name="EventTemplate",Parent={6},Size=UDim2.new(1,0,0,20),Visible=false,ZIndex=10,}},
		{42,"TextButton",{BackgroundColor3=currentText1,BackgroundTransparency=1,Font=3,Name="Expand",Parent={41},Size=UDim2.new(0,20,0,20),Text=">",TextColor3=Color3.new(1,1,1),TextSize=18,ZIndex=10,}},
		{43,"TextLabel",{BackgroundColor3=currentText1,BackgroundTransparency=1,Font=3,Name="EventName",Parent={41},Position=UDim2.new(0,25,0,0),Size=UDim2.new(1,-25,0,20),Text="OnSpawn",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{44,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BorderSizePixel=0,BackgroundTransparency=1,ClipsDescendants=true,Name="Cmds",Parent={41},Position=UDim2.new(0,0,0,20),Size=UDim2.new(1,0,1,-20),ZIndex=10,}},
		{45,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BorderColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),Name="Add",Parent={44},Position=UDim2.new(0,0,1,-20),Size=UDim2.new(1,0,0,20),ZIndex=10,}},
		{46,"TextBox",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,ClearTextOnFocus=false,Font=3,Parent={45},PlaceholderColor3=Color3.new(0.7843137383461,0.7843137383461,0.7843137383461),PlaceholderText="Add new command",Position=UDim2.new(0,5,0,0),Size=UDim2.new(1,-10,1,0),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{47,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Holder",Parent={44},Size=UDim2.new(1,0,1,-20),ZIndex=10,}},
		{48,"UIListLayout",{Parent={47},SortOrder=2,}},
		{49,"Frame",{currentShade1,BorderSizePixel=0,ClipsDescendants=true,Name="CmdTemplate",Parent={6},Size=UDim2.new(1,0,0,20),Visible=false,ZIndex=10,}},
		{50,"TextBox",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,ClearTextOnFocus=false,Font=3,Parent={49},PlaceholderColor3=Color3.new(1,1,1),Position=UDim2.new(0,5,0,0),Size=UDim2.new(1,-45,0,20),Text="a\\b\\c\\d",TextColor3=currentText1,TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{51,"TextButton",{BackgroundColor3=currentShade1,BorderSizePixel=0,Font=3,Name="Delete",Parent={49},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="X",TextColor3=Color3.new(1,1,1),TextSize=18,ZIndex=10,}},
		{52,"TextButton",{BackgroundColor3=currentShade1,BorderSizePixel=0,Font=3,Name="Settings",Parent={49},Position=UDim2.new(1,-40,0,0),Size=UDim2.new(0,20,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=18,ZIndex=10,}},
		{53,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://1204397029",Parent={52},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),ZIndex=10,}},
	})
	main.Name = randomString()
	local mainFrame = main:WaitForChild("Content")
	local eventList = mainFrame:WaitForChild("List")
	local eventListHolder = eventList:WaitForChild("Holder")
	local cmdTemplate = mainFrame:WaitForChild("CmdTemplate")
	local eventTemplate = mainFrame:WaitForChild("EventTemplate")
	local settingsFrame = mainFrame:WaitForChild("Settings"):WaitForChild("Slider")
	local settingsTemplates = mainFrame.Settings:WaitForChild("Templates")
	local settingsList = settingsFrame:WaitForChild("List"):WaitForChild("Holder")
	table.insert(shade2,main.TopBar) table.insert(shade1,mainFrame) table.insert(shade2,eventTemplate)
	table.insert(text1,eventTemplate.EventName) table.insert(shade1,eventTemplate.Cmds.Add) table.insert(shade1,cmdTemplate)
	table.insert(text1,cmdTemplate.TextBox) table.insert(shade2,cmdTemplate.Delete) table.insert(shade2,cmdTemplate.Settings)
	table.insert(scroll,mainFrame.List) table.insert(shade1,settingsFrame) table.insert(shade2,settingsFrame.Line)
	table.insert(shade2,settingsFrame.Close) table.insert(scroll,settingsFrame.List) table.insert(shade2,settingsTemplates.DelayEditor.Secs)
	table.insert(text1,settingsTemplates.DelayEditor.Secs) table.insert(text1,settingsTemplates.DelayEditor.Secs.Label) table.insert(text1,settingsTemplates.Players.Title)
	table.insert(shade3,settingsTemplates.Players.CustomButton) table.insert(shade2,settingsTemplates.Players.Custom) table.insert(text1,settingsTemplates.Players.Custom)
	table.insert(shade3,settingsTemplates.Players.Any.Button) table.insert(shade3,settingsTemplates.Players.Me.Button) table.insert(text1,settingsTemplates.Players.Any)
	table.insert(text1,settingsTemplates.Players.Me) table.insert(text1,settingsTemplates.Strings.Title) table.insert(text1,settingsTemplates.Strings.Any)
	table.insert(shade3,settingsTemplates.Strings.Any.Button) table.insert(shade3,settingsTemplates.Strings.CustomButton) table.insert(text1,settingsTemplates.Strings.Custom)
	table.insert(shade2,settingsTemplates.Strings.Custom)
	table.insert(text1,settingsTemplates.Players.Me) table.insert(text1,settingsTemplates.Numbers.Title) table.insert(text1,settingsTemplates.Numbers.Any)
	table.insert(shade3,settingsTemplates.Numbers.Any.Button) table.insert(shade3,settingsTemplates.Numbers.CustomButton) table.insert(text1,settingsTemplates.Numbers.Custom)
	table.insert(shade2,settingsTemplates.Numbers.Custom)

	local tweenInf = TweenInfo.new(0.25,Enum.EasingStyle.Quart,Enum.EasingDirection.Out)

	local currentlyEditingCmd = nil

	settingsFrame:WaitForChild("Close").MouseButton1Click:Connect(function()
		settingsFrame:TweenPosition(UDim2.new(0,-150,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
	end)

	local function resizeList()
		local size = 0

		for i,v in pairs(eventListHolder:GetChildren()) do
			if v.Name == "EventTemplate" then
				size = size + 20
				if v.Expand.Rotation == 90 then
					size = size + 20*(1+(#events[v.EventName:GetAttribute("RawName")].commands or 0))
				end
			end
		end

		TweenService:Create(eventList,tweenInf,{CanvasSize = UDim2.new(0,0,0,size)}):Play()

		if size > eventList.AbsoluteSize.Y then
			eventListHolder.Size = UDim2.new(1,-8,1,0)
		else
			eventListHolder.Size = UDim2.new(1,0,1,0)
		end
	end

	local function resizeSettingsList()
		local size = 0

		for i,v in pairs(settingsList:GetChildren()) do
			if v:IsA("Frame") then
				size = size + v.AbsoluteSize.Y
			end
		end

		settingsList.Parent.CanvasSize = UDim2.new(0,0,0,size)

		if size > settingsList.Parent.AbsoluteSize.Y then
			settingsList.Size = UDim2.new(1,-8,1,0)
		else
			settingsList.Size = UDim2.new(1,0,1,0)
		end
	end

	local function setupCheckbox(button,callback)
		local enabled = button.On.BackgroundTransparency == 0

		local function update()
			button.On.BackgroundTransparency = (enabled and 0 or 1)
		end

		button.On.MouseButton1Click:Connect(function()
			enabled = not enabled
			update()
			if callback then callback(enabled) end
		end)

		return {
			Toggle = function(nocall) enabled = not enabled update() if not nocall and callback then callback(enabled) end end,
			Enable = function(nocall) if enabled then return end enabled = true update()if not nocall and callback then callback(enabled) end end,
			Disable = function(nocall) if not enabled then return end enabled = false update()if not nocall and callback then callback(enabled) end end,
			IsEnabled = function() return enabled end
		}
	end

	local function openSettingsEditor(event,cmd)
		currentlyEditingCmd = cmd

		for i,v in pairs(settingsList:GetChildren()) do if v:IsA("Frame") then v:Destroy() end end

		local delayEditor = settingsTemplates.DelayEditor:Clone()
		delayEditor.Secs.FocusLost:Connect(function()
			cmd[3] = tonumber(delayEditor.Secs.Text) or 0
			delayEditor.Secs.Text = cmd[3]
			if onEdited then onEdited() end
		end)
		delayEditor.Secs.Text = cmd[3]
		delayEditor.Visible = true
		table.insert(shade2,delayEditor.Secs)
		table.insert(text1,delayEditor.Secs)
		table.insert(text1,delayEditor.Secs.Label)
		delayEditor.Parent = settingsList

		for i,v in pairs(event.sets) do
			if v.Type == "Player" then
				local template = settingsTemplates.Players:Clone()
				template.Title.Text = v.Name or "Player"

				local me,any,custom

				me = setupCheckbox(template.Me.Button,function(on)
					if not on then return end
					any.Disable()
					custom.Disable()
					cmd[2][i] = 0
					if onEdited then onEdited() end
				end)

				any = setupCheckbox(template.Any.Button,function(on)
					if not on then return end
					me.Disable()
					custom.Disable()
					cmd[2][i] = 1
					if onEdited then onEdited() end
				end)

				local customTextBox = template.Custom
				custom = setupCheckbox(template.CustomButton,function(on)
					if not on then return end
					me.Disable()
					any.Disable()
					cmd[2][i] = customTextBox.Text
					if onEdited then onEdited() end
				end)

				ViewportTextBox.convert(customTextBox)
				customTextBox.FocusLost:Connect(function()
					if custom:IsEnabled() then
						cmd[2][i] = customTextBox.Text
						if onEdited then onEdited() end
					end
				end)

				local cVal = cmd[2][i]
				if cVal == 0 then
					me:Enable()
				elseif cVal == 1 then
					any:Enable()
				else
					custom:Enable()
					customTextBox.Text = cVal
				end

				template.Visible = true
				table.insert(text1,template.Title)
				table.insert(shade3,template.CustomButton)
				table.insert(shade3,template.Any.Button)
				table.insert(shade3,template.Me.Button)
				table.insert(text1,template.Any)
				table.insert(text1,template.Me)
				template.Parent = settingsList
			elseif v.Type == "String" then
				local template = settingsTemplates.Strings:Clone()
				template.Title.Text = v.Name or "String"

				local any,custom

				any = setupCheckbox(template.Any.Button,function(on)
					if not on then return end
					custom.Disable()
					cmd[2][i] = 0
					if onEdited then onEdited() end
				end)

				local customTextBox = template.Custom
				custom = setupCheckbox(template.CustomButton,function(on)
					if not on then return end
					any.Disable()
					cmd[2][i] = customTextBox.Text
					if onEdited then onEdited() end
				end)

				ViewportTextBox.convert(customTextBox)
				customTextBox.FocusLost:Connect(function()
					if custom:IsEnabled() then
						cmd[2][i] = customTextBox.Text
						if onEdited then onEdited() end
					end
				end)

				local cVal = cmd[2][i]
				if cVal == 0 then
					any:Enable()
				else
					custom:Enable()
					customTextBox.Text = cVal
				end

				template.Visible = true
				table.insert(text1,template.Title)
				table.insert(text1,template.Any)
				table.insert(shade3,template.Any.Button)
				table.insert(shade3,template.CustomButton)
				template.Parent = settingsList
			elseif v.Type == "Number" then
				local template = settingsTemplates.Numbers:Clone()
				template.Title.Text = v.Name or "Number"

				local any,custom

				any = setupCheckbox(template.Any.Button,function(on)
					if not on then return end
					custom.Disable()
					cmd[2][i] = 0
					if onEdited then onEdited() end
				end)

				local customTextBox = template.Custom
				custom = setupCheckbox(template.CustomButton,function(on)
					if not on then return end
					any.Disable()
					cmd[2][i] = customTextBox.Text
					if onEdited then onEdited() end
				end)

				ViewportTextBox.convert(customTextBox)
				customTextBox.FocusLost:Connect(function()
					cmd[2][i] = tonumber(customTextBox.Text) or 0
					customTextBox.Text = cmd[2][i]
					if custom:IsEnabled() then
						if onEdited then onEdited() end
					end
				end)

				local cVal = cmd[2][i]
				if cVal == 0 then
					any:Enable()
				else
					custom:Enable()
					customTextBox.Text = cVal
				end

				template.Visible = true
				table.insert(text1,template.Title)
				table.insert(text1,template.Any)
				table.insert(shade3,template.Any.Button)
				table.insert(shade3,template.CustomButton)
				template.Parent = settingsList
			end
		end
		resizeSettingsList()
		settingsFrame:TweenPosition(UDim2.new(0,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
	end

	local function defaultSettings(ev)
		local res = {}

		for i,v in pairs(ev.sets) do
			if v.Type == "Player" then
				res[#res+1] = v.Default or 0
			elseif v.Type == "String" then
				res[#res+1] = v.Default or 0
			elseif v.Type == "Number" then
				res[#res+1] = v.Default or 0
			end
		end

		return res
	end

	local function refreshList()
		for i,v in pairs(eventListHolder:GetChildren()) do if v:IsA("Frame") then v:Destroy() end end

		for name,event in pairs(events) do
			local eventF = eventTemplate:Clone()
			eventF.EventName.Text = name
			eventF.Visible = true
			eventF.EventName:SetAttribute("RawName", name)
			table.insert(shade2,eventF)
			table.insert(text1,eventF.EventName)
			table.insert(shade1,eventF.Cmds.Add)

			local expanded = false
			eventF.Expand.MouseButton1Down:Connect(function()
				expanded = not expanded
				eventF:TweenSize(UDim2.new(1,0,0,20 + (expanded and 20*#eventF.Cmds.Holder:GetChildren() or 0)),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
				eventF.Expand.Rotation = expanded and 90 or 0
				resizeList()
			end)

			local function refreshCommands()
				for i,v in pairs(eventF.Cmds.Holder:GetChildren()) do
					if v.Name == "CmdTemplate" then
						v:Destroy()
					end
				end

				eventF.EventName.Text = name..(#event.commands > 0 and " ("..#event.commands..")" or "")

				for i,cmd in pairs(event.commands) do
					local cmdF = cmdTemplate:Clone()
					local cmdTextBox = cmdF.TextBox
					ViewportTextBox.convert(cmdTextBox)
					cmdTextBox.Text = cmd[1]
					cmdF.Visible = true
					table.insert(shade1,cmdF)
					table.insert(shade2,cmdF.Delete)
					table.insert(shade2,cmdF.Settings)

					cmdTextBox.FocusLost:Connect(function()
						event.commands[i] = {cmdTextBox.Text,cmd[2],cmd[3]}
						if onEdited then onEdited() end
					end)

					cmdF.Settings.MouseButton1Click:Connect(function()
						openSettingsEditor(event,cmd)
					end)

					cmdF.Delete.MouseButton1Click:Connect(function()
						table.remove(event.commands,i)
						refreshCommands()
						resizeList()

						if currentlyEditingCmd == cmd then
							settingsFrame:TweenPosition(UDim2.new(0,-150,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
						end
						if onEdited then onEdited() end
					end)

					cmdF.Parent = eventF.Cmds.Holder
				end

				eventF:TweenSize(UDim2.new(1,0,0,20 + (expanded and 20*#eventF.Cmds.Holder:GetChildren() or 0)),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
			end

			local newBox = eventF.Cmds.Add.TextBox
			ViewportTextBox.convert(newBox)
			newBox.FocusLost:Connect(function(enter)
				if enter then
					event.commands[#event.commands+1] = {newBox.Text,defaultSettings(event),0}
					newBox.Text = ""

					refreshCommands()
					resizeList()
					if onEdited then onEdited() end
				end
			end)

			--eventF:GetPropertyChangedSignal("AbsoluteSize"):Connect(resizeList)

			eventF.Parent = eventListHolder

			refreshCommands()
		end

		resizeList()
	end

	local function saveData()
		local result = {}
		for i,v in pairs(events) do
			result[i] = v.commands
		end
		return HttpService:JSONEncode(result)
	end

	local function loadData(str)
		local data = HttpService:JSONDecode(str)
		for i,v in pairs(data) do
			if events[i] then
				events[i].commands = v
			end
		end
	end

	local function addCmd(event,data)
		table.insert(events[event].commands,data)
	end

	local function setOnEdited(f)
		if type(f) == "function" then
			onEdited = f
		end
	end

	main.TopBar.Close.MouseButton1Click:Connect(function()
		main:TweenPosition(UDim2.new(0.5,-175,0,-500), "InOut", "Quart", 0.5, true, nil)
	end)
	dragGUI(main)
	main.Parent = PARENT

	return {
		RegisterEvent = registerEvent,
		FireEvent = fireEvent,
		Refresh = refreshList,
		SaveData = saveData,
		LoadData = loadData,
		AddCmd = addCmd,
		Frame = main,
		SetOnEdited = setOnEdited
	}
end)()

reference = (function()
	local main = create({
		{1,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,Name="Main",Position=UDim2.new(0.5,-250,0,-500),Size=UDim2.new(0,500,0,20),ZIndex=10,}},
		{2,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="TopBar",Parent={1},Size=UDim2.new(1,0,0,20),ZIndex=10,}},
		{3,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={2},Size=UDim2.new(1,0,0.94999998807907,0),Text="Reference",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{4,"TextButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Close",Parent={2},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{5,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://5054663650",Parent={4},Position=UDim2.new(0,5,0,5),Size=UDim2.new(0,10,0,10),ZIndex=10,}},
		{6,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BorderSizePixel=0,Name="Content",Parent={1},Position=UDim2.new(0,0,0,20),Size=UDim2.new(1,0,0,300),ZIndex=10,}},
		{7,"ScrollingFrame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png",CanvasSize=UDim2.new(0,0,0,1313),Name="List",Parent={6},ScrollBarImageColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),ScrollBarThickness=8,Size=UDim2.new(1,0,1,0),TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png",VerticalScrollBarInset=2,ZIndex=10,}},
		{8,"UIListLayout",{Parent={7},SortOrder=2,}},
		{9,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,429),ZIndex=10,}},
		{10,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={9},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Special Player Cases",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{11,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={9},Position=UDim2.new(0,8,0,25),Size=UDim2.new(1,-8,0,20),Text="These keywords can be used to quickly select groups of players in commands:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{12,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={9},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{13,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Cases",Parent={9},Position=UDim2.new(0,8,0,55),Size=UDim2.new(1,-16,0,342),ZIndex=10,}},
		{14,"UIListLayout",{Parent={13},SortOrder=2,}},
		{15,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-4,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{16,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={15},Size=UDim2.new(1,0,1,0),Text="all",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{17,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={15},Position=UDim2.new(0,15,0,0),Size=UDim2.new(1,0,1,0),Text="- includes everyone",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{18,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-3,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{19,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={18},Size=UDim2.new(1,0,1,0),Text="others",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{20,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={18},Position=UDim2.new(0,37,0,0),Size=UDim2.new(1,0,1,0),Text="- includes everyone except you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{21,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-2,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{22,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={21},Size=UDim2.new(1,0,1,0),Text="me",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{23,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={21},Position=UDim2.new(0,19,0,0),Size=UDim2.new(1,0,1,0),Text="- includes your player only",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{24,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{25,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={24},Size=UDim2.new(1,0,1,0),Text="#[number]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{26,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={24},Position=UDim2.new(0,59,0,0),Size=UDim2.new(1,0,1,0),Text="- gets a specified amount of random players",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{27,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{28,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={27},Size=UDim2.new(1,0,1,0),Text="random",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{29,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={27},Position=UDim2.new(0,44,0,0),Size=UDim2.new(1,0,1,0),Text="- affects a random player",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{30,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{31,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={30},Size=UDim2.new(1,0,1,0),Text="%[team name]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{32,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={30},Position=UDim2.new(0,78,0,0),Size=UDim2.new(1,0,1,0),Text="- includes everyone on a given team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{33,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{34,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={33},Size=UDim2.new(1,0,1,0),Text="allies / team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{35,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={33},Position=UDim2.new(0,63,0,0),Size=UDim2.new(1,0,1,0),Text="- players who are on your team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{36,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{37,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={36},Size=UDim2.new(1,0,1,0),Text="enemies / nonteam",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{38,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={36},Position=UDim2.new(0,101,0,0),Size=UDim2.new(1,0,1,0),Text="- players who are not on your team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{39,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{40,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={39},Size=UDim2.new(1,0,1,0),Text="friends",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{41,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={39},Position=UDim2.new(0,40,0,0),Size=UDim2.new(1,0,1,0),Text="- anyone who is friends with you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{42,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{43,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={42},Size=UDim2.new(1,0,1,0),Text="nonfriends",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{44,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={42},Position=UDim2.new(0,61,0,0),Size=UDim2.new(1,0,1,0),Text="- anyone who is not friends with you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{45,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{46,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={45},Size=UDim2.new(1,0,1,0),Text="guests",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{47,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={45},Position=UDim2.new(0,36,0,0),Size=UDim2.new(1,0,1,0),Text="- guest players (obsolete)",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{48,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{49,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={48},Size=UDim2.new(1,0,1,0),Text="bacons",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{50,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={48},Position=UDim2.new(0,40,0,0),Size=UDim2.new(1,0,1,0),Text="- anyone with the \"bacon\" or pal hair",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{51,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{52,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={51},Size=UDim2.new(1,0,1,0),Text="age[number]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{53,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={51},Position=UDim2.new(0,71,0,0),Size=UDim2.new(1,0,1,0),Text="- includes anyone below or at the given age",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{54,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{55,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={54},Size=UDim2.new(1,0,1,0),Text="rad[number]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{56,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={54},Position=UDim2.new(0,70,0,0),Size=UDim2.new(1,0,1,0),Text="- includes anyone within the given radius",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{57,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{58,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={57},Size=UDim2.new(1,0,1,0),Text="nearest",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{59,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={57},Position=UDim2.new(0,43,0,0),Size=UDim2.new(1,0,1,0),Text="- gets the closest player to you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{60,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{61,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={60},Size=UDim2.new(1,0,1,0),Text="farthest",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{62,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={60},Position=UDim2.new(0,46,0,0),Size=UDim2.new(1,0,1,0),Text="- gets the farthest player from you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{63,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{64,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={63},Size=UDim2.new(1,0,1,0),Text="group[ID]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{65,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={63},Position=UDim2.new(0,55,0,0),Size=UDim2.new(1,0,1,0),Text="- gets players who are in a certain group",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{66,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{67,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={66},Size=UDim2.new(1,0,1,0),Text="alive",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{68,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={66},Position=UDim2.new(0,27,0,0),Size=UDim2.new(1,0,1,0),Text="- gets players who are alive",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{69,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{70,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={69},Size=UDim2.new(1,0,1,0),Text="dead",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{71,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={69},Position=UDim2.new(0,29,0,0),Size=UDim2.new(1,0,1,0),Text="- gets players who are dead",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{72,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-1,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{73,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={72},Size=UDim2.new(1,0,1,0),Text="@username",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{74,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={72},Position=UDim2.new(0,66,0,0),Size=UDim2.new(1,0,1,0),Text="- searches for players by username only (ignores displaynames)",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{75,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,180),ZIndex=10,}},
		{76,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={75},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Various Operators",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{77,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={75},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{78,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={75},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,16),Text="Use commas to separate multiple expressions:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{79,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={75},Position=UDim2.new(0,8,0,75),Size=UDim2.new(1,-8,0,16),Text="Use - to exclude, and + to include players in your expression:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{80,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={75},Position=UDim2.new(0,8,0,91),Size=UDim2.new(1,-8,0,16),Text=";locate %blue-friends (gets players in blue team who aren't your friends)",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{81,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={75},Position=UDim2.new(0,8,0,46),Size=UDim2.new(1,-8,0,16),Text=";locate noob,noob2,bob",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{82,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={75},Position=UDim2.new(0,8,0,120),Size=UDim2.new(1,-8,0,16),Text="Put ! before a command to run it with the last arguments it was ran with:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{83,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={75},Position=UDim2.new(0,8,0,136),Size=UDim2.new(1,-8,0,32),Text="After running ;offset 0 100 0,  you can run !offset anytime to repeat that command with the same arguments that were used to run it last time",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{84,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,154),ZIndex=10,}},
		{85,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={84},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Command Looping",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{86,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={84},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,20),Text="Form: [How many times it loops]^[delay (optional)]^[command]",TextColor3=Color3.new(1,1,1),TextSize=15,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{87,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={84},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{88,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={84},Position=UDim2.new(0,8,0,50),Size=UDim2.new(1,-8,0,20),Text="Use the 'breakloops' command to stop all running loops.",TextColor3=Color3.new(1,1,1),TextSize=15,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{89,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={84},Position=UDim2.new(0,8,0,80),Size=UDim2.new(1,-8,0,16),Text="Examples:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{90,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={84},Position=UDim2.new(0,8,0,98),Size=UDim2.new(1,-8,0,42),Text=";5^btools - gives you 5 sets of btools\n;10^3^drophats - drops your hats every 3 seconds 10 times\n;inf^0.1^animspeed 100 - infinitely loops your animation speed to 100",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{91,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,120),ZIndex=10,}},
		{92,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={91},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Execute Multiple Commands at Once",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{93,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={91},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,20),Text="You can execute multiple commands at once using \"\\\"",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{94,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={91},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{95,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={91},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,-8,0,16),Text="Examples:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{96,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={91},Position=UDim2.new(0,8,0,78),Size=UDim2.new(1,-8,0,32),Text=";drophats\\respawn - drops your hats and respawns you\n;enable inventory\\enable playerlist\\refresh - enables those coregui items and refreshes you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{97,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,75),ZIndex=10,}},
		{98,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={97},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Browse Command History",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{99,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={97},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="While focused on the command bar, you can use the up and down arrow keys to browse recently used commands",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{100,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={97},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{101,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,75),ZIndex=10,}},
		{102,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={101},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Autocomplete in the Command Bar",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{103,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={101},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="While focused on the command bar, you can use the tab key to insert the top suggested command into the command bar.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{104,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={101},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{105,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,175),ZIndex=10,}},
		{106,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={105},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Using Event Binds",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{107,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={105},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="Use event binds to set up commands that get executed when certain events happen. You can edit the conditions for an event command to run (such as which player triggers it).",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{108,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={105},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{109,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={105},Position=UDim2.new(0,8,0,70),Size=UDim2.new(1,-8,0,48),Text="Some events may send arguments; you can use them in your event command by using $ followed by the argument number ($1, $2, etc). You can find out the order and types of these arguments by looking at the settings of the event command.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{110,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={105},Position=UDim2.new(0,8,0,130),Size=UDim2.new(1,-8,0,16),Text="Example:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{111,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={105},Position=UDim2.new(0,8,0,148),Size=UDim2.new(1,-8,0,16),Text="Setting up 'goto $1' on the OnChatted event will teleport you to any player that chats.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{112,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,105),ZIndex=10,}},
		{113,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={112},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Get Further Help",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{114,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={112},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="You can join the Discord server to get support with IY,  and read up on more documentation such as the Plugin API.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{115,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={112},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),Visible=false,ZIndex=10,}},
		{116,"TextButton",{BackgroundColor3=Color3.new(0.48627451062202,0.61960786581039,0.85098040103912),BorderColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),Font=4,Name="InviteButton",Parent={112},Position=UDim2.new(0,5,0,75),Size=UDim2.new(1,-10,0,25),Text="Copy Discord Invite Link (https://discord.io/infiniteyield)",TextColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),TextSize=16,ZIndex=10,}},
	})
	for i,v in pairs(main.Content.List:GetDescendants()) do
		if v:IsA("TextLabel") then
			table.insert(text1,v)
		end
	end
	table.insert(scroll,main.Content.List)
	table.insert(shade1,main.Content)
	table.insert(shade2,main.TopBar)
	main.Name = randomString()
	main.TopBar.Close.MouseButton1Click:Connect(function()
		main:TweenPosition(UDim2.new(0.5,-250,0,-500), "InOut", "Quart", 0.5, true, nil)
	end)
	local inviteButton = main:FindFirstChild("InviteButton",true)
	local lastPress = nil
	inviteButton.MouseButton1Click:Connect(function()
		local func = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
		if func then
			inviteButton.Text = "Disabled"
		else
			inviteButton.Text = "Disabled"
		end
		local pressTime = tick()
		lastPress = pressTime
		wait(2)
		if lastPress ~= pressTime then return end
		inviteButton.Text = "Disabled"
	end)
	dragGUI(main)
	main.Parent = PARENT

	ReferenceButton.MouseButton1Click:Connect(function()
		main:TweenPosition(UDim2.new(0.5,-250,0.5,-150), "InOut", "Quart", 0.5, true, nil)
	end)
end)()

currentShade1 = Color3.fromRGB(36, 36, 37)
currentShade2 = Color3.fromRGB(46, 46, 47)
currentShade3 = Color3.fromRGB(78, 78, 79)
currentText1 = Color3.new(1, 1, 1)
currentText2 = Color3.new(0, 0, 0)
currentScroll = Color3.fromRGB(78,78,79)

defaultsettings = {
	prefix = ';';
	StayOpen = false;
	espTransparency = 0.3;
	keepIY = true;
	logsEnabled = false;
	jLogsEnabled = false;
	aliases = {};
	binds = {};
	WayPoints = {};
	PluginsTable = {};
	currentShade1 = {currentShade1.R,currentShade1.G,currentShade1.B};
	currentShade2 = {currentShade2.R,currentShade2.G,currentShade2.B};
	currentShade3 = {currentShade3.R,currentShade3.G,currentShade3.B};
	currentText1 = {currentText1.R,currentText1.G,currentText1.B};
	currentText2 = {currentText2.R,currentText2.G,currentText2.B};
	currentScroll = {currentScroll.R,currentScroll.G,currentScroll.B};
	eventBinds = eventEditor.SaveData()
}

defaults = HttpService:JSONEncode(defaultsettings)
nosaves = false

local loadedEventData = nil
function saves()
	if writefileExploit() then
		if pcall(function() readfile("IY_FE.iy") end) then
			if readfile("IY_FE.iy") ~= nil then
				local success, response = pcall(function()
					local json = HttpService:JSONDecode(readfile("IY_FE.iy"))
					if json.prefix ~= nil then prefix = json.prefix else prefix = ';' end
					if json.StayOpen ~= nil then StayOpen = json.StayOpen else StayOpen = false end
					if json.keepIY ~= nil then KeepInfYield = json.keepIY else KeepInfYield = true end
					if json.espTransparency ~= nil then espTransparency = json.espTransparency else espTransparency = 0.3 end
					if json.logsEnabled ~= nil then logsEnabled = json.logsEnabled else logsEnabled = false end
					if json.jLogsEnabled ~= nil then jLogsEnabled = json.jLogsEnabled else jLogsEnabled = false end
					if json.aliases ~= nil then aliases = json.aliases else aliases = {} end
					if json.binds ~= nil then binds = (json.binds or {}) else binds = {} end
					if json.spawnCmds ~= nil then spawnCmds = json.spawnCmds end
					if json.WayPoints ~= nil then AllWaypoints = json.WayPoints else WayPoints = {} AllWaypoints = {} end
					if json.PluginsTable ~= nil then PluginsTable = json.PluginsTable else PluginsTable = {} end
					if json.currentShade1 ~= nil then currentShade1 = Color3.new(json.currentShade1[1],json.currentShade1[2],json.currentShade1[3]) end
					if json.currentShade2 ~= nil then currentShade2 = Color3.new(json.currentShade2[1],json.currentShade2[2],json.currentShade2[3]) end
					if json.currentShade3 ~= nil then currentShade3 = Color3.new(json.currentShade3[1],json.currentShade3[2],json.currentShade3[3]) end
					if json.currentText1 ~= nil then currentText1 = Color3.new(json.currentText1[1],json.currentText1[2],json.currentText1[3]) end
					if json.currentText2 ~= nil then currentText2 = Color3.new(json.currentText2[1],json.currentText2[2],json.currentText2[3]) end
					if json.currentScroll ~= nil then currentScroll = Color3.new(json.currentScroll[1],json.currentScroll[2],json.currentScroll[3]) end
					if json.eventBinds ~= nil then loadedEventData = json.eventBinds end
				end)
				if not success then
					warn("Save Json Error:", response)
					warn("Overwriting Save File")
					writefileCooldown("IY_FE.iy", defaults)
					wait()
					saves()
				end
			else
				writefileCooldown("IY_FE.iy", defaults)
				wait()
				saves()
			end
		else
			writefileCooldown("IY_FE.iy", defaults)
			wait()
			if pcall(function() readfile("IY_FE.iy") end) then
				saves()
			else
				nosaves = true
				prefix = ';'
				StayOpen = false
				KeepInfYield = true
				espTransparency = 0.3
				logsEnabled = false
				jLogsEnabled = false
				aliases = {}
				binds = {}
				WayPoints = {}
				PluginsTable = {}

				local FileError = Instance.new("Frame")
				local background = Instance.new("Frame")
				local Directions = Instance.new("TextLabel")
				local shadow = Instance.new("Frame")
				local PopupText = Instance.new("TextLabel")
				local Exit = Instance.new("TextButton")
				local ExitImage = Instance.new("ImageLabel")

				FileError.Name = randomString()
				FileError.Parent = PARENT
				FileError.Active = true
				FileError.BackgroundTransparency = 1
				FileError.Position = UDim2.new(0.5, -180, 0, 290)
				FileError.Size = UDim2.new(0, 360, 0, 20)
				FileError.ZIndex = 10

				background.Name = "background"
				background.Parent = FileError
				background.Active = true
				background.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
				background.BorderSizePixel = 0
				background.Position = UDim2.new(0, 0, 0, 20)
				background.Size = UDim2.new(0, 360, 0, 205)
				background.ZIndex = 10

				Directions.Name = "Directions"
				Directions.Parent = background
				Directions.BackgroundTransparency = 1
				Directions.BorderSizePixel = 0
				Directions.Position = UDim2.new(0, 10, 0, 10)
				Directions.Size = UDim2.new(0, 340, 0, 185)
				Directions.Font = Enum.Font.SourceSans
				Directions.TextSize = 14
				Directions.Text = "There was a problem writing a save file to your PC.\n\nPlease contact the developer/support team for your exploit and tell them writefile is not working.\n\nYour settings, keybinds, waypoints, and aliases will not save if you continue.\n\nThings to try:\n> Make sure a 'workspace' folder is located in the same folder as your exploit\n> If your exploit is inside of a zip/rar file, extract it.\n> Rejoin the game and try again or restart your PC and try again."
				Directions.TextColor3 = Color3.new(1, 1, 1)
				Directions.TextWrapped = true
				Directions.TextXAlignment = Enum.TextXAlignment.Left
				Directions.TextYAlignment = Enum.TextYAlignment.Top
				Directions.ZIndex = 10

				shadow.Name = "shadow"
				shadow.Parent = FileError
				shadow.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
				shadow.BorderSizePixel = 0
				shadow.Size = UDim2.new(0, 360, 0, 20)
				shadow.ZIndex = 10

				PopupText.Name = "PopupText"
				PopupText.Parent = shadow
				PopupText.BackgroundTransparency = 1
				PopupText.Size = UDim2.new(1, 0, 0.95, 0)
				PopupText.ZIndex = 10
				PopupText.Font = Enum.Font.SourceSans
				PopupText.TextSize = 14
				PopupText.Text = "File Error"
				PopupText.TextColor3 = Color3.new(1, 1, 1)
				PopupText.TextWrapped = true

				Exit.Name = "Exit"
				Exit.Parent = shadow
				Exit.BackgroundTransparency = 1
				Exit.Position = UDim2.new(1, -20, 0, 0)
				Exit.Size = UDim2.new(0, 20, 0, 20)
				Exit.Text = ""
				Exit.ZIndex = 10

				ExitImage.Parent = Exit
				ExitImage.BackgroundColor3 = Color3.new(1, 1, 1)
				ExitImage.BackgroundTransparency = 1
				ExitImage.Position = UDim2.new(0, 5, 0, 5)
				ExitImage.Size = UDim2.new(0, 10, 0, 10)
				ExitImage.Image = "rbxassetid://5054663650"
				ExitImage.ZIndex = 10

				Exit.MouseButton1Click:Connect(function()
					FileError:Destroy()
				end)
			end
		end
	else
		prefix = ';'
		StayOpen = false
		KeepInfYield = true
		espTransparency = 0.3
		logsEnabled = false
		jLogsEnabled = false
		aliases = {}
		binds = {}
		WayPoints = {}
		PluginsTable = {}
	end
end

saves()

function updatesaves()
	if nosaves == false and writefileExploit() then
		local update = {
			prefix = prefix;
			StayOpen = StayOpen;
			keepIY = KeepInfYield;
			espTransparency = espTransparency;
			logsEnabled = logsEnabled;
			jLogsEnabled = jLogsEnabled;
			aliases = aliases;
			binds = binds or {};
			WayPoints = AllWaypoints;
			PluginsTable = PluginsTable;
			currentShade1 = {currentShade1.R,currentShade1.G,currentShade1.B};
			currentShade2 = {currentShade2.R,currentShade2.G,currentShade2.B};
			currentShade3 = {currentShade3.R,currentShade3.G,currentShade3.B};
			currentText1 = {currentText1.R,currentText1.G,currentText1.B};
			currentText2 = {currentText2.R,currentText2.G,currentText2.B};
			currentScroll = {currentScroll.R,currentScroll.G,currentScroll.B};
			eventBinds = eventEditor.SaveData()
		}
		writefileCooldown("IY_FE.iy", HttpService:JSONEncode(update))
	end
end

eventEditor.SetOnEdited(updatesaves)

pWayPoints = {}
WayPoints = {}

if #AllWaypoints > 0 then
	for i = 1, #AllWaypoints do
		if not AllWaypoints[i].GAME or AllWaypoints[i].GAME == PlaceId then
			WayPoints[#WayPoints + 1] = {NAME = AllWaypoints[i].NAME, COORD = {AllWaypoints[i].COORD[1], AllWaypoints[i].COORD[2], AllWaypoints[i].COORD[3]}, GAME = AllWaypoints[i].GAME}
		end
	end
end

if type(binds) ~= "table" then binds = {} end

function Time()
	local HOUR = math.floor((tick() % 86400) / 3600)
	local MINUTE = math.floor((tick() % 3600) / 60)
	local SECOND = math.floor(tick() % 60)
	local AP = HOUR > 11 and 'PM' or 'AM'
	HOUR = (HOUR % 12 == 0 and 12 or HOUR % 12)
	HOUR = HOUR < 10 and '0' .. HOUR or HOUR
	MINUTE = MINUTE < 10 and '0' .. MINUTE or MINUTE
	SECOND = SECOND < 10 and '0' .. SECOND or SECOND
	return HOUR .. ':' .. MINUTE .. ':' .. SECOND .. ' ' .. AP
end

PrefixBox.Text = prefix
local SettingsOpen = false
local isHidden = false

if StayOpen == false then
	On.BackgroundTransparency = 1
else
	On.BackgroundTransparency = 0
end

if logsEnabled then
	Toggle.Text = 'Enabled'
else
	Toggle.Text = 'Disabled'
end

if jLogsEnabled then
	Toggle_2.Text = 'Enabled'
else
	Toggle_2.Text = 'Disabled'
end

function maximizeHolder()
	if StayOpen == false then
		Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, -220), "InOut", "Quart", 0.2, true, nil)
	end
end

local minimizeNum = -20
function minimizeHolder()
	if StayOpen == false then
		Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, minimizeNum), "InOut", "Quart", 0.5, true, nil)
	end
end

function cmdbarHolder()
	if StayOpen == false then
		Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, -45), "InOut", "Quart", 0.5, true, nil)
	end
end

pinNotification = nil
local notifyCount = 0
function notify(text,text2,length)
	task.spawn(function()
		local LnotifyCount = notifyCount+1
		local notificationPinned = false
		notifyCount = notifyCount+1
		if pinNotification then pinNotification:Disconnect() end
		pinNotification = PinButton.MouseButton1Click:Connect(function()
			task.spawn(function()
				pinNotification:Disconnect()
				notificationPinned = true
				Title_2.BackgroundTransparency = 1
				wait(0.5)
				Title_2.BackgroundTransparency = 0
			end)
		end)
		Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), "InOut", "Quart", 0.5, true, nil)
		wait(0.6)
		local closepressed = false
		if text2 then
			Title_2.Text = text
			Text_2.Text = text2
		else
			Title_2.Text = 'Notification'
			Text_2.Text = text
		end
		Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, -100), "InOut", "Quart", 0.5, true, nil)
		CloseButton.MouseButton1Click:Connect(function()
			Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), "InOut", "Quart", 0.5, true, nil)
			closepressed = true
			pinNotification:Disconnect()
		end)
		if length and isNumber(length) then
			wait(length)
		else
			wait(10)
		end
		if LnotifyCount == notifyCount then
			if closepressed == false and notificationPinned == false then
				pinNotification:Disconnect()
				Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), "InOut", "Quart", 0.5, true, nil)
			end
			notifyCount = 0
		end
	end)
end

local lastMessage = nil
local lastLabel = nil
local dupeCount = 1
function CreateLabel(Name, Text)
	if lastMessage == Name..Text then
		dupeCount = dupeCount+1
		lastLabel.Text = Time()..' - ['..Name..']: '..Text..' (x'..dupeCount..')'
	else
		if dupeCount > 1 then dupeCount = 1 end
		if #scroll_2:GetChildren() >= 2546 then
			scroll_2:ClearAllChildren()
		end
		local alls = 0
		for i,v in pairs(scroll_2:GetChildren()) do
			if v then
				alls = v.Size.Y.Offset + alls
			end
			if not v then
				alls = 0
			end
		end
		local tl = Instance.new('TextLabel')
		lastMessage = Name..Text
		lastLabel = tl
		tl.Name = Name
		tl.Parent = scroll_2
		tl.ZIndex = 10
		tl.Text = Time().." - ["..Name.."]: "..Text
		tl.Size = UDim2.new(0,322,0,84)
		tl.BackgroundTransparency = 1
		tl.BorderSizePixel = 0
		tl.Font = "SourceSans"
		tl.Position = UDim2.new(-1,0,0,alls)
		tl.TextTransparency = 1
		tl.TextScaled = false
		tl.TextSize = 14
		tl.TextWrapped = true
		tl.TextXAlignment = "Left"
		tl.TextYAlignment = "Top"
		tl.TextColor3 = currentText1
		tl.Size = UDim2.new(0,322,0,tl.TextBounds.Y)
		table.insert(text1,tl)
		scroll_2.CanvasSize = UDim2.new(0,0,0,alls+tl.TextBounds.Y)
		scroll_2.CanvasPosition = Vector2.new(0,scroll_2.CanvasPosition.Y+tl.TextBounds.Y)
		tl:TweenPosition(UDim2.new(0,3,0,alls), 'In', 'Quint', 0.5)
		for i = 0,50 do wait(0.05)
			tl.TextTransparency = tl.TextTransparency - 0.05
		end
		tl.TextTransparency = 0
	end
end

function CreateJoinLabel(plr,ID)
	if #scroll_3:GetChildren() >= 2546 then
		scroll_3:ClearAllChildren()
	end
	local infoFrame = Instance.new("Frame")
	local info1 = Instance.new("TextLabel")
	local info2 = Instance.new("TextLabel")
	local ImageLabel_3 = Instance.new("ImageLabel")
	infoFrame.Name = randomString()
	infoFrame.Parent = scroll_3
	infoFrame.BackgroundColor3 = Color3.new(1, 1, 1)
	infoFrame.BackgroundTransparency = 1
	infoFrame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	infoFrame.Size = UDim2.new(1, 0, 0, 50)
	info1.Name = randomString()
	info1.Parent = infoFrame
	info1.BackgroundTransparency = 1
	info1.BorderSizePixel = 0
	info1.Position = UDim2.new(0, 45, 0, 0)
	info1.Size = UDim2.new(0, 135, 1, 0)
	info1.ZIndex = 10
	info1.Font = Enum.Font.SourceSans
	info1.FontSize = Enum.FontSize.Size14
	info1.Text = "Username: "..plr.Name.."\nJoined Server: "..Time()
	info1.TextColor3 = Color3.new(1, 1, 1)
	info1.TextWrapped = true
	info1.TextXAlignment = Enum.TextXAlignment.Left
	info2.Name = randomString()
	info2.Parent = infoFrame
	info2.BackgroundTransparency = 1
	info2.BorderSizePixel = 0
	info2.Position = UDim2.new(0, 185, 0, 0)
	info2.Size = UDim2.new(0, 140, 1, -5)
	info2.ZIndex = 10
	info2.Font = Enum.Font.SourceSans
	info2.FontSize = Enum.FontSize.Size14
	info2.Text = "User ID: "..ID.."\nAccount Age: "..plr.AccountAge.."\nJoined Roblox: Loading..."
	info2.TextColor3 = Color3.new(1, 1, 1)
	info2.TextWrapped = true
	info2.TextXAlignment = Enum.TextXAlignment.Left
	info2.TextYAlignment = Enum.TextYAlignment.Center
	ImageLabel_3.Parent = infoFrame
	ImageLabel_3.BackgroundTransparency = 1
	ImageLabel_3.BorderSizePixel = 0
	ImageLabel_3.Size = UDim2.new(0, 45, 1, 0)
	ImageLabel_3.Image = Players:GetUserThumbnailAsync(ID, Enum.ThumbnailType.AvatarThumbnail, Enum.ThumbnailSize.Size420x420)
	scroll_3.CanvasSize = UDim2.new(0, 0, 0, listlayout.AbsoluteContentSize.Y)
	scroll_3.CanvasPosition = Vector2.new(0,scroll_2.CanvasPosition.Y+infoFrame.AbsoluteSize.Y)
	wait()
	local user = game:HttpGet("https://users.roblox.com/v1/users/"..ID)
	local json = HttpService:JSONDecode(user)
	local date = json["created"]:sub(1,10)
	local splitDates = string.split(date,"-")
	info2.Text = string.gsub(info2.Text, "Loading...",splitDates[2].."/"..splitDates[3].."/"..splitDates[1])
end

IYMouse.KeyDown:Connect(function(Key)
	if (Key==prefix) then
		Cmdbar:CaptureFocus()
		spawn(function()
			repeat Cmdbar.Text = '' until Cmdbar.Text == ''
		end)
		maximizeHolder()
	end
end)

local lastMinimizeReq = 0
Holder.MouseEnter:Connect(function()
	lastMinimizeReq = 0
	maximizeHolder()
end)

Holder.MouseLeave:Connect(function()
	if not Cmdbar:IsFocused() then
		local reqTime = tick()
		lastMinimizeReq = reqTime
		wait(1)
		if lastMinimizeReq ~= reqTime then return end
		if not Cmdbar:IsFocused() then
			minimizeHolder()
		end
	end
end)

function updateColors(color,ctype)
	if ctype == shade1 then
		for i,v in pairs(shade1) do
			v.BackgroundColor3 = color
		end
		currentShade1 = color
	elseif ctype == shade2 then
		for i,v in pairs(shade2) do
			v.BackgroundColor3 = color
		end
		currentShade2 = color
	elseif ctype == shade3 then
		for i,v in pairs(shade3) do
			v.BackgroundColor3 = color
		end
		currentShade3 = color
	elseif ctype == text1 then
		for i,v in pairs(text1) do
			v.TextColor3 = color
			if v:IsA("TextBox") then
				v.PlaceholderColor3 = color	
			end
		end
		currentText1 = color
	elseif ctype == text2 then
		for i,v in pairs(text2) do
			v.TextColor3 = color
		end
		currentText2 = color
	elseif ctype == scroll then
		for i,v in pairs(scroll) do
			v.ScrollBarImageColor3 = color
		end
		currentScroll = color
	end
end

local colorpickerOpen = false
ColorsButton.MouseButton1Click:Connect(function()
	cache_currentShade1 = currentShade1
	cache_currentShade2 = currentShade2
	cache_currentShade3 = currentShade3
	cache_currentText1 = currentText1
	cache_currentText2 = currentText2
	cache_currentScroll = currentScroll
	if not colorpickerOpen then
		colorpickerOpen = true
		picker = game:GetObjects("rbxassetid://4908465318")[1]
		picker.Name = randomString()
		picker.Parent = PARENT

		local ColorPicker do
			ColorPicker = {}

			ColorPicker.new = function()
				local newMt = setmetatable({},{})

				local pickerGui = picker.ColorPicker
				local pickerTopBar = pickerGui.TopBar
				local pickerExit = pickerTopBar.Exit
				local pickerFrame = pickerGui.Content
				local colorSpace = pickerFrame.ColorSpaceFrame.ColorSpace
				local colorStrip = pickerFrame.ColorStrip
				local previewFrame = pickerFrame.Preview
				local basicColorsFrame = pickerFrame.BasicColors
				local customColorsFrame = pickerFrame.CustomColors
				local defaultButton = pickerFrame.Default
				local cancelButton = pickerFrame.Cancel
				local shade1Button = pickerFrame.Shade1
				local shade2Button = pickerFrame.Shade2
				local shade3Button = pickerFrame.Shade3
				local text1Button = pickerFrame.Text1
				local text2Button = pickerFrame.Text2
				local scrollButton = pickerFrame.Scroll

				local colorScope = colorSpace.Scope
				local colorArrow = pickerFrame.ArrowFrame.Arrow

				local hueInput = pickerFrame.Hue.Input
				local satInput = pickerFrame.Sat.Input
				local valInput = pickerFrame.Val.Input

				local redInput = pickerFrame.Red.Input
				local greenInput = pickerFrame.Green.Input
				local blueInput = pickerFrame.Blue.Input

				local mouse = IYMouse

				local hue,sat,val = 0,0,1
				local red,green,blue = 1,1,1
				local chosenColor = Color3.new(0,0,0)

				local basicColors = {Color3.new(0,0,0),Color3.new(0.66666668653488,0,0),Color3.new(0,0.33333334326744,0),Color3.new(0.66666668653488,0.33333334326744,0),Color3.new(0,0.66666668653488,0),Color3.new(0.66666668653488,0.66666668653488,0),Color3.new(0,1,0),Color3.new(0.66666668653488,1,0),Color3.new(0,0,0.49803924560547),Color3.new(0.66666668653488,0,0.49803924560547),Color3.new(0,0.33333334326744,0.49803924560547),Color3.new(0.66666668653488,0.33333334326744,0.49803924560547),Color3.new(0,0.66666668653488,0.49803924560547),Color3.new(0.66666668653488,0.66666668653488,0.49803924560547),Color3.new(0,1,0.49803924560547),Color3.new(0.66666668653488,1,0.49803924560547),Color3.new(0,0,1),Color3.new(0.66666668653488,0,1),Color3.new(0,0.33333334326744,1),Color3.new(0.66666668653488,0.33333334326744,1),Color3.new(0,0.66666668653488,1),Color3.new(0.66666668653488,0.66666668653488,1),Color3.new(0,1,1),Color3.new(0.66666668653488,1,1),Color3.new(0.33333334326744,0,0),Color3.new(1,0,0),Color3.new(0.33333334326744,0.33333334326744,0),Color3.new(1,0.33333334326744,0),Color3.new(0.33333334326744,0.66666668653488,0),Color3.new(1,0.66666668653488,0),Color3.new(0.33333334326744,1,0),Color3.new(1,1,0),Color3.new(0.33333334326744,0,0.49803924560547),Color3.new(1,0,0.49803924560547),Color3.new(0.33333334326744,0.33333334326744,0.49803924560547),Color3.new(1,0.33333334326744,0.49803924560547),Color3.new(0.33333334326744,0.66666668653488,0.49803924560547),Color3.new(1,0.66666668653488,0.49803924560547),Color3.new(0.33333334326744,1,0.49803924560547),Color3.new(1,1,0.49803924560547),Color3.new(0.33333334326744,0,1),Color3.new(1,0,1),Color3.new(0.33333334326744,0.33333334326744,1),Color3.new(1,0.33333334326744,1),Color3.new(0.33333334326744,0.66666668653488,1),Color3.new(1,0.66666668653488,1),Color3.new(0.33333334326744,1,1),Color3.new(1,1,1)}
				local customColors = {}

				dragGUI(picker)

				local function updateColor(noupdate)
					local relativeX,relativeY,relativeStripY = 219 - hue*219, 199 - sat*199, 199 - val*199
					local hsvColor = Color3.fromHSV(hue,sat,val)

					if noupdate == 2 or not noupdate then
						hueInput.Text = tostring(math.ceil(359*hue))
						satInput.Text = tostring(math.ceil(255*sat))
						valInput.Text = tostring(math.floor(255*val))
					end
					if noupdate == 1 or not noupdate then
						redInput.Text = tostring(math.floor(255*red))
						greenInput.Text = tostring(math.floor(255*green))
						blueInput.Text = tostring(math.floor(255*blue))
					end

					chosenColor = Color3.new(red,green,blue)

					colorScope.Position = UDim2.new(0,relativeX-9,0,relativeY-9)
					colorStrip.ImageColor3 = Color3.fromHSV(hue,sat,1)
					colorArrow.Position = UDim2.new(0,-2,0,relativeStripY-4)
					previewFrame.BackgroundColor3 = chosenColor

					newMt.Color = chosenColor
					if newMt.Changed then newMt:Changed(chosenColor) end
				end

				local function colorSpaceInput()
					local relativeX = mouse.X - colorSpace.AbsolutePosition.X
					local relativeY = mouse.Y - colorSpace.AbsolutePosition.Y

					if relativeX < 0 then relativeX = 0 elseif relativeX > 219 then relativeX = 219 end
					if relativeY < 0 then relativeY = 0 elseif relativeY > 199 then relativeY = 199 end

					hue = (219 - relativeX)/219
					sat = (199 - relativeY)/199

					local hsvColor = Color3.fromHSV(hue,sat,val)
					red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b

					updateColor()
				end

				local function colorStripInput()
					local relativeY = mouse.Y - colorStrip.AbsolutePosition.Y

					if relativeY < 0 then relativeY = 0 elseif relativeY > 199 then relativeY = 199 end	

					val = (199 - relativeY)/199

					local hsvColor = Color3.fromHSV(hue,sat,val)
					red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b

					updateColor()
				end

				local function hookButtons(frame,func)
					frame.ArrowFrame.Up.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement then
							frame.ArrowFrame.Up.BackgroundTransparency = 0.5
						elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
							local releaseEvent,runEvent

							local startTime = tick()
							local pressing = true
							local startNum = tonumber(frame.Text)

							if not startNum then return end

							releaseEvent = UserInputService.InputEnded:Connect(function(input)
								if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
								releaseEvent:Disconnect()
								pressing = false
							end)

							startNum = startNum + 1
							func(startNum)
							while pressing do
								if tick()-startTime > 0.3 then
									startNum = startNum + 1
									func(startNum)
								end
								wait(0.1)
							end
						end
					end)

					frame.ArrowFrame.Up.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement then
							frame.ArrowFrame.Up.BackgroundTransparency = 1
						end
					end)

					frame.ArrowFrame.Down.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement then
							frame.ArrowFrame.Down.BackgroundTransparency = 0.5
						elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
							local releaseEvent,runEvent

							local startTime = tick()
							local pressing = true
							local startNum = tonumber(frame.Text)

							if not startNum then return end

							releaseEvent = UserInputService.InputEnded:Connect(function(input)
								if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
								releaseEvent:Disconnect()
								pressing = false
							end)

							startNum = startNum - 1
							func(startNum)
							while pressing do
								if tick()-startTime > 0.3 then
									startNum = startNum - 1
									func(startNum)
								end
								wait(0.1)
							end
						end
					end)

					frame.ArrowFrame.Down.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement then
							frame.ArrowFrame.Down.BackgroundTransparency = 1
						end
					end)
				end

				colorSpace.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local releaseEvent,mouseEvent

						releaseEvent = UserInputService.InputEnded:Connect(function(input)
							if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
							releaseEvent:Disconnect()
							mouseEvent:Disconnect()
						end)

						mouseEvent = UserInputService.InputChanged:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseMovement then
								colorSpaceInput()
							end
						end)

						colorSpaceInput()
					end
				end)

				colorStrip.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local releaseEvent,mouseEvent

						releaseEvent = UserInputService.InputEnded:Connect(function(input)
							if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
							releaseEvent:Disconnect()
							mouseEvent:Disconnect()
						end)

						mouseEvent = UserInputService.InputChanged:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseMovement then
								colorStripInput()
							end
						end)

						colorStripInput()
					end
				end)

				local function updateHue(str)
					local num = tonumber(str)
					if num then
						hue = math.clamp(math.floor(num),0,359)/359
						local hsvColor = Color3.fromHSV(hue,sat,val)
						red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
						hueInput.Text = tostring(hue*359)
						updateColor(1)
					end
				end
				hueInput.FocusLost:Connect(function() updateHue(hueInput.Text) end) hookButtons(hueInput,updateHue)

				local function updateSat(str)
					local num = tonumber(str)
					if num then
						sat = math.clamp(math.floor(num),0,255)/255
						local hsvColor = Color3.fromHSV(hue,sat,val)
						red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
						satInput.Text = tostring(sat*255)
						updateColor(1)
					end
				end
				satInput.FocusLost:Connect(function() updateSat(satInput.Text) end) hookButtons(satInput,updateSat)

				local function updateVal(str)
					local num = tonumber(str)
					if num then
						val = math.clamp(math.floor(num),0,255)/255
						local hsvColor = Color3.fromHSV(hue,sat,val)
						red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
						valInput.Text = tostring(val*255)
						updateColor(1)
					end
				end
				valInput.FocusLost:Connect(function() updateVal(valInput.Text) end) hookButtons(valInput,updateVal)

				local function updateRed(str)
					local num = tonumber(str)
					if num then
						red = math.clamp(math.floor(num),0,255)/255
						local newColor = Color3.new(red,green,blue)
						hue,sat,val = Color3.toHSV(newColor)
						redInput.Text = tostring(red*255)
						updateColor(2)
					end
				end
				redInput.FocusLost:Connect(function() updateRed(redInput.Text) end) hookButtons(redInput,updateRed)

				local function updateGreen(str)
					local num = tonumber(str)
					if num then
						green = math.clamp(math.floor(num),0,255)/255
						local newColor = Color3.new(red,green,blue)
						hue,sat,val = Color3.toHSV(newColor)
						greenInput.Text = tostring(green*255)
						updateColor(2)
					end
				end
				greenInput.FocusLost:Connect(function() updateGreen(greenInput.Text) end) hookButtons(greenInput,updateGreen)

				local function updateBlue(str)
					local num = tonumber(str)
					if num then
						blue = math.clamp(math.floor(num),0,255)/255
						local newColor = Color3.new(red,green,blue)
						hue,sat,val = Color3.toHSV(newColor)
						blueInput.Text = tostring(blue*255)
						updateColor(2)
					end
				end
				blueInput.FocusLost:Connect(function() updateBlue(blueInput.Text) end) hookButtons(blueInput,updateBlue)

				local colorChoice = Instance.new("TextButton")
				colorChoice.Name = "Choice"
				colorChoice.Size = UDim2.new(0,25,0,18)
				colorChoice.BorderColor3 = Color3.new(96/255,96/255,96/255)
				colorChoice.Text = ""
				colorChoice.AutoButtonColor = false
				colorChoice.ZIndex = 10

				local row = 0
				local column = 0
				for i,v in pairs(basicColors) do
					local newColor = colorChoice:Clone()
					newColor.BackgroundColor3 = v
					newColor.Position = UDim2.new(0,1 + 30*column,0,21 + 23*row)

					newColor.MouseButton1Click:Connect(function()
						red,green,blue = v.r,v.g,v.b
						local newColor = Color3.new(red,green,blue)
						hue,sat,val = Color3.toHSV(newColor)
						updateColor()
					end)	

					newColor.Parent = basicColorsFrame
					column = column + 1
					if column == 6 then row = row + 1 column = 0 end
				end

				row = 0
				column = 0
				for i = 1,12 do
					local color = customColors[i] or Color3.new(0,0,0)
					local newColor = colorChoice:Clone()
					newColor.BackgroundColor3 = color
					newColor.Position = UDim2.new(0,1 + 30*column,0,20 + 23*row)

					newColor.MouseButton1Click:Connect(function()
						local curColor = customColors[i] or Color3.new(0,0,0)
						red,green,blue = curColor.r,curColor.g,curColor.b
						hue,sat,val = Color3.toHSV(curColor)
						updateColor()
					end)

					newColor.MouseButton2Click:Connect(function()
						customColors[i] = chosenColor
						newColor.BackgroundColor3 = chosenColor
					end)

					newColor.Parent = customColorsFrame
					column = column + 1
					if column == 6 then row = row + 1 column = 0 end
				end

				shade1Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,shade1) end end)
				shade1Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade1Button.BackgroundTransparency = 0.4 end end)
				shade1Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade1Button.BackgroundTransparency = 0 end end)

				shade2Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,shade2) end end)
				shade2Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade2Button.BackgroundTransparency = 0.4 end end)
				shade2Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade2Button.BackgroundTransparency = 0 end end)

				shade3Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,shade3) end end)
				shade3Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade3Button.BackgroundTransparency = 0.4 end end)
				shade3Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade3Button.BackgroundTransparency = 0 end end)

				text1Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,text1) end end)
				text1Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then text1Button.BackgroundTransparency = 0.4 end end)
				text1Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then text1Button.BackgroundTransparency = 0 end end)

				text2Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,text2) end end)
				text2Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then text2Button.BackgroundTransparency = 0.4 end end)
				text2Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then text2Button.BackgroundTransparency = 0 end end)

				scrollButton.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,scroll) end end)
				scrollButton.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then scrollButton.BackgroundTransparency = 0.4 end end)
				scrollButton.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then scrollButton.BackgroundTransparency = 0 end end)

				cancelButton.MouseButton1Click:Connect(function() if newMt.Cancel then newMt:Cancel() end end)
				cancelButton.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then cancelButton.BackgroundTransparency = 0.4 end end)
				cancelButton.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then cancelButton.BackgroundTransparency = 0 end end)

				defaultButton.MouseButton1Click:Connect(function() if newMt.Default then newMt:Default() end end)
				defaultButton.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then defaultButton.BackgroundTransparency = 0.4 end end)
				defaultButton.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then defaultButton.BackgroundTransparency = 0 end end)

				pickerExit.MouseButton1Click:Connect(function()
					picker:TweenPosition(UDim2.new(0.5, -219, 0, -500), "InOut", "Quart", 0.5, true, nil)
				end)

				updateColor()

				newMt.SetColor = function(self,color)
					red,green,blue = color.r,color.g,color.b
					hue,sat,val = Color3.toHSV(color)
					updateColor()
				end

				return newMt
			end
		end

		picker:TweenPosition(UDim2.new(0.5, -219, 0, 100), "InOut", "Quart", 0.5, true, nil)

		local Npicker = ColorPicker.new()
		Npicker.Confirm = function(self,color,ctype) updateColors(color,ctype) wait() updatesaves() end
		Npicker.Cancel = function(self)
			updateColors(cache_currentShade1,shade1)
			updateColors(cache_currentShade2,shade2)
			updateColors(cache_currentShade3,shade3)
			updateColors(cache_currentText1,text1)
			updateColors(cache_currentText2,text2)
			updateColors(cache_currentScroll,scroll)
			wait()
			updatesaves()
		end
		Npicker.Default = function(self)
			updateColors(Color3.fromRGB(36, 36, 37),shade1)
			updateColors(Color3.fromRGB(46, 46, 47),shade2)
			updateColors(Color3.fromRGB(78, 78, 79),shade3)
			updateColors(Color3.new(1, 1, 1),text1)
			updateColors(Color3.new(0, 0, 0),text2)
			updateColors(Color3.fromRGB(78,78,79),scroll)
			wait()
			updatesaves()
		end
	else
		picker:TweenPosition(UDim2.new(0.5, -219, 0, 100), "InOut", "Quart", 0.5, true, nil)
	end
end)


SettingsButton.MouseButton1Click:Connect(function()
	if SettingsOpen == false then SettingsOpen = true
		Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.5, true, nil)
		CMDsF.Visible = false
	else SettingsOpen = false
		CMDsF.Visible = true
		Settings:TweenPosition(UDim2.new(0, 0, 0, 220), "InOut", "Quart", 0.5, true, nil)
	end
end)

On.MouseButton1Click:Connect(function()
	if isHidden == false then
		if StayOpen == false then
			StayOpen = true
			On.BackgroundTransparency = 0
		else
			StayOpen = false
			On.BackgroundTransparency = 1
		end
		updatesaves()
	end
end)

Clear.MouseButton1Down:Connect(function()
	for _, child in pairs(scroll_2:GetChildren()) do
		child:Destroy()
	end
	scroll_2.CanvasSize = UDim2.new(0, 0, 0, 10)
end)

Clear_2.MouseButton1Down:Connect(function()
	for _, child in pairs(scroll_3:GetChildren()) do
		child:Destroy()
	end
	scroll_3.CanvasSize = UDim2.new(0, 0, 0, 10)
end)

Toggle.MouseButton1Down:Connect(function()
	if logsEnabled then
		logsEnabled = false
		Toggle.Text = 'Disabled'
		updatesaves()
	else
		logsEnabled = true
		Toggle.Text = 'Enabled'
		updatesaves()
	end
end)

Toggle_2.MouseButton1Down:Connect(function()
	if jLogsEnabled then
		jLogsEnabled = false
		Toggle_2.Text = 'Disabled'
		updatesaves()
	else
		jLogsEnabled = true
		Toggle_2.Text = 'Enabled'
		updatesaves()
	end
end)

selectChat.MouseButton1Down:Connect(function()
	join.Visible = false
	chat.Visible = true
	table.remove(shade3,table.find(shade3,selectChat))
	table.remove(shade2,table.find(shade2,selectJoin))
	table.insert(shade2,selectChat)
	table.insert(shade3,selectJoin)
	selectJoin.BackgroundColor3 = currentShade3
	selectChat.BackgroundColor3 = currentShade2
end)

selectJoin.MouseButton1Down:Connect(function()
	chat.Visible = false
	join.Visible = true	
	table.remove(shade3,table.find(shade3,selectJoin))
	table.remove(shade2,table.find(shade2,selectChat))
	table.insert(shade2,selectJoin)
	table.insert(shade3,selectChat)
	selectChat.BackgroundColor3 = currentShade3
	selectJoin.BackgroundColor3 = currentShade2
end)

if not writefileExploit() then
	notify('Saves','Your exploit does not support read/write file. Your settings will not save.')
end

ChatLog = function(plr)
	plr.Chatted:Connect(function(Message)
		if logsEnabled == true then
			CreateLabel(plr.Name,Message)
		end
	end)
end

JoinLog = function(plr)
	if jLogsEnabled == true then
		CreateJoinLabel(plr,plr.UserId)
	end
end

local CleanFileName = function(str)
	local gsub = string.gsub
	return gsub(str, "[*\\?:<>|]+", "")
end

SaveChatlogs.MouseButton1Down:Connect(function()
	if writefileExploit() then
		if #scroll_2:GetChildren() > 0 then
			notify("Loading",'Hold on a sec')
			local placeName = CleanFileName(MarketplaceService:GetProductInfo(PlaceId).Name)
			local writelogs = '-- Infinite Yield Chat logs for "'..placeName..'"\n'
			for _, child in pairs(scroll_2:GetChildren()) do
				writelogs = writelogs..'\n'..child.Text
			end
			local writelogsFile = tostring(writelogs)
			local fileext = 0
			local function nameFile()
				local file
				pcall(function() file = readfile(placeName..' Chat Logs ('..fileext..').txt') end)
				if file then
					fileext = fileext+1
					nameFile()
				else
					writefileCooldown(placeName..' Chat Logs ('..fileext..').txt', writelogsFile)
				end
			end
			nameFile()
			notify('Chat Logs','Saved chat logs to the workspace folder within your exploit folder.')
		end
	else
		notify('Chat Logs','Your exploit does not support write file. You cannot save chat logs.')
	end
end)

for _, plr in pairs(Players:GetChildren()) do
	if plr.ClassName == "Player" then
		ChatLog(plr)
	end
end

Players.PlayerRemoving:Connect(function(player)
	if ESPenabled or CHMSenabled or COREGUI:FindFirstChild(player.Name..'_LC') then
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == player.Name..'_ESP' or v.Name == player.Name..'_LC' or v.Name == player.Name..'_CHMS' then
				v:Destroy()
			end
		end
	end
	if viewing ~= nil and player == viewing then
		workspace.CurrentCamera.CameraSubject = Players.LocalPlayer.Character
		viewing = nil
		if viewDied then
			viewDied:Disconnect()
			viewChanged:Disconnect()
		end
		notify('Spectate','View turned off (player left)')
	end
end)

Exit.MouseButton1Down:Connect(function()
	logs:TweenPosition(UDim2.new(0, 0, 1, 10), "InOut", "Quart", 0.3, true, nil)
end)

Hide.MouseButton1Down:Connect(function()
	if logs.Position ~= UDim2.new(0, 0, 1, -20) then
		logs:TweenPosition(UDim2.new(0, 0, 1, -20), "InOut", "Quart", 0.3, true, nil)
	else
		logs:TweenPosition(UDim2.new(0, 0, 1, -265), "InOut", "Quart", 0.3, true, nil)
	end
end)

EventBind.MouseButton1Click:Connect(function()
	eventEditor.Frame:TweenPosition(UDim2.new(0.5,-175,0.5,-101), "InOut", "Quart", 0.5, true, nil)
end)

Keybinds.MouseButton1Click:Connect(function()
	KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	SettingsHolder.Visible = false
end)

Close.MouseButton1Click:Connect(function()
	SettingsHolder.Visible = true
	KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

Keybinds.MouseButton1Click:Connect(function()
	KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	SettingsHolder.Visible = false
end)

Add.MouseButton1Click:Connect(function()
	KeybindEditor:TweenPosition(UDim2.new(0.5, -180, 0, 260), "InOut", "Quart", 0.5, true, nil)
end)

Delete.MouseButton1Click:Connect(function()
	binds = {}
	refreshbinds()
	updatesaves()
	notify('Keybinds Updated','Removed all keybinds')
end)

Close_2.MouseButton1Click:Connect(function()
	SettingsHolder.Visible = true
	AliasesFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

Aliases.MouseButton1Click:Connect(function()
	AliasesFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	SettingsHolder.Visible = false
end)

Close_3.MouseButton1Click:Connect(function()
	SettingsHolder.Visible = true
	PositionsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

Positions.MouseButton1Click:Connect(function()
	PositionsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	SettingsHolder.Visible = false
end)

local selectionBox = Instance.new("SelectionBox")
selectionBox.Name = randomString()
selectionBox.Color3 = Color3.new(255,255,255)
selectionBox.Adornee = nil
selectionBox.Parent = PARENT

local selected = Instance.new("SelectionBox")
selected.Name = randomString()
selected.Color3 = Color3.new(0,166,0)
selected.Adornee = nil
selected.Parent = PARENT

local ActivateHighlight = nil
local ClickSelect = nil
function selectPart()
	ToPartFrame:TweenPosition(UDim2.new(0.5, -180, 0, 335), "InOut", "Quart", 0.5, true, nil)
	local function HighlightPart()
		if selected.Adornee ~= IYMouse.Target then
			selectionBox.Adornee = IYMouse.Target
		else
			selectionBox.Adornee = nil
		end
	end
	ActivateHighlight = IYMouse.Move:Connect(HighlightPart)
	local function SelectPart()
		if IYMouse.Target ~= nil then
			selected.Adornee = IYMouse.Target
			Path.Text = getHierarchy(IYMouse.Target)
		end
	end
	ClickSelect = IYMouse.Button1Down:Connect(SelectPart)
end

Part.MouseButton1Click:Connect(function()
	selectPart()
end)

Exit_4.MouseButton1Click:Connect(function()
	ToPartFrame:TweenPosition(UDim2.new(0.5, -180, 0, -500), "InOut", "Quart", 0.5, true, nil)
	if ActivateHighlight then
		ActivateHighlight:Disconnect()
	end
	if ClickSelect then
		ClickSelect:Disconnect()
	end
	selectionBox.Adornee = nil
	selected.Adornee = nil
	Path.Text = ""
end)

CopyPath.MouseButton1Click:Connect(function()
	if Path.Text ~= "" then
		toClipboard(Path.Text)
	else
		notify('Copy Path','Select a part to copy its path')
	end
end)

ChoosePart.MouseButton1Click:Connect(function()
	if Path.Text ~= "" then
		local tpNameExt = ''
		local function handleWpNames()
			local FoundDupe = false
			for i,v in pairs(pWayPoints) do
				if v.NAME:lower() == selected.Adornee.Name:lower()..tpNameExt then
					FoundDupe = true
				end
			end
			if not FoundDupe then
				notify('Modified Waypoints',"Created waypoint: "..selected.Adornee.Name..tpNameExt)
				pWayPoints[#pWayPoints + 1] = {NAME = selected.Adornee.Name..tpNameExt, COORD = {selected.Adornee}}
			else
				if isNumber(tpNameExt) then
					tpNameExt = tpNameExt+1
				else
					tpNameExt = 1
				end
				handleWpNames()
			end
		end
		handleWpNames()
		refreshwaypoints()
	else
		notify('Part Selection','Select a part first')
	end
end)

cmds={}
customAlias = {}
Delete_3.MouseButton1Click:Connect(function()
	customAlias = {}
	aliases = {}
	notify('Aliases Modified','Removed all aliases')
	updatesaves()
	refreshaliases()
end)

PrefixBox:GetPropertyChangedSignal("Text"):Connect(function()
	prefix = PrefixBox.Text
	Cmdbar.PlaceholderText = "Command Bar ("..prefix..")"
	updatesaves()
end)

function CamViewport()
	if workspace.CurrentCamera then
		return workspace.CurrentCamera.ViewportSize.X
	end
end

function UpdateToViewport()
	if Holder.Position.X.Offset < -CamViewport() then
		Holder:TweenPosition(UDim2.new(1, -CamViewport(), Holder.Position.Y.Scale, Holder.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
		Notification:TweenPosition(UDim2.new(1, -CamViewport() + 250, Notification.Position.Y.Scale, Notification.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
	end
end
CameraChanged = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateToViewport)

function updateCamera(child, parent)
	if parent ~= workspace then
		CamMoved:Disconnect()
		CameraChanged:Disconnect()
		repeat wait() until workspace.CurrentCamera
		CameraChanged = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateToViewport)
		CamMoved = workspace.CurrentCamera.AncestryChanged:Connect(updateCamera)
	end
end
CamMoved = workspace.CurrentCamera.AncestryChanged:Connect(updateCamera)

function dragMain(dragpoint,gui)
	task.spawn(function()
		local dragging
		local dragInput
		local dragStart = Vector3.new(0,0,0)
		local startPos
		local function update(input)
			local pos = -250
			local delta = input.Position - dragStart
			if startPos.X.Offset + delta.X <= -500 then
				local Position = UDim2.new(1, -250, Notification.Position.Y.Scale, Notification.Position.Y.Offset)
				TweenService:Create(Notification, TweenInfo.new(.20), {Position = Position}):Play()
				pos = 250
			else
				local Position = UDim2.new(1, -500, Notification.Position.Y.Scale, Notification.Position.Y.Offset)
				TweenService:Create(Notification, TweenInfo.new(.20), {Position = Position}):Play()
				pos = -250
			end
			if startPos.X.Offset + delta.X <= -250 and -CamViewport() <= startPos.X.Offset + delta.X then
				local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, gui.Position.Y.Scale, gui.Position.Y.Offset)
				TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
				local Position2 = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X + pos, Notification.Position.Y.Scale, Notification.Position.Y.Offset)
				TweenService:Create(Notification, TweenInfo.new(.20), {Position = Position2}):Play()
			elseif startPos.X.Offset + delta.X > -500 then
				local Position = UDim2.new(1, -250, gui.Position.Y.Scale, gui.Position.Y.Offset)
				TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
			elseif -CamViewport() > startPos.X.Offset + delta.X then
				gui:TweenPosition(UDim2.new(1, -CamViewport(), gui.Position.Y.Scale, gui.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
				local Position = UDim2.new(1, -CamViewport(), gui.Position.Y.Scale, gui.Position.Y.Offset)
				TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
				local Position2 = UDim2.new(1, -CamViewport() + 250, Notification.Position.Y.Scale, Notification.Position.Y.Offset)
				TweenService:Create(Notification, TweenInfo.new(.20), {Position = Position2}):Play()
			end
		end
		dragpoint.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		dragpoint.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end)
end

dragMain(Title,Holder)

Match = function(name,str)
	str = str:gsub("%W", "%%%1")
	return name:lower():find(str:lower()) and true
end

local canvasPos = Vector2.new(0,0)
local topCommand = nil
IndexContents = function(str,bool,cmdbar,Ianim)
	CMDsF.CanvasPosition = Vector2.new(0,0)
	local SizeY = 0
	local indexnum = 0
	local frame = CMDsF
	topCommand = nil
	local chunks = {}
	if str:sub(#str,#str) == "\\" then str = "" end
	for w in string.gmatch(str,"[^\\]+") do
		table.insert(chunks,w)
	end
	if #chunks > 0 then str = chunks[#chunks] end
	if str:sub(1,1) == "!" then str = str:sub(2) end
	for i,v in next, frame:GetChildren() do
		if v:IsA("TextButton") then
			if bool then
				if Match(v.Text,str) then
					indexnum = indexnum + 1
					v.Visible = true
					if topCommand == nil then
						topCommand = v.Text
					end
				else
					v.Visible = false
				end
			else
				v.Visible = true
				if topCommand == nil then
					topCommand = v.Text
				end
			end
		end
	end
	frame.CanvasSize = UDim2.new(0,0,0,cmdListLayout.AbsoluteContentSize.Y)
	if not Ianim then
		if indexnum == 0 or string.find(str, " ") then
			if not cmdbar then
				minimizeHolder()
			elseif cmdbar then
				cmdbarHolder()
			end
		else
			maximizeHolder()
		end
	else
		minimizeHolder()
	end
end

PlayerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
local chatbox
task.spawn(function()
	local success, result = pcall(function() chatbox = game.WaitForChild(PlayerGui, "Chat").Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar end)
	if success then
		local function chatboxFocused()
			canvasPos = CMDsF.CanvasPosition
		end
		local chatboxFocusedC = chatbox.Focused:Connect(chatboxFocused)

		local function Index()
			if chatbox.Text:lower():sub(1,1) == prefix then
				if SettingsOpen == true then
					wait(0.2)
					CMDsF.Visible = true
					Settings:TweenPosition(UDim2.new(0, 0, 0, 220), "InOut", "Quart", 0.2, true, nil)
				end
				IndexContents(PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Text:lower():sub(2),true)
			else
				minimizeHolder()
				if SettingsOpen == true then
					wait(0.2)
					Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.2, true, nil)
					CMDsF.Visible = false
				end
			end
		end
		local chatboxFunc = chatbox:GetPropertyChangedSignal("Text"):Connect(Index)

		local function chatboxFocusLost(enterpressed)
			if not enterpressed or chatbox.Text:lower():sub(1,1) ~= prefix then
				IndexContents('',true)
			end
			CMDsF.CanvasPosition = canvasPos
			minimizeHolder()
		end
		local chatboxFocusLostC = chatbox.FocusLost:Connect(chatboxFocusLost)

		PlayerGui:WaitForChild("Chat").Frame.ChatBarParentFrame.ChildAdded:Connect(function(newbar)
			wait()
			if newbar:FindFirstChild('BoxFrame') then
				chatbox = PlayerGui:WaitForChild("Chat").Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
				if chatboxFocusedC then chatboxFocusedC:Disconnect() end
				chatboxFocusedC = chatbox.Focused:Connect(chatboxFocused)
				if chatboxFunc then chatboxFunc:Disconnect() end
				chatboxFunc = chatbox:GetPropertyChangedSignal("Text"):Connect(Index)
				if chatboxFocusLostC then chatboxFocusLostC:Disconnect() end
				chatboxFocusLostC = chatbox.FocusLost:Connect(chatboxFocusLost)
			end
		end)
		--else
		--print('Custom chat detected. Will not provide suggestions for commands typed in the chat.')
	end
end)

function autoComplete(str,curText)
	local endingChar = {"[", "/", "(", " "}
	local stop = 0
	for i=1,#str do
		local c = str:sub(i,i)
		if table.find(endingChar, c) then
			stop = i
			break
		end
	end
	curText = curText or Cmdbar.Text
	local subPos = 0
	local pos = 1
	local findRes = string.find(curText,"\\",pos)
	while findRes do
		subPos = findRes
		pos = findRes+1
		findRes = string.find(curText,"\\",pos)
	end
	if curText:sub(subPos+1,subPos+1) == "!" then subPos = subPos + 1 end
	Cmdbar.Text = curText:sub(1,subPos) .. str:sub(1, stop - 1)..' '
	wait()
	Cmdbar.Text = Cmdbar.Text:gsub( '\t', '' )
	Cmdbar.CursorPosition = #Cmdbar.Text+1--1020
end

CMDs = {}
CMDs[#CMDs + 1] = {NAME = 'discord / support / help', DESC = 'Invite to the Infinite Yield support server.'}
CMDs[#CMDs + 1] = {NAME = 'console', DESC = 'Loads old Roblox console'}
CMDs[#CMDs + 1] = {NAME = 'explorer / dex', DESC = 'Opens DEX by Moon'}
CMDs[#CMDs + 1] = {NAME = 'olddex / odex', DESC = 'Opens Old DEX by Moon'}
CMDs[#CMDs + 1] = {NAME = 'remotespy / rspy', DESC = 'Opens Simple Spy V3'}
CMDs[#CMDs + 1] = {NAME = 'audiologger / alogger', DESC = 'Opens Edges audio logger'}
CMDs[#CMDs + 1] = {NAME = 'serverinfo / info', DESC = 'Gives you info about the server'}
CMDs[#CMDs + 1] = {NAME = 'jobid', DESC = 'Copies the games JobId to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'notifyjobid', DESC = 'Notifies you the games JobId'}
CMDs[#CMDs + 1] = {NAME = 'rejoin / rj', DESC = 'Makes you rejoin the game'}
CMDs[#CMDs + 1] = {NAME = 'autorejoin / autorj', DESC = 'Automatically rejoins the server if you get kicked/disconnected'}
CMDs[#CMDs + 1] = {NAME = 'serverhop / shop', DESC = 'Teleports you to a different server'}
CMDs[#CMDs + 1] = {NAME = 'joinplayer [username / ID] [place ID]', DESC = 'Joins a specific players server'}
CMDs[#CMDs + 1] = {NAME = 'gameteleport / gametp [place ID]', DESC = 'Joins a game by ID'}
CMDs[#CMDs + 1] = {NAME = 'antiidle / antiafk', DESC = 'Prevents the game from kicking you for being idle/afk'}
CMDs[#CMDs + 1] = {NAME = 'datalimit [num]', DESC = 'Set outgoing KBPS limit'}
CMDs[#CMDs + 1] = {NAME = 'replicationlag / backtrack [num]', DESC = 'Set IncomingReplicationLag'}
CMDs[#CMDs + 1] = {NAME = 'creatorid / creator', DESC = 'Notifies you the creators ID'}
CMDs[#CMDs + 1] = {NAME = 'copycreatorid / copycreator', DESC = 'Copies the creators ID to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'setcreatorid / setcreator', DESC = 'Sets your userid to the creators ID'}
CMDs[#CMDs + 1] = {NAME = 'noprompts', DESC = 'Prevents the game from showing you purchase/premium prompts'}
CMDs[#CMDs + 1] = {NAME = 'showprompts', DESC = 'Allows the game to show purchase/premium prompts again'}
CMDs[#CMDs + 1] = {NAME = 'enable [inventory/playerlist/chat/reset/emotes/all]', DESC = 'Toggles visibility of coregui items'}
CMDs[#CMDs + 1] = {NAME = 'disable [inventory/playerlist/chat/reset/emotes/all]', DESC = 'Toggles visibility of coregui items'}
CMDs[#CMDs + 1] = {NAME = 'showguis', DESC = 'Shows any invisible GUIs'}
CMDs[#CMDs + 1] = {NAME = 'unshowguis', DESC = 'Undoes showguis'}
CMDs[#CMDs + 1] = {NAME = 'hideguis', DESC = 'Hides any GUIs in PlayerGui'}
CMDs[#CMDs + 1] = {NAME = 'unhideguis', DESC = 'Undoes hideguis'}
CMDs[#CMDs + 1] = {NAME = 'guidelete', DESC = 'Enables backspace to delete GUI'}
CMDs[#CMDs + 1] = {NAME = 'unguidelete / noguidelete', DESC = 'Disables guidelete'}
CMDs[#CMDs + 1] = {NAME = 'hideiy', DESC = 'Hides the main IY GUI'}
CMDs[#CMDs + 1] = {NAME = 'showiy / unhideiy', DESC = 'Shows IY again'}
CMDs[#CMDs + 1] = {NAME = 'keepiy', DESC = 'Auto execute IY when you teleport through servers'}
CMDs[#CMDs + 1] = {NAME = 'unkeepiy', DESC = 'Disable keepiy'}
CMDs[#CMDs + 1] = {NAME = 'togglekeepiy', DESC = 'Toggle keepiy'}
CMDs[#CMDs + 1] = {NAME = 'savegame / saveplace', DESC = 'Uses saveinstance to save the game'}
CMDs[#CMDs + 1] = {NAME = 'clearerror', DESC = 'Clears the annoying box and blur when a game kicks you'}
CMDs[#CMDs + 1] = {NAME = 'clientantikick / antikick (CLIENT)', DESC = 'Prevents localscripts from kicking you'}
CMDs[#CMDs + 1] = {NAME = 'clientantiteleport / antiteleport (CLIENT)', DESC = 'Prevents localscripts from teleporting you'}
CMDs[#CMDs + 1] = {NAME = 'allowrejoin / allowrj [true/false] (CLIENT)', DESC = 'Changes if antiteleport allows you to rejoin or not'}
CMDs[#CMDs + 1] = {NAME = 'cancelteleport / canceltp', DESC = 'Cancels teleports in progress'}
CMDs[#CMDs + 1] = {NAME = 'volume / vol [0-10]', DESC = 'Adjusts your game volume on a scale of 0 to 10'}
CMDs[#CMDs + 1] = {NAME = 'antilag / boostfps / lowgraphics', DESC = 'Lowers game quality to boost FPS'}
CMDs[#CMDs + 1] = {NAME = 'record / rec', DESC = 'Starts roblox recorder'}
CMDs[#CMDs + 1] = {NAME = 'screenshot / scrnshot', DESC = 'Takes a screenshot'}
CMDs[#CMDs + 1] = {NAME = 'togglefullscreen / togglefs', DESC = 'Toggles fullscreen'}
CMDs[#CMDs + 1] = {NAME = 'notify [text]', DESC = 'Sends you a notification with the provided text'}
CMDs[#CMDs + 1] = {NAME = 'lastcommand / lastcmd', DESC = 'Executes the previous command used'}
CMDs[#CMDs + 1] = {NAME = 'exit', DESC = 'Kills roblox process'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'noclip', DESC = 'Go through objects'}
CMDs[#CMDs + 1] = {NAME = 'unnoclip / clip', DESC = 'Disables noclip'}
CMDs[#CMDs + 1] = {NAME = 'fly [speed]', DESC = 'Makes you fly'}
CMDs[#CMDs + 1] = {NAME = 'unfly', DESC = 'Disables fly'}
CMDs[#CMDs + 1] = {NAME = 'flyspeed [num]', DESC = 'Set fly speed (default is 20)'}
CMDs[#CMDs + 1] = {NAME = 'vehiclefly / vfly [speed]', DESC = 'Makes you fly in a vehicle'}
CMDs[#CMDs + 1] = {NAME = 'unvehiclefly / unvfly', DESC = 'Disables vehicle fly'}
CMDs[#CMDs + 1] = {NAME = 'vehicleflyspeed  / vflyspeed [num]', DESC = 'Set vehicle fly speed'}
CMDs[#CMDs + 1] = {NAME = 'cframefly / cfly [speed]', DESC = 'Makes you fly, bypassing some anti cheats (works on mobile)'}
CMDs[#CMDs + 1] = {NAME = 'uncframefly / uncfly', DESC = 'Disables cfly'}
CMDs[#CMDs + 1] = {NAME = 'cframeflyspeed  / cflyspeed [num]', DESC = 'Sets cfly speed'}
CMDs[#CMDs + 1] = {NAME = 'qefly [true / false]', DESC = 'enables or disables the Q and E hotkeys for fly'}
CMDs[#CMDs + 1] = {NAME = 'vehiclenoclip / vnoclip', DESC = 'Turns off vehicle collision'}
CMDs[#CMDs + 1] = {NAME = 'vehicleclip / vclip / unvnoclip', DESC = 'Enables vehicle collision'}
CMDs[#CMDs + 1] = {NAME = 'float /  platform', DESC = 'Spawns a platform beneath you causing you to float'}
CMDs[#CMDs + 1] = {NAME = 'unfloat / noplatform', DESC = 'Removes the platform'}
CMDs[#CMDs + 1] = {NAME = 'swim', DESC = 'Allows you to swim in the air'}
CMDs[#CMDs + 1] = {NAME = 'unswim / noswim', DESC = 'Stops you from swimming everywhere'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'setwaypoint / swp [name]', DESC = 'Sets a waypoint at your position'}
CMDs[#CMDs + 1] = {NAME = 'waypointpos / wpp [name] [X Y Z]', DESC = 'Sets a waypoint with specified coordinates'}
CMDs[#CMDs + 1] = {NAME = 'waypoints', DESC = 'Shows a list of currently active waypoints'}
CMDs[#CMDs + 1] = {NAME = 'showwaypoints / showwp', DESC = 'Shows all currently set waypoints'}
CMDs[#CMDs + 1] = {NAME = 'hidewaypoints / hidewp', DESC = 'Hides shown waypoints'}
CMDs[#CMDs + 1] = {NAME = 'waypoint / wp [name]', DESC = 'Teleports player to a waypoint'}
CMDs[#CMDs + 1] = {NAME = 'tweenwaypoint / twp [name]', DESC = 'Tweens player to a waypoint'}
CMDs[#CMDs + 1] = {NAME = 'walktowaypoint / wtwp [name]', DESC = 'Walks player to a waypoint'}
CMDs[#CMDs + 1] = {NAME = 'deletewaypoint / dwp [name]', DESC = 'Deletes a waypoint'}
CMDs[#CMDs + 1] = {NAME = 'clearwaypoints / cwp', DESC = 'Clears all waypoints'}
CMDs[#CMDs + 1] = {NAME = 'cleargamewaypoints / cgamewp', DESC = 'Clears all waypoints for the game you are in'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'goto [plr]', DESC = 'Go to a player'}
CMDs[#CMDs + 1] = {NAME = 'tweengoto / tgoto [plr]', DESC = 'Tween to a player (bypasses some anti cheats)'}
CMDs[#CMDs + 1] = {NAME = 'tweenspeed / tspeed [num]', DESC = 'Sets how fast all tween commands go (default is 1)'}
CMDs[#CMDs + 1] = {NAME = 'vehiclegoto / vgoto [plr]', DESC = 'Go to a player while in a vehicle'}
CMDs[#CMDs + 1] = {NAME = 'loopgoto [plr] [distance] [delay]', DESC = 'Loop teleport to a player'}
CMDs[#CMDs + 1] = {NAME = 'unloopgoto', DESC = 'Stops teleporting you to a player'}
CMDs[#CMDs + 1] = {NAME = 'pulsetp / ptp [plr] [seconds]', DESC = 'Teleports you to a player for a specified ammount of time'}
CMDs[#CMDs + 1] = {NAME = 'clientbring / cbring [plr] (CLIENT)', DESC = 'Bring a player'}
CMDs[#CMDs + 1] = {NAME = 'loopbring [plr] [distance] [delay] (CLIENT)', DESC = 'Loop brings a player to you (useful for killing)'}
CMDs[#CMDs + 1] = {NAME = 'unloopbring [plr]', DESC = 'Undoes loopbring'}
CMDs[#CMDs + 1] = {NAME = 'freeze / fr [plr] (CLIENT)', DESC = 'Freezes a player'}
CMDs[#CMDs + 1] = {NAME = 'freezeanims', DESC = 'Freezes your animations / pauses your animations - Does not work on default animations'}
CMDs[#CMDs + 1] = {NAME = 'unfreezeanims', DESC = 'Unfreezes your animations / plays your animations'}
CMDs[#CMDs + 1] = {NAME = 'thaw / unfr [plr] (CLIENT)', DESC = 'Unfreezes a player'}
CMDs[#CMDs + 1] = {NAME = 'tpposition / tppos [X Y Z]', DESC = 'Teleports you to certain coordinates'}
CMDs[#CMDs + 1] = {NAME = 'tweentpposition / ttppos [X Y Z]', DESC = 'Tween to coordinates (bypasses some anti cheats)'}
CMDs[#CMDs + 1] = {NAME = 'offset [X Y Z]', DESC = 'Offsets you by certain coordinates'}
CMDs[#CMDs + 1] = {NAME = 'tweenoffset / toffset [X Y Z]', DESC = 'Tween offset (bypasses some anti cheats)'}
CMDs[#CMDs + 1] = {NAME = 'notifyposition / notifypos [plr]', DESC = 'Notifies you the coordinates of a character'}
CMDs[#CMDs + 1] = {NAME = 'copyposition / copypos [plr]', DESC = 'Copies the coordinates of a character to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'walktoposition / walktopos [X Y Z]', DESC = 'Makes you walk to a coordinate'}
CMDs[#CMDs + 1] = {NAME = 'spawnpoint / spawn [delay]', DESC = 'Sets a position where you will spawn'}
CMDs[#CMDs + 1] = {NAME = 'nospawnpoint / nospawn', DESC = 'Removes your custom spawn point'}
CMDs[#CMDs + 1] = {NAME = 'flashback / diedtp', DESC = 'Teleports you to where you last died'}
CMDs[#CMDs + 1] = {NAME = 'walltp', DESC = 'Teleports you above/over any wall you run into'}
CMDs[#CMDs + 1] = {NAME = 'nowalltp / unwalltp', DESC = 'Disables walltp'}
CMDs[#CMDs + 1] = {NAME = 'teleporttool / tptool', DESC = 'Gives you a teleport tool'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'logs', DESC = 'Opens the logs GUI'}
CMDs[#CMDs + 1] = {NAME = 'chatlogs / clogs', DESC = 'Log what people say or whisper'}
CMDs[#CMDs + 1] = {NAME = 'joinlogs / jlogs', DESC = 'Log when people join'}
CMDs[#CMDs + 1] = {NAME = 'chat / say [text]', DESC = 'Makes you chat a string (possible mute bypass)'}
CMDs[#CMDs + 1] = {NAME = 'spam [text]', DESC = 'Makes you spam the chat'}
CMDs[#CMDs + 1] = {NAME = 'unspam', DESC = 'Turns off spam'}
CMDs[#CMDs + 1] = {NAME = 'whisper / pm [plr] [text]', DESC = 'Makes you whisper a string to someone (possible mute bypass)'}
CMDs[#CMDs + 1] = {NAME = 'pmspam [plr] [text]', DESC = 'Makes you spam a players whispers'}
CMDs[#CMDs + 1] = {NAME = 'unpmspam [plr]', DESC = 'Turns off pm spam'}
CMDs[#CMDs + 1] = {NAME = 'spamspeed [num]', DESC = 'How quickly you spam (default is 1)'}
CMDs[#CMDs + 1] = {NAME = 'bubblechat (CLIENT)', DESC = 'Enables bubble chat for your client'}
CMDs[#CMDs + 1] = {NAME = 'unbubblechat / nobubblechat', DESC = 'Disables the bubblechat command'}
CMDs[#CMDs + 1] = {NAME = 'safechat', DESC = 'Enables safe chat'}
CMDs[#CMDs + 1] = {NAME = 'nosafechat / disablesafechat', DESC = 'Disables safechat'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'esp', DESC = 'View all players and their status'}
CMDs[#CMDs + 1] = {NAME = 'noesp / unesp', DESC = 'Removes esp'}
CMDs[#CMDs + 1] = {NAME = 'esptransparency [number]', DESC = 'Changes the transparency of esp related commands'}
CMDs[#CMDs + 1] = {NAME = 'partesp [part name]', DESC = 'Highlights a part'}
CMDs[#CMDs + 1] = {NAME = 'unpartesp / nopartesp [part name]', DESC = 'removes partesp'}
CMDs[#CMDs + 1] = {NAME = 'chams', DESC = 'ESP but without text in the way'}
CMDs[#CMDs + 1] = {NAME = 'nochams / unchams', DESC = 'Removes chams'}
CMDs[#CMDs + 1] = {NAME = 'locate [plr]', DESC = 'View a single player and their status'}
CMDs[#CMDs + 1] = {NAME = 'unlocate / nolocate [plr]', DESC = 'Removes locate'}
CMDs[#CMDs + 1] = {NAME = 'xray', DESC = 'Makes all parts in workspace transparent'}
CMDs[#CMDs + 1] = {NAME = 'unxray / noxray', DESC = 'Restores transparency'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'spectate / view [plr]', DESC = 'View a player'}
CMDs[#CMDs + 1] = {NAME = 'viewpart / viewp [part name]', DESC = 'View a part'}
CMDs[#CMDs + 1] = {NAME = 'unspectate / unview', DESC = 'Stops viewing player'}
CMDs[#CMDs + 1] = {NAME = 'freecam / fc', DESC = 'Allows you to freely move camera around the game'}
CMDs[#CMDs + 1] = {NAME = 'freecampos / fcpos [X Y Z]', DESC = 'Moves / opens freecam in a certain position'}
CMDs[#CMDs + 1] = {NAME = 'freecamwaypoint / fcwp [name]', DESC = 'Moves / opens freecam to a waypoint'}
CMDs[#CMDs + 1] = {NAME = 'freecamgoto / fcgoto / fctp [plr]', DESC = 'Moves / opens freecam to a player'}
CMDs[#CMDs + 1] = {NAME = 'unfreecam / unfc', DESC = 'Disables freecam'}
CMDs[#CMDs + 1] = {NAME = 'freecamspeed / fcspeed [num]', DESC = 'Adjusts freecam speed (default is 1)'}
CMDs[#CMDs + 1] = {NAME = 'notifyfreecamposition / notifyfcpos', DESC = 'Noitifies you your freecam coordinates'}
CMDs[#CMDs + 1] = {NAME = 'copyfreecamposition / copyfcpos', DESC = 'Copies your freecam coordinates to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'gotocamera / gotocam', DESC = 'Teleports you to the location of your camera'}
CMDs[#CMDs + 1] = {NAME = 'tweengotocam / tgotocam', DESC = 'Tweens you to the location of your camera'}
CMDs[#CMDs + 1] = {NAME = 'firstp', DESC = 'Forces camera to go into first person'}
CMDs[#CMDs + 1] = {NAME = 'thirdp', DESC = 'Allows camera to go into third person'}
CMDs[#CMDs + 1] = {NAME = 'noclipcam / nccam', DESC = 'Allows camera to go through objects like walls'}
CMDs[#CMDs + 1] = {NAME = 'maxzoom [num]', DESC = 'Maximum camera zoom'}
CMDs[#CMDs + 1] = {NAME = 'minzoom [num]', DESC = 'Minimum camera zoom'}
CMDs[#CMDs + 1] = {NAME = 'camdistance [num]', DESC = 'Changes camera distance from your player'}
CMDs[#CMDs + 1] = {NAME = 'fov [num]', DESC = 'Adjusts field of view (default is 70)'}
CMDs[#CMDs + 1] = {NAME = 'fixcam / restorecam', DESC = 'Fixes camera'}
CMDs[#CMDs + 1] = {NAME = 'enableshiftlock / enablesl', DESC = 'Enables the shift lock option'}
CMDs[#CMDs + 1] = {NAME = 'lookat [plr]', DESC = 'Moves your camera view to a player'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'btools (CLIENT)', DESC = 'Gives you building tools (DOES NOT REPLICATE)'}
CMDs[#CMDs + 1] = {NAME = 'f3x (CLIENT)', DESC = 'Gives you F3X building tools (DOES NOT REPLICATE)'}
CMDs[#CMDs + 1] = {NAME = 'partname / partpath', DESC = 'Allows you to click a part to see its path & name'}
CMDs[#CMDs + 1] = {NAME = 'delete [instance name] (CLIENT)', DESC = 'Removes any part with a certain name from the workspace (DOES NOT REPLICATE)'}
CMDs[#CMDs + 1] = {NAME = 'deleteclass / dc [class name] (CLIENT)', DESC = 'Removes any part with a certain classname from the workspace (DOES NOT REPLICATE)'}
CMDs[#CMDs + 1] = {NAME = 'lockworkspace / lockws', DESC = 'Locks the whole workspace'}
CMDs[#CMDs + 1] = {NAME = 'unlockworkspace / unlockws', DESC = 'Unlocks the whole workspace'}
CMDs[#CMDs + 1] = {NAME = 'invisibleparts / invisparts (CLIENT)', DESC = 'Shows invisible parts'}
CMDs[#CMDs + 1] = {NAME = 'uninvisibleparts / uninvisparts (CLIENT)', DESC = 'Makes parts affected by invisparts return to normal'}
CMDs[#CMDs + 1] = {NAME = 'deleteinvisparts / dip (CLIENT)', DESC = 'Deletes invisible parts'}
CMDs[#CMDs + 1] = {NAME = 'gotopart [part name]', DESC = 'Moves your character to a part or multiple parts'}
CMDs[#CMDs + 1] = {NAME = 'tweengotopart / tgotopart [part name]', DESC = 'Tweens your character to a part or multiple parts'}
CMDs[#CMDs + 1] = {NAME = 'gotopartclass / gpc [class name]', DESC = 'Moves your character to a part or multiple parts based on classname'}
CMDs[#CMDs + 1] = {NAME = 'tweengotopartclass / tgpc [class name]', DESC = 'Tweens your character to a part or multiple parts based on classname'}
CMDs[#CMDs + 1] = {NAME = 'gotomodel [part name]', DESC = 'Moves your character to a model or multiple models'}
CMDs[#CMDs + 1] = {NAME = 'tweengotomodel / tgotomodel [part name]', DESC = 'Tweens your character to a model or multiple models'}
CMDs[#CMDs + 1] = {NAME = 'gotopartdelay / gotomodeldelay [num]', DESC = 'Adjusts how quickly you teleport to each part (default is 0.1)'}
CMDs[#CMDs + 1] = {NAME = 'bringpart [part name] (CLIENT)', DESC = 'Moves a part or multiple parts to your character'}
CMDs[#CMDs + 1] = {NAME = 'bringpartclass / bpc [class name] (CLIENT)', DESC = 'Moves a part or multiple parts to your character based on classname'}
CMDs[#CMDs + 1] = {NAME = 'noclickdetectorlimits / nocdlimits', DESC = 'Sets all click detectors MaxActivationDistance to math.huge'}
CMDs[#CMDs + 1] = {NAME = 'fireclickdetectors / firecd [name]', DESC = 'Uses all click detectors in a game or uses the optional name'}
CMDs[#CMDs + 1] = {NAME = 'firetouchinterests / touchinterests [name]', DESC = 'Uses all touchinterests in a game or uses the optional name'}
CMDs[#CMDs + 1] = {NAME = 'noproximitypromptlimits / nopplimits', DESC = 'Sets all proximity prompts MaxActivationDistance to math.huge'}
CMDs[#CMDs + 1] = {NAME = 'fireproximityprompts / firepp [name]', DESC = 'Uses all proximity prompts in a game or uses the optional name'}
CMDs[#CMDs + 1] = {NAME = 'instantproximityprompts / instantpp', DESC = 'Disable the cooldown for proximity prompts'}
CMDs[#CMDs + 1] = {NAME = 'uninstantproximityprompts / uninstantpp', DESC = 'Undo the cooldown removal'}
CMDs[#CMDs + 1] = {NAME = 'tpunanchored / tpua [plr]', DESC = 'Teleports unanchored parts to a player'}
CMDs[#CMDs + 1] = {NAME = 'animsunanchored / freezeua', DESC = 'Freezes unanchored parts'}
CMDs[#CMDs + 1] = {NAME = 'thawunanchored / thawua / unfreezeua', DESC = 'Thaws unanchored parts'}
CMDs[#CMDs + 1] = {NAME = 'removeterrain / rterrain / noterrain', DESC = 'Removes all terrain'}
CMDs[#CMDs + 1] = {NAME = 'clearnilinstances / nonilinstances / cni', DESC = 'Removes nil instances'}
CMDs[#CMDs + 1] = {NAME = 'destroyheight / dh [num]', DESC = 'Sets FallenPartsDestroyHeight'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'fullbright / fb (CLIENT)', DESC = 'Makes the map brighter / more visible'}
CMDs[#CMDs + 1] = {NAME = 'loopfullbright / loopfb (CLIENT)', DESC = 'Makes the map brighter / more visible but looped'}
CMDs[#CMDs + 1] = {NAME = 'unloopfullbright / unloopfb', DESC = 'Unloops fullbright'}
CMDs[#CMDs + 1] = {NAME = 'ambient [num] [num] [num] (CLIENT)', DESC = 'Changes ambient'}
CMDs[#CMDs + 1] = {NAME = 'day (CLIENT)', DESC = 'Changes the time to day for the client'}
CMDs[#CMDs + 1] = {NAME = 'night (CLIENT)', DESC = 'Changes the time to night for the client'}
CMDs[#CMDs + 1] = {NAME = 'nofog (CLIENT)', DESC = 'Removes fog'}
CMDs[#CMDs + 1] = {NAME = 'brightness [num] (CLIENT)', DESC = 'Changes the brightness lighting property'}
CMDs[#CMDs + 1] = {NAME = 'globalshadows / gshadows (CLIENT)', DESC = 'Enables global shadows'}
CMDs[#CMDs + 1] = {NAME = 'noglobalshadows / nogshadows (CLIENT)', DESC = 'Disables global shadows'}
CMDs[#CMDs + 1] = {NAME = 'restorelighting / rlighting', DESC = 'Restores Lighting properties'}
CMDs[#CMDs + 1] = {NAME = 'light [radius] [brightness] (CLIENT)', DESC = 'Gives your player dynamic light'}
CMDs[#CMDs + 1] = {NAME = 'nolight / unlight', DESC = 'Removes dynamic light from your player'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'inspect / examine [plr]', DESC = 'Opens InspectMenu for a certain player'}
CMDs[#CMDs + 1] = {NAME = 'age [plr]', DESC = 'Tells you the age of a player'}
CMDs[#CMDs + 1] = {NAME = 'chatage [plr]', DESC = 'Chats the age of a player'}
CMDs[#CMDs + 1] = {NAME = 'joindate / jd [plr]', DESC = 'Tells you the date the player joined Roblox'}
CMDs[#CMDs + 1] = {NAME = 'chatjoindate / cjd [plr]', DESC = 'Chats the date the player joined Roblox'}
CMDs[#CMDs + 1] = {NAME = 'copyname / copyuser [plr]', DESC = 'Copies a players full username to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'userid / id [plr]', DESC = 'Notifies a players user ID'}
CMDs[#CMDs + 1] = {NAME = 'copyuserid / copyid [plr]', DESC = 'Copies a players user ID to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'appearanceid / aid [plr]', DESC = 'Notifies a players appearance ID'}
CMDs[#CMDs + 1] = {NAME = 'copyappearanceid / caid [plr]', DESC = 'Copies a players appearance ID to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'bang [plr] [speed]', DESC = 'owo'}
CMDs[#CMDs + 1] = {NAME = 'unbang', DESC = 'uwu'}
CMDs[#CMDs + 1] = {NAME = 'carpet [plr]', DESC = 'Be someones carpet'}
CMDs[#CMDs + 1] = {NAME = 'uncarpet', DESC = 'Undoes carpet'}
CMDs[#CMDs + 1] = {NAME = 'friend [plr]', DESC = 'Sends a friend request to certain players'}
CMDs[#CMDs + 1] = {NAME = 'unfriend [plr]', DESC = 'Unfriends certain players'}
CMDs[#CMDs + 1] = {NAME = 'headsit [plr]', DESC = 'Sit on a players head'}
CMDs[#CMDs + 1] = {NAME = 'walkto / follow [plr]', DESC = 'Follow a player'}
CMDs[#CMDs + 1] = {NAME = 'pathfindwalkto / pathfindfollow [plr]', DESC = 'Follow a player using pathfinding'}
CMDs[#CMDs + 1] = {NAME = 'pathfindwalktowaypoint / pathfindwalktowp [waypoint]', DESC = 'Walk to a waypoint using pathfinding'}
CMDs[#CMDs + 1] = {NAME = 'unwalkto / unfollow', DESC = 'Stops following a player'}
CMDs[#CMDs + 1] = {NAME = 'stareat / stare [plr]', DESC = 'Stare / look at a player'}
CMDs[#CMDs + 1] = {NAME = 'unstareat / unstare [plr]', DESC = 'Disables stareat'}
CMDs[#CMDs + 1] = {NAME = 'rolewatch [group id] [role name]', DESC = 'Notify if someone from a watched group joins the server'}
CMDs[#CMDs + 1] = {NAME = 'rolewatchstop / unrolewatch', DESC = 'Disable Rolewatch'}
CMDs[#CMDs + 1] = {NAME = 'rolewatchleave', DESC = 'Toggle if you should leave the game if someone from a watched group joins the server'}
CMDs[#CMDs + 1] = {NAME = 'attach [plr] (TOOL)', DESC = 'Attaches you to a player (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'kill [plr] (TOOL)', DESC = 'Kills a player (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'fastkill [plr] (TOOL)', DESC = 'Kills a player (less reliable) (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'handlekill / hkill [plr] (TOOL)', DESC = 'Kills a player using tool damage (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'bring [plr] (TOOL)', DESC = 'Brings a player (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'fastbring [plr] (TOOL)', DESC = 'Brings a player (less reliable) (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'teleport / tp [plr] [plr] (TOOL)', DESC = 'Teleports a player to another player (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'fastteleport / fasttp [plr] [plr] (TOOL)', DESC = 'Teleports a player to another player (less reliable) (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'fling', DESC = 'Flings anyone you touch'}
CMDs[#CMDs + 1] = {NAME = 'unfling', DESC = 'Disables the fling command'}
CMDs[#CMDs + 1] = {NAME = 'invisfling', DESC = 'Enables invisible fling'}
CMDs[#CMDs + 1] = {NAME = 'loopoof', DESC = 'Loops everyones character sounds (everyone can hear)'}
CMDs[#CMDs + 1] = {NAME = 'unloopoof', DESC = 'Stops the oof chaos'}
CMDs[#CMDs + 1] = {NAME = 'muteboombox [plr]', DESC = 'Mutes someones boombox'}
CMDs[#CMDs + 1] = {NAME = 'unmuteboombox [plr]', DESC = 'Unmutes someones boombox'}
CMDs[#CMDs + 1] = {NAME = 'hitbox [plr] [size]', DESC = 'Expands the hitbox for players HumanoidRootPart (default is 1)'}
CMDs[#CMDs + 1] = {NAME = 'headsize [plr] [size]', DESC = 'Expands the head size for players Head (default is 1)'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'reset', DESC = 'Resets your character normally'}
CMDs[#CMDs + 1] = {NAME = 'respawn', DESC = 'Respawns you'}
CMDs[#CMDs + 1] = {NAME = 'refresh / re', DESC = 'Respawns and brings you back to the same position'}
CMDs[#CMDs + 1] = {NAME = 'god', DESC = 'Makes your character difficult to kill in most games'}
CMDs[#CMDs + 1] = {NAME = 'invisible / invis', DESC = 'Makes you invisible to other players'}
CMDs[#CMDs + 1] = {NAME = 'visible / vis', DESC = 'Makes you visible to other players'}
CMDs[#CMDs + 1] = {NAME = 'toolinvisible / toolinvis / tinvis', DESC = 'Makes you invisible to other players and able to use tools'}
CMDs[#CMDs + 1] = {NAME = 'speed / ws / walkspeed [num]', DESC = 'Change your walkspeed'}
CMDs[#CMDs + 1] = {NAME = 'spoofspeed / spoofws [num]', DESC = 'Spoofs your WalkSpeed on the Client'}
CMDs[#CMDs + 1] = {NAME = 'loopspeed / loopws [num]', DESC = 'Loops your walkspeed'}
CMDs[#CMDs + 1] = {NAME = 'unloopspeed / unloopws', DESC = 'Turns off loopspeed'}
CMDs[#CMDs + 1] = {NAME = 'hipheight / hheight [num]', DESC = 'Adjusts hip height'}
CMDs[#CMDs + 1] = {NAME = 'jumppower / jpower / jp [num]', DESC = 'Change a players jump height'}
CMDs[#CMDs + 1] = {NAME = 'spoofjumppower / spoofjp [num]', DESC = 'Spoofs your JumpPower on the Client'}
CMDs[#CMDs + 1] = {NAME = 'loopjumppower / loopjp [num]', DESC = 'Loops your jump height'}
CMDs[#CMDs + 1] = {NAME = 'unloopjumppower / unloopjp', DESC = 'Turns off loopjumppower'}
CMDs[#CMDs + 1] = {NAME = 'maxslopeangle / msa [num]', DESC = 'Adjusts MaxSlopeAngle'}
CMDs[#CMDs + 1] = {NAME = 'gravity / grav [num] (CLIENT)', DESC = 'Change your gravity'}
CMDs[#CMDs + 1] = {NAME = 'sit', DESC = 'Makes your character sit'}
CMDs[#CMDs + 1] = {NAME = 'lay / laydown', DESC = 'Makes your character lay down'}
CMDs[#CMDs + 1] = {NAME = 'sitwalk', DESC = 'Makes your character sit while still being able to walk'}
CMDs[#CMDs + 1] = {NAME = 'nosit', DESC = 'Prevents your character from sitting'}
CMDs[#CMDs + 1] = {NAME = 'unnosit', DESC = 'Disables nosit'}
CMDs[#CMDs + 1] = {NAME = 'jump', DESC = 'Makes your character jump'}
CMDs[#CMDs + 1] = {NAME = 'infinitejump / infjump', DESC = 'Allows you to jump before hitting the ground'}
CMDs[#CMDs + 1] = {NAME = 'uninfinitejump / uninfjump', DESC = 'Disables infjump'}
CMDs[#CMDs + 1] = {NAME = 'flyjump', DESC = 'Allows you to hold space to fly up'}
CMDs[#CMDs + 1] = {NAME = 'unflyjump', DESC = 'Disables flyjump'}
CMDs[#CMDs + 1] = {NAME = 'autojump / ajump', DESC = 'Automatically jumps when you run into an object'}
CMDs[#CMDs + 1] = {NAME = 'unautojump / unajump', DESC = 'Disables autojump'}
CMDs[#CMDs + 1] = {NAME = 'edgejump / ejump', DESC = 'Automatically jumps when you get to the edge of an object'}
CMDs[#CMDs + 1] = {NAME = 'unedgejump / unejump', DESC = 'Disables edgejump'}
CMDs[#CMDs + 1] = {NAME = 'platformstand / stun', DESC = 'Enables PlatformStand'}
CMDs[#CMDs + 1] = {NAME = 'unplatformstand / unstun', DESC = 'Disables PlatformStand'}
CMDs[#CMDs + 1] = {NAME = 'norotate / noautorotate', DESC = 'Disables AutoRotate'}
CMDs[#CMDs + 1] = {NAME = 'unnorotate / autorotate', DESC = 'Enables AutoRotate'}
CMDs[#CMDs + 1] = {NAME = 'enablestate [StateType]', DESC = 'Enables a humanoid state type'}
CMDs[#CMDs + 1] = {NAME = 'disablestate [StateType]', DESC = 'Disables a humanoid state type'}
CMDs[#CMDs + 1] = {NAME = 'team [team name] (CLIENT)', DESC = 'Changes your team. Sometimes fools localscripts.'}
CMDs[#CMDs + 1] = {NAME = 'nobillboardgui / nobgui / noname', DESC = 'Removes billboard and surface guis from your players (i.e. name guis at cafes)'}
CMDs[#CMDs + 1] = {NAME = 'loopnobgui / loopnoname', DESC = 'Loop removes billboard and surface guis from your players (i.e. name guis at cafes)'}
CMDs[#CMDs + 1] = {NAME = 'unloopnobgui / unloopnoname', DESC = 'Disables loopnobgui'}
CMDs[#CMDs + 1] = {NAME = 'nohead / headless', DESC = 'Removes your head (uses simulation radius)'}
CMDs[#CMDs + 1] = {NAME = 'noarms', DESC = 'Removes your arms'}
CMDs[#CMDs + 1] = {NAME = 'nolegs', DESC = 'Removes your legs'}
CMDs[#CMDs + 1] = {NAME = 'nolimbs', DESC = 'Removes your limbs'}
CMDs[#CMDs + 1] = {NAME = 'naked (CLIENT)', DESC = 'Removes your clothing'}
CMDs[#CMDs + 1] = {NAME = 'noface / removeface', DESC = 'Removes your face'}
CMDs[#CMDs + 1] = {NAME = 'blockhead', DESC = 'Turns your head into a block'}
CMDs[#CMDs + 1] = {NAME = 'blockhats', DESC = 'Turns your hats into blocks'}
CMDs[#CMDs + 1] = {NAME = 'blocktool', DESC = 'Turns the currently selected tool into a block'}
CMDs[#CMDs + 1] = {NAME = 'creeper', DESC = 'Makes you look like a creeper'}
CMDs[#CMDs + 1] = {NAME = 'drophats', DESC = 'Drops your hats'}
CMDs[#CMDs + 1] = {NAME = 'nohats / deletehats / rhats', DESC = 'Deletes your hats'}
CMDs[#CMDs + 1] = {NAME = 'hatspin / spinhats', DESC = 'Spins your characters accessories'}
CMDs[#CMDs + 1] = {NAME = 'unhatspin / unspinhats', DESC = 'Undoes spinhats'}
CMDs[#CMDs + 1] = {NAME = 'clearhats / cleanhats', DESC = 'Clears hats in the workspace'}
CMDs[#CMDs + 1] = {NAME = 'chardelete / cd [instance name]', DESC = 'Removes any part with a certain name from your character'}
CMDs[#CMDs + 1] = {NAME = 'chardeleteclass / cdc [class name]', DESC = 'Removes any part with a certain classname from your character'}
CMDs[#CMDs + 1] = {NAME = 'deletevelocity / dv / removeforces', DESC = 'Removes any velocity / force instances in your character'}
CMDs[#CMDs + 1] = {NAME = 'weaken [num]', DESC = 'Makes your character less dense'}
CMDs[#CMDs + 1] = {NAME = 'unweaken', DESC = 'Sets your characters CustomPhysicalProperties to default'}
CMDs[#CMDs + 1] = {NAME = 'strengthen [num]', DESC = 'Makes your character more dense (CustomPhysicalProperties)'}
CMDs[#CMDs + 1] = {NAME = 'unstrengthen', DESC = 'Sets your characters CustomPhysicalProperties to default'}
CMDs[#CMDs + 1] = {NAME = 'breakvelocity', DESC = 'Sets your characters velocity to 0'}
CMDs[#CMDs + 1] = {NAME = 'spin [speed]', DESC = 'Spins your character'}
CMDs[#CMDs + 1] = {NAME = 'unspin', DESC = 'Disables spin'}
CMDs[#CMDs + 1] = {NAME = 'vr', DESC = 'Loads CLOVR by Abacaxl'}
CMDs[#CMDs + 1] = {NAME = 'split', DESC = 'Splits your character in half'}
CMDs[#CMDs + 1] = {NAME = 'nilchar', DESC = 'Sets your characters parent to nil'}
CMDs[#CMDs + 1] = {NAME = 'unnilchar / nonilchar', DESC = 'Sets your characters parent to workspace'}
CMDs[#CMDs + 1] = {NAME = 'noroot / removeroot / rroot', DESC = 'Removes your characters HumanoidRootPart'}
CMDs[#CMDs + 1] = {NAME = 'replaceroot', DESC = 'Replaces your characters HumanoidRootPart'}
CMDs[#CMDs + 1] = {NAME = 'clearcharappearance / clearchar / clrchar', DESC = 'Removes all accessory, shirt, pants, charactermesh, and bodycolors'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'animation / anim [ID] [speed]', DESC = 'Makes your character perform an animation (must be by roblox to replicate)'}
CMDs[#CMDs + 1] = {NAME = 'dance', DESC = 'Makes you  d a n c e'}
CMDs[#CMDs + 1] = {NAME = 'undance', DESC = 'Stops dance animations'}
CMDs[#CMDs + 1] = {NAME = 'spasm', DESC = 'Makes you  c r a z y'}
CMDs[#CMDs + 1] = {NAME = 'unspasm', DESC = 'Stops spasm'}
CMDs[#CMDs + 1] = {NAME = 'headthrow', DESC = 'Simply makes you throw your head'}
CMDs[#CMDs + 1] = {NAME = 'noanim', DESC = 'Disables your animations'}
CMDs[#CMDs + 1] = {NAME = 'reanim', DESC = 'Restores your animations'}
CMDs[#CMDs + 1] = {NAME = 'animspeed [num]', DESC = 'Changes the speed of your current animation'}
CMDs[#CMDs + 1] = {NAME = 'copyanimation / copyanim / copyemote [plr]', DESC = 'Copies someone elses animation'}
CMDs[#CMDs + 1] = {NAME = 'loopanimation / loopanim', DESC = 'Loops your current animation'}
CMDs[#CMDs + 1] = {NAME = 'stopanimations / stopanims', DESC = 'Stops running animations'}
CMDs[#CMDs + 1] = {NAME = 'refreshanimations / refreshanims', DESC = 'Refreshes animations'}
CMDs[#CMDs + 1] = {NAME = 'allowcustomanim / allowcustomanimations', DESC = 'Lets you use custom animation packs instead'}
CMDs[#CMDs + 1] = {NAME = 'unallowcustomanim / unallowcustomanimations', DESC = 'Doesn\'t let you use custom animation packs instead'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'autoclick [click delay] [release delay]', DESC = 'Automatically clicks your mouse with a set delay'}
CMDs[#CMDs + 1] = {NAME = 'unautoclick / noautoclick', DESC = 'Turns off autoclick'}
CMDs[#CMDs + 1] = {NAME = 'autokeypress [key] [down delay] [up delay]', DESC = 'Automatically presses a key with a set delay'}
CMDs[#CMDs + 1] = {NAME = 'unautokeypress', DESC = 'Stops autokeypress'}
CMDs[#CMDs + 1] = {NAME = 'hovername', DESC = 'Shows a players username when your mouse is hovered over them'}
CMDs[#CMDs + 1] = {NAME = 'unhovername / nohovername', DESC = 'Turns off hovername'}
CMDs[#CMDs + 1] = {NAME = 'mousesensitivity / ms [0-10]', DESC = 'Sets your mouse sensitivity (affects first person and right click drag) (default is 1)'}
CMDs[#CMDs + 1] = {NAME = 'clickdelete', DESC = 'Go to settings>Keybinds>Add for clicktp'}
CMDs[#CMDs + 1] = {NAME = 'clickteleport', DESC = 'Go to settings>Keybinds>Add for click tp'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'tools', DESC = 'Copies tools from ReplicatedStorage and Lighting'}
CMDs[#CMDs + 1] = {NAME = 'notools / removetools / deletetools', DESC = 'Removes tools from character and backpack'}
CMDs[#CMDs + 1] = {NAME = 'deleteselectedtool / dst', DESC = 'Removes any currently selected tools'}
CMDs[#CMDs + 1] = {NAME = 'grabtools', DESC = 'Automatically get tools that are dropped'}
CMDs[#CMDs + 1] = {NAME = 'ungrabtools / nograbtools', DESC = 'Disables grabtools'}
CMDs[#CMDs + 1] = {NAME = 'copytools [plr] (CLIENT)', DESC = 'Copies a players tools'}
CMDs[#CMDs + 1] = {NAME = 'dupetools / clonetools [num]', DESC = 'Duplicates your inventory tools a set ammount of times'}
CMDs[#CMDs + 1] = {NAME = 'givetool / givetools', DESC = 'Gives all the tools you\'re holding to [plr] using the attach method.'}
CMDs[#CMDs + 1] = {NAME = 'droptools', DESC = 'Drops your tools'}
CMDs[#CMDs + 1] = {NAME = 'droppabletools', DESC = 'Makes your tools droppable'}
CMDs[#CMDs + 1] = {NAME = 'equiptools', DESC = 'Equips every tool in your inventory at once'}
CMDs[#CMDs + 1] = {NAME = 'unequiptools', DESC = 'Unequips every tool you are currently holding at once'}
CMDs[#CMDs + 1] = {NAME = 'removespecifictool [name]', DESC = 'Automatically remove a specific tool from your inventory'}
CMDs[#CMDs + 1] = {NAME = 'unremovespecifictool [name]', DESC = 'Stops removing a specific tool from your inventory'}
CMDs[#CMDs + 1] = {NAME = 'clearremovespecifictool', DESC = 'Stop removing all specific tools from your inventory'}
CMDs[#CMDs + 1] = {NAME = 'reach [num]', DESC = 'Increases the hitbox of your held tool'}
CMDs[#CMDs + 1] = {NAME = 'unreach / noreach', DESC = 'Turns off reach'}
CMDs[#CMDs + 1] = {NAME = 'grippos [X Y Z]', DESC = 'Changes your current tools grip position'}
CMDs[#CMDs + 1] = {NAME = 'usetools [ammount] [delay]', DESC = 'Activates all tools in your backpack at the same time'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'addalias [cmd] [alias]', DESC = 'Adds an alias to a command'}
CMDs[#CMDs + 1] = {NAME = 'removealias [alias]', DESC = 'Removes a custom alias'}
CMDs[#CMDs + 1] = {NAME = 'clraliases', DESC = 'Removes all custom aliases'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'addplugin / plugin [name]', DESC = 'Add a plugin via command'}
CMDs[#CMDs + 1] = {NAME = 'removeplugin / deleteplugin [name]', DESC = 'Remove a plugin via command'}
CMDs[#CMDs + 1] = {NAME = 'reloadplugin [name]', DESC = 'Reloads a plugin'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'breakloops / break (cmd loops)', DESC = 'Stops any cmd loops (;100^1^cmd)'}
CMDs[#CMDs + 1] = {NAME = 'removecmd / deletecmd', DESC = 'Removes a command until the admin is reloaded'}
CMDs[#CMDs + 1] = {NAME = 'tpwalk / teleportwalk [num]', DESC = 'Teleports you to your move direction'}
CMDs[#CMDs + 1] = {NAME = 'untpwalk / unteleportwalk', DESC = 'Undoes tpwalk / teleportwalk'}
CMDs[#CMDs + 1] = {NAME = 'notifyping / ping', DESC = 'Notify yourself your ping'}
CMDs[#CMDs + 1] = {NAME = 'trip', DESC = 'Makes your character fall over'}
CMDs[#CMDs + 1] = {NAME = 'norender', DESC = 'Disable 3d Rendering to decrease the amount of CPU the client uses'}
CMDs[#CMDs + 1] = {NAME = 'render', DESC = 'Enable 3d Rendering'}
CMDs[#CMDs + 1] = {NAME = 'use2022materials / 2022materials', DESC = 'Enables 2022 material textures'}
CMDs[#CMDs + 1] = {NAME = 'unuse2022materials / un2022materials', DESC = 'Disables 2022 material textures'}
-- New Dark Networks Commands
CMDs[#CMDs + 1] = {NAME = 'nolighting / nolight', DESC = 'Disables all lighting in the game'}
wait()

for i = 1, #CMDs do
	local newcmd = Example:Clone()
	newcmd.Parent = CMDsF
	newcmd.Visible = false
	newcmd.Text = CMDs[i].NAME
	newcmd.Name = 'CMD'
	table.insert(text1,newcmd)
	if CMDs[i].DESC ~= '' then
		newcmd:SetAttribute("Title", CMDs[i].NAME)
		newcmd:SetAttribute("Desc", CMDs[i].DESC)
		newcmd.MouseButton1Down:Connect(function()
			if newcmd.Visible and newcmd.TextTransparency == 0 then
				local currentText = Cmdbar.Text
				Cmdbar:CaptureFocus()
				autoComplete(newcmd.Text,currentText)
				maximizeHolder()
			end
		end)
	end
end

IndexContents('',true)

function checkTT()
	local t
	local guisAtPosition = COREGUI:GetGuiObjectsAtPosition(IYMouse.X, IYMouse.Y)

	for _, gui in pairs(guisAtPosition) do
		if gui.Parent == CMDsF then
			t = gui
		end
	end

	if t ~= nil and t:GetAttribute("Title") ~= nil then
		local x = IYMouse.X
		local y = IYMouse.Y
		local xP
		local yP
		if IYMouse.X > 200 then
			xP = x - 201
		else
			xP = x + 21
		end
		if IYMouse.Y > (IYMouse.ViewSizeY-96) then
			yP = y - 97
		else
			yP = y
		end
		Tooltip.Position = UDim2.new(0, xP, 0, yP)
		Description.Text = t:GetAttribute("Desc")
		if t:GetAttribute("Title") ~= nil then
			Title_3.Text = t:GetAttribute("Title")
		else
			Title_3.Text = ''
		end
		Tooltip.Visible = true
	else
		Tooltip.Visible = false
	end
end

function FindInTable(tbl,val)
	if tbl == nil then return false end
	for _,v in pairs(tbl) do
		if v == val then return true end
	end 
	return false
end

function GetInTable(Table, Name)
	for i = 1, #Table do
		if Table[i] == Name then
			return i
		end
	end
	return false
end

function respawn(plr)
	if invisRunning then TurnVisible() end
	local char = plr.Character
	if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
	char:ClearAllChildren()
	local newChar = Instance.new("Model")
	newChar.Parent = workspace
	plr.Character = newChar
	wait()
	plr.Character = char
	newChar:Destroy()
end

local refreshCmd = false
function refresh(plr)
	refreshCmd = true
	local Human = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid", true)
	local pos = Human and Human.RootPart and Human.RootPart.CFrame
	local pos1 = workspace.CurrentCamera.CFrame
	respawn(plr)
	task.spawn(function()
		plr.CharacterAdded:Wait():WaitForChild("Humanoid").RootPart.CFrame, workspace.CurrentCamera.CFrame = pos, wait() and pos1
		refreshCmd = false
	end)
end

local lastDeath

function onDied()
	task.spawn(function()
		if pcall(function() Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') end) and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
			Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
				if getRoot(Players.LocalPlayer.Character) then
					lastDeath = getRoot(Players.LocalPlayer.Character).CFrame
				end
			end)
		else
			wait(2)
			onDied()
		end
	end)
end

Clip = true
spDelay = 0.1
Players.LocalPlayer.CharacterAdded:Connect(function()
	NOFLY()
	Floating = false

	if not Clip then
		execCmd('clip')
	end

	repeat wait() until getRoot(Players.LocalPlayer.Character)

	pcall(function()
		if spawnpoint and not refreshCmd and spawnpos ~= nil then
			wait(spDelay)
			getRoot(Players.LocalPlayer.Character).CFrame = spawnpos
		end
	end)

	onDied()
end)

onDied()

function getstring(begin)
	local start = begin-1
	local AA = '' for i,v in pairs(cargs) do
		if i > start then
			if AA ~= '' then
				AA = AA .. ' ' .. v
			else
				AA = AA .. v
			end
		end
	end
	return AA
end

findCmd=function(cmd_name)
	for i,v in pairs(cmds)do
		if v.NAME:lower()==cmd_name:lower() or FindInTable(v.ALIAS,cmd_name:lower()) then
			return v
		end
	end
	return customAlias[cmd_name:lower()]
end

function splitString(str,delim)
	local broken = {}
	if delim == nil then delim = "," end
	for w in string.gmatch(str,"[^"..delim.."]+") do
		table.insert(broken,w)
	end
	return broken
end

cmdHistory = {}
local lastCmds = {}
local historyCount = 0
local split=" "
local lastBreakTime = 0
function execCmd(cmdStr,speaker,store)
	cmdStr = cmdStr:gsub("%s+$","")
	task.spawn(function()
		local rawCmdStr = cmdStr
		cmdStr = string.gsub(cmdStr,"\\\\","%%BackSlash%%")
		local commandsToRun = splitString(cmdStr,"\\")
		for i,v in pairs(commandsToRun) do
			v = string.gsub(v,"%%BackSlash%%","\\")
			local x,y,num = v:find("^(%d+)%^")
			local cmdDelay = 0
			local infTimes = false
			if num then
				v = v:sub(y+1)
				local x,y,del = v:find("^([%d%.]+)%^")
				if del then
					v = v:sub(y+1)
					cmdDelay = tonumber(del) or 0
				end
			else
				local x,y = v:find("^inf%^")
				if x then
					infTimes = true
					v = v:sub(y+1)
					local x,y,del = v:find("^([%d%.]+)%^")
					if del then
						v = v:sub(y+1)
						del = tonumber(del) or 1
						cmdDelay = (del > 0 and del or 1)
					else
						cmdDelay = 1
					end
				end
			end
			num = tonumber(num or 1)

			if v:sub(1,1) == "!" then
				local chunks = splitString(v:sub(2),split)
				if chunks[1] and lastCmds[chunks[1]] then v = lastCmds[chunks[1]] end
			end

			local args = splitString(v,split)
			local cmdName = args[1]
			local cmd = findCmd(cmdName)
			if cmd then
				table.remove(args,1)
				cargs = args
				if not speaker then speaker = Players.LocalPlayer end
				if store then
					if speaker == Players.LocalPlayer then
						if cmdHistory[1] ~= rawCmdStr and rawCmdStr:sub(1,11) ~= 'lastcommand' and rawCmdStr:sub(1,7) ~= 'lastcmd' then
							table.insert(cmdHistory,1,rawCmdStr)
						end
					end
					if #cmdHistory > 30 then table.remove(cmdHistory) end

					lastCmds[cmdName] = v
				end
				local cmdStartTime = tick()
				if infTimes then
					while lastBreakTime < cmdStartTime do
						local success,err = pcall(cmd.FUNC,args, speaker)
						if not success and _G.IY_DEBUG then
							warn("Command Error:", cmdName, err)
						end
						wait(cmdDelay)
					end
				else
					for rep = 1,num do
						if lastBreakTime > cmdStartTime then break end
						local success,err = pcall(function()
							cmd.FUNC(args, speaker)
						end)
						if not success and _G.IY_DEBUG then
							warn("Command Error:", cmdName, err)
						end
						if cmdDelay ~= 0 then wait(cmdDelay) end
					end
				end
			end
		end
	end)
end	

function addcmd(name,alias,func,plgn)
	cmds[#cmds+1]=
		{
			NAME=name;
			ALIAS=alias or {};
			FUNC=func;
			PLUGIN=plgn;
		}
end

function removecmd(cmd)
	if cmd ~= " " then
		for i = #cmds,1,-1 do
			if cmds[i].NAME == cmd or FindInTable(cmds[i].ALIAS,cmd) then
				table.remove(cmds, i)
				for a,c in pairs(CMDsF:GetChildren()) do
					if string.find(c.Text, "^"..cmd.."$") or string.find(c.Text, "^"..cmd.." ") or string.find(c.Text, " "..cmd.."$") or string.find(c.Text, " "..cmd.." ") then
						c.TextTransparency = 0.7
						c.MouseButton1Click:Connect(function()
							notify(c.Text, "Command has been disabled by you or a plugin")
						end)
					end
				end
			end
		end
	end
end

function addbind(cmd,key,iskeyup,toggle)
	if toggle then
		binds[#binds+1]=
			{
				COMMAND=cmd;
				KEY=key;
				ISKEYUP=iskeyup;
				TOGGLE = toggle;
			}
	else
		binds[#binds+1]=
			{
				COMMAND=cmd;
				KEY=key;
				ISKEYUP=iskeyup;
			}
	end
end

function addcmdtext(text,name,desc)
	local newcmd = Example:Clone()
	local tooltipText = tostring(text)
	local tooltipDesc = tostring(desc)
	newcmd.Parent = CMDsF
	newcmd.Visible = false
	newcmd.Text = text
	newcmd.Name = 'PLUGIN_'..name
	table.insert(text1,newcmd)
	if desc and desc ~= '' then
		newcmd:SetAttribute("Title", tooltipText)
		newcmd:SetAttribute("Desc", tooltipDesc)
		newcmd.MouseButton1Down:Connect(function()
			if newcmd.Visible and newcmd.TextTransparency == 0 then
				Cmdbar:CaptureFocus()
				autoComplete(newcmd.Text)
				maximizeHolder()
			end
		end)
	end
end

local WorldToScreen = function(Object)
	local ObjectVector = workspace.CurrentCamera:WorldToScreenPoint(Object.Position)
	return Vector2.new(ObjectVector.X, ObjectVector.Y)
end

local MousePositionToVector2 = function()
	return Vector2.new(IYMouse.X, IYMouse.Y)
end

local GetClosestPlayerFromCursor = function()
	local found = nil
	local ClosestDistance = math.huge
	for i, v in pairs(Players:GetPlayers()) do
		if v ~= Players.LocalPlayer and v.Character and v.Character:FindFirstChildOfClass("Humanoid") then
			for k, x in pairs(v.Character:GetChildren()) do
				if string.find(x.Name, "Torso") then
					local Distance = (WorldToScreen(x) - MousePositionToVector2()).Magnitude
					if Distance < ClosestDistance then
						ClosestDistance = Distance
						found = v
					end
				end
			end
		end
	end
	return found
end

SpecialPlayerCases = {
	["all"] = function(speaker) return Players:GetPlayers() end,
	["others"] = function(speaker)
		local plrs = {}
		for i,v in pairs(Players:GetPlayers()) do
			if v ~= speaker then
				table.insert(plrs,v)
			end
		end
		return plrs
	end,
	["me"] = function(speaker)return {speaker} end,
	["#(%d+)"] = function(speaker,args,currentList)
		local returns = {}
		local randAmount = tonumber(args[1])
		local players = {unpack(currentList)}
		for i = 1,randAmount do
			if #players == 0 then break end
			local randIndex = math.random(1,#players)
			table.insert(returns,players[randIndex])
			table.remove(players,randIndex)
		end
		return returns
	end,
	["random"] = function(speaker,args,currentList)
		local players = Players:GetPlayers()
		local localplayer = Players.LocalPlayer
		table.remove(players, table.find(players, localplayer))
		return {players[math.random(1,#players)]}
	end,
	["%%(.+)"] = function(speaker,args)
		local returns = {}
		local team = args[1]
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team and string.sub(string.lower(plr.Team.Name),1,#team) == string.lower(team) then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["allies"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team == team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["enemies"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team ~= team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["team"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team == team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nonteam"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team ~= team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["friends"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nonfriends"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if not plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["guests"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Guest then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["bacons"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character:FindFirstChild('Pal Hair') or plr.Character:FindFirstChild('Kate Hair') then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["age(%d+)"] = function(speaker,args)
		local returns = {}
		local age = tonumber(args[1])
		if not age == nil then return end
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.AccountAge <= age then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nearest"] = function(speaker,args,currentList)
		local speakerChar = speaker.Character
		if not speakerChar or not getRoot(speakerChar) then return end
		local lowest = math.huge
		local NearestPlayer = nil
		for _,plr in pairs(currentList) do
			if plr ~= speaker and plr.Character then
				local distance = plr:DistanceFromCharacter(getRoot(speakerChar).Position)
				if distance < lowest then
					lowest = distance
					NearestPlayer = {plr}
				end
			end
		end
		return NearestPlayer
	end,
	["farthest"] = function(speaker,args,currentList)
		local speakerChar = speaker.Character
		if not speakerChar or not getRoot(speakerChar) then return end
		local highest = 0
		local Farthest = nil
		for _,plr in pairs(currentList) do
			if plr ~= speaker and plr.Character then
				local distance = plr:DistanceFromCharacter(getRoot(speakerChar).Position)
				if distance > highest then
					highest = distance
					Farthest = {plr}
				end
			end
		end
		return Farthest
	end,
	["group(%d+)"] = function(speaker,args)
		local returns = {}
		local groupID = tonumber(args[1])
		for _,plr in pairs(Players:GetPlayers()) do
			if plr:IsInGroup(groupID) then  
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["alive"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["dead"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if (not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid")) or plr.Character:FindFirstChildOfClass("Humanoid").Health <= 0 then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["rad(%d+)"] = function(speaker,args)
		local returns = {}
		local radius = tonumber(args[1])
		local speakerChar = speaker.Character
		if not speakerChar or not getRoot(speakerChar) then return end
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character and getRoot(plr.Character) then
				local magnitude = (getRoot(plr.Character).Position-getRoot(speakerChar).Position).magnitude
				if magnitude <= radius then table.insert(returns,plr) end
			end
		end
		return returns
	end,
	["cursor"] = function(speaker)
		local plrs = {}
		local v = GetClosestPlayerFromCursor()
		if v ~= nil then table.insert(plrs, v) end
		return plrs
	end,
    ["npcs"] = function(speaker,args)
		local returns = {}
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Model") and getRoot(v) and v:FindFirstChildWhichIsA("Humanoid") and Players:GetPlayerFromCharacter(v) == nil then
                local clone = Instance.new("Player")
                clone.Name = v.Name .. " - " .. v:FindFirstChildWhichIsA("Humanoid").DisplayName
                clone.Character = v
                table.insert(returns, clone)
            end
        end
		return returns
	end,
}

function toTokens(str)
	local tokens = {}
	for op,name in string.gmatch(str,"([+-])([^+-]+)") do
		table.insert(tokens,{Operator = op,Name = name})
	end
	return tokens
end

function onlyIncludeInTable(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end

function removeTableMatches(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if not matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end

function getPlayersByName(Name)
	local Name,Len,Found = string.lower(Name),#Name,{}
	for _,v in pairs(Players:GetPlayers()) do
		if Name:sub(0,1) == '@' then
			if string.sub(string.lower(v.Name),1,Len-1) == Name:sub(2) then
				table.insert(Found,v)
			end
		else
			if string.sub(string.lower(v.Name),1,Len) == Name or string.sub(string.lower(v.DisplayName),1,Len) == Name then
				table.insert(Found,v)
			end
		end
	end
	return Found
end

function getPlayer(list,speaker)
	if list == nil then return {speaker.Name} end
	local nameList = splitString(list,",")

	local foundList = {}

	for _,name in pairs(nameList) do
		if string.sub(name,1,1) ~= "+" and string.sub(name,1,1) ~= "-" then name = "+"..name end
		local tokens = toTokens(name)
		local initialPlayers = Players:GetPlayers()

		for i,v in pairs(tokens) do
			if v.Operator == "+" then
				local tokenContent = v.Name
				local foundCase = false
				for regex,case in pairs(SpecialPlayerCases) do
					local matches = {string.match(tokenContent,"^"..regex.."$")}
					if #matches > 0 then
						foundCase = true
						initialPlayers = onlyIncludeInTable(initialPlayers,case(speaker,matches,initialPlayers))
					end
				end
				if not foundCase then
					initialPlayers = onlyIncludeInTable(initialPlayers,getPlayersByName(tokenContent))
				end
			else
				local tokenContent = v.Name
				local foundCase = false
				for regex,case in pairs(SpecialPlayerCases) do
					local matches = {string.match(tokenContent,"^"..regex.."$")}
					if #matches > 0 then
						foundCase = true
						initialPlayers = removeTableMatches(initialPlayers,case(speaker,matches,initialPlayers))
					end
				end
				if not foundCase then
					initialPlayers = removeTableMatches(initialPlayers,getPlayersByName(tokenContent))
				end
			end
		end

		for i,v in pairs(initialPlayers) do table.insert(foundList,v) end
	end

	local foundNames = {}
	for i,v in pairs(foundList) do table.insert(foundNames,v.Name) end

	return foundNames
end

getprfx=function(strn)
	if strn:sub(1,string.len(prefix))==prefix then return{'cmd',string.len(prefix)+1}
	end return
end

function do_exec(str, plr)
	str = str:gsub('/e ', '')
	local t = getprfx(str)
	if not t then return end
	str = str:sub(t[2])
	if t[1]=='cmd' then
		execCmd(str, plr, true)
		IndexContents('',true,false,true)
		CMDsF.CanvasPosition = canvasPos
	end
end

lastTextBoxString,lastTextBoxCon,lastEnteredString = nil,nil,nil

UserInputService.TextBoxFocused:Connect(function(obj)
	if lastTextBoxCon then lastTextBoxCon:Disconnect() end
	if obj == Cmdbar then lastTextBoxString = nil return end
	lastTextBoxString = obj.Text
	lastTextBoxCon = obj:GetPropertyChangedSignal("Text"):Connect(function()
		if not (UserInputService:IsKeyDown(Enum.KeyCode.Return) or UserInputService:IsKeyDown(Enum.KeyCode.KeypadEnter)) then
			lastTextBoxString = obj.Text
		end
	end)
end)

UserInputService.InputBegan:Connect(function(input,gameProcessed)
	if gameProcessed then
		if Cmdbar and Cmdbar:IsFocused() then
			if input.KeyCode == Enum.KeyCode.Up then
				historyCount = historyCount + 1
				if historyCount > #cmdHistory then historyCount = #cmdHistory end
				Cmdbar.Text = cmdHistory[historyCount] or ""
				Cmdbar.CursorPosition = 1020
			elseif input.KeyCode == Enum.KeyCode.Down then
				historyCount = historyCount - 1
				if historyCount < 0 then historyCount = 0 end
				Cmdbar.Text = cmdHistory[historyCount] or ""
				Cmdbar.CursorPosition = 1020
			end
		elseif input.KeyCode == Enum.KeyCode.Return or input.KeyCode == Enum.KeyCode.KeypadEnter then
			lastEnteredString = lastTextBoxString
		end
	end
end)

Players.LocalPlayer.Chatted:Connect(function()
	wait()
	if lastEnteredString then
		local message = lastEnteredString
		lastEnteredString = nil
		do_exec(message, Players.LocalPlayer)
	end
end)

Cmdbar.PlaceholderText = "Command Bar ("..prefix..")"
Cmdbar:GetPropertyChangedSignal("Text"):Connect(function()
	if Cmdbar:IsFocused() then
		IndexContents(Cmdbar.Text,true,true)
	end
end)

local tabComplete = nil
tabAllowed = true
Cmdbar.FocusLost:Connect(function(enterpressed)
	if enterpressed then
		local cmdbarText = Cmdbar.Text:gsub("^"..prefix,"")
		execCmd(cmdbarText,Players.LocalPlayer,true)
	end
	if tabComplete then tabComplete:Disconnect() end
	wait()
	if not Cmdbar:IsFocused() then
		Cmdbar.Text = ""
		IndexContents('',true,false,true)
		if SettingsOpen == true then
			wait(0.2)
			Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.2, true, nil)
			CMDsF.Visible = false
		end
	end
	CMDsF.CanvasPosition = canvasPos
end)

Cmdbar.Focused:Connect(function()
	historyCount = 0
	canvasPos = CMDsF.CanvasPosition
	if SettingsOpen == true then
		wait(0.2)
		CMDsF.Visible = true
		Settings:TweenPosition(UDim2.new(0, 0, 0, 220), "InOut", "Quart", 0.2, true, nil)
	end
	tabComplete = UserInputService.InputBegan:Connect(function(input,gameProcessed)
		if Cmdbar:IsFocused() then
			if tabAllowed == true and input.KeyCode == Enum.KeyCode.Tab and topCommand ~= nil then
				autoComplete(topCommand)
			end
		else
			tabComplete:Disconnect()
		end
	end)
end)

ESPenabled = false
CHMSenabled = false

function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

function ESP(plr)
	task.spawn(function()
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == plr.Name..'_ESP' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(plr.Name..'_ESP') then
			local ESPholder = Instance.new("Folder")
			ESPholder.Name = plr.Name..'_ESP'
			ESPholder.Parent = COREGUI
			repeat wait(1) until plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment")
					a.Name = plr.Name
					a.Parent = ESPholder
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 10
					a.Size = n.Size
					a.Transparency = espTransparency
					a.Color = plr.TeamColor
				end
			end
			if plr.Character and plr.Character:FindFirstChild('Head') then
				local BillboardGui = Instance.new("BillboardGui")
				local TextLabel = Instance.new("TextLabel")
				BillboardGui.Adornee = plr.Character.Head
				BillboardGui.Name = plr.Name
				BillboardGui.Parent = ESPholder
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -50)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				TextLabel.Text = 'Name: '..plr.Name
				TextLabel.ZIndex = 10
				local espLoopFunc
				local teamChange
				local addedFunc
				addedFunc = plr.CharacterAdded:Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						teamChange:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
						addedFunc:Disconnect()
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
					end
				end)
				teamChange = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						addedFunc:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
						teamChange:Disconnect()
					else
						teamChange:Disconnect()
					end
				end)
				local function espLoop()
					if COREGUI:FindFirstChild(plr.Name..'_ESP') then
						if plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid") and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
							local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - getRoot(plr.Character).Position).magnitude)
							TextLabel.Text = 'Name: '..plr.Name..' | Health: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' | Studs: '..pos
						end
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
						espLoopFunc:Disconnect()
					end
				end
				espLoopFunc = RunService.RenderStepped:Connect(espLoop)
			end
		end
	end)
end

function CHMS(plr)
	task.spawn(function()
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == plr.Name..'_CHMS' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(plr.Name..'_CHMS') then
			local ESPholder = Instance.new("Folder")
			ESPholder.Name = plr.Name..'_CHMS'
			ESPholder.Parent = COREGUI
			repeat wait(1) until plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment")
					a.Name = plr.Name
					a.Parent = ESPholder
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 10
					a.Size = n.Size
					a.Transparency = espTransparency
					a.Color = plr.TeamColor
				end
			end
			local addedFunc
			local teamChange
			local CHMSremoved
			addedFunc = plr.CharacterAdded:Connect(function()
				if CHMSenabled then
					ESPholder:Destroy()
					teamChange:Disconnect()
					repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
					CHMS(plr)
					addedFunc:Disconnect()
				else
					teamChange:Disconnect()
					addedFunc:Disconnect()
				end
			end)
			teamChange = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
				if CHMSenabled then
					ESPholder:Destroy()
					addedFunc:Disconnect()
					repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
					CHMS(plr)
					teamChange:Disconnect()
				else
					teamChange:Disconnect()
				end
			end)
			CHMSremoved = ESPholder.AncestryChanged:Connect(function()
				teamChange:Disconnect()
				addedFunc:Disconnect()
				CHMSremoved:Disconnect()
			end)
		end
	end)
end

function Locate(plr)
	task.spawn(function()
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == plr.Name..'_LC' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(plr.Name..'_LC') then
			local ESPholder = Instance.new("Folder")
			ESPholder.Name = plr.Name..'_LC'
			ESPholder.Parent = COREGUI
			repeat wait(1) until plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment")
					a.Name = plr.Name
					a.Parent = ESPholder
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 10
					a.Size = n.Size
					a.Transparency = espTransparency
					a.Color = plr.TeamColor
				end
			end
			if plr.Character and plr.Character:FindFirstChild('Head') then
				local BillboardGui = Instance.new("BillboardGui")
				local TextLabel = Instance.new("TextLabel")
				BillboardGui.Adornee = plr.Character.Head
				BillboardGui.Name = plr.Name
				BillboardGui.Parent = ESPholder
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -50)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				TextLabel.Text = 'Name: '..plr.Name
				TextLabel.ZIndex = 10
				local lcLoopFunc
				local addedFunc
				local teamChange
				addedFunc = plr.CharacterAdded:Connect(function()
					if ESPholder ~= nil and ESPholder.Parent ~= nil then
						lcLoopFunc:Disconnect()
						teamChange:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						Locate(plr)
						addedFunc:Disconnect()
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
					end
				end)
				teamChange = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
					if ESPholder ~= nil and ESPholder.Parent ~= nil then
						lcLoopFunc:Disconnect()
						addedFunc:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						Locate(plr)
						teamChange:Disconnect()
					else
						teamChange:Disconnect()
					end
				end)
				local function lcLoop()
					if COREGUI:FindFirstChild(plr.Name..'_LC') then
						if plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid") and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
							local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - getRoot(plr.Character).Position).magnitude)
							TextLabel.Text = 'Name: '..plr.Name..' | Health: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' | Studs: '..pos
						end
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
						lcLoopFunc:Disconnect()
					end
				end
				lcLoopFunc = RunService.RenderStepped:Connect(lcLoop)
			end
		end
	end)
end

local bindsGUI = KeybindEditor
local awaitingInput = false
local keySelected = false

function refreshbinds()
	if Holder_2 then
		Holder_2:ClearAllChildren()
		Holder_2.CanvasSize = UDim2.new(0, 0, 0, 10)
		for i = 1, #binds do
			local YSize = 25
			local Position = ((i * YSize) - YSize)
			local newbind = Example_2:Clone()
			newbind.Parent = Holder_2
			newbind.Visible = true
			newbind.Position = UDim2.new(0,0,0, Position + 5)
			table.insert(shade2,newbind)
			table.insert(shade2,newbind.Text)
			table.insert(text1,newbind.Text)
			table.insert(shade3,newbind.Text.Delete)
			table.insert(text2,newbind.Text.Delete)
			local input = tostring(binds[i].KEY)
			local key
			if input == 'RightClick' or input == 'LeftClick' then
				key = input
			else
				key = input:sub(14)
			end
			if binds[i].TOGGLE then
				newbind.Text.Text = key.." > "..binds[i].COMMAND.." / "..binds[i].TOGGLE
			else
				newbind.Text.Text = key.." > "..binds[i].COMMAND.."  "..(binds[i].ISKEYUP and "(keyup)" or "(keydown)")
			end
			Holder_2.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newbind.Text.Delete.MouseButton1Click:Connect(function()
				unkeybind(binds[i].COMMAND,binds[i].KEY)
			end)
		end
	end
end

refreshbinds()

toggleOn = {}

function unkeybind(cmd,key)
	for i = #binds,1,-1 do
		if binds[i].COMMAND == cmd and binds[i].KEY == key then
			toggleOn[binds[i]] = nil
			table.remove(binds, i)
		end
	end
	refreshbinds()
	updatesaves()
	if key == 'RightClick' or key == 'LeftClick' then
		notify('Keybinds Updated','Unbinded '..key..' from '..cmd)
	else
		notify('Keybinds Updated','Unbinded '..key:sub(14)..' from '..cmd)
	end
end

PositionsFrame.Delete.MouseButton1Click:Connect(function()
	execCmd('cpos')
end)

function refreshwaypoints()
	if #WayPoints > 0 or #pWayPoints > 0 then
		PositionsHint:Destroy()
	end
	if Holder_4 then
		Holder_4:ClearAllChildren()
		Holder_4.CanvasSize = UDim2.new(0, 0, 0, 10)
		local YSize = 25
		local num = 1
		for i = 1, #WayPoints do
			local Position = ((num * YSize) - YSize)
			local newpoint = Example_4:Clone()
			newpoint.Parent = Holder_4
			newpoint.Visible = true
			newpoint.Position = UDim2.new(0,0,0, Position + 5)
			newpoint.Text.Text = WayPoints[i].NAME
			table.insert(shade2,newpoint)
			table.insert(shade2,newpoint.Text)
			table.insert(text1,newpoint.Text)
			table.insert(shade3,newpoint.Text.Delete)
			table.insert(text2,newpoint.Text.Delete)
			table.insert(shade3,newpoint.Text.TP)
			table.insert(text2,newpoint.Text.TP)
			Holder_4.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newpoint.Text.Delete.MouseButton1Click:Connect(function()
				execCmd('dpos '..WayPoints[i].NAME)
			end)
			newpoint.Text.TP.MouseButton1Click:Connect(function()
				execCmd("loadpos "..WayPoints[i].NAME)
			end)
			num = num+1
		end
		for i = 1, #pWayPoints do
			local Position = ((num * YSize) - YSize)
			local newpoint = Example_4:Clone()
			newpoint.Parent = Holder_4
			newpoint.Visible = true
			newpoint.Position = UDim2.new(0,0,0, Position + 5)
			newpoint.Text.Text = pWayPoints[i].NAME
			table.insert(shade2,newpoint)
			table.insert(shade2,newpoint.Text)
			table.insert(text1,newpoint.Text)
			table.insert(shade3,newpoint.Text.Delete)
			table.insert(text2,newpoint.Text.Delete)
			table.insert(shade3,newpoint.Text.TP)
			table.insert(text2,newpoint.Text.TP)
			Holder_4.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newpoint.Text.Delete.MouseButton1Click:Connect(function()
				execCmd('dpos '..pWayPoints[i].NAME)
			end)
			newpoint.Text.TP.MouseButton1Click:Connect(function()
				execCmd("loadpos "..pWayPoints[i].NAME)
			end)
			num = num+1
		end
	end
end

refreshwaypoints()

function refreshaliases()
	if #aliases > 0 then
		AliasHint:Destroy()
	end
	if Holder_3 then
		Holder_3:ClearAllChildren()
		Holder_3.CanvasSize = UDim2.new(0, 0, 0, 10)
		for i = 1, #aliases do
			local YSize = 25
			local Position = ((i * YSize) - YSize)
			local newalias = Example_3:Clone()
			newalias.Parent = Holder_3
			newalias.Visible = true
			newalias.Position = UDim2.new(0,0,0, Position + 5)
			newalias.Text.Text = aliases[i].CMD.." > "..aliases[i].ALIAS
			table.insert(shade2,newalias)
			table.insert(shade2,newalias.Text)
			table.insert(text1,newalias.Text)
			table.insert(shade3,newalias.Text.Delete)
			table.insert(text2,newalias.Text.Delete)
			Holder_3.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newalias.Text.Delete.MouseButton1Click:Connect(function()
				execCmd('removealias '..aliases[i].ALIAS)
			end)
		end
	end
end

local bindChosenKeyUp = false

BindTo.MouseButton1Click:Connect(function()
	awaitingInput = true
	BindTo.Text = 'Press something'
end)

BindTriggerSelect.MouseButton1Click:Connect(function()
	bindChosenKeyUp = not bindChosenKeyUp
	BindTriggerSelect.Text = bindChosenKeyUp and "KeyUp" or "KeyDown"
end)

newToggle = false
Cmdbar_3.Parent.Visible = false
On_2.MouseButton1Click:Connect(function()
	if newToggle == false then newToggle = true
		On_2.BackgroundTransparency = 0
		Cmdbar_3.Parent.Visible = true
		BindTriggerSelect.Visible = false
	else newToggle = false
		On_2.BackgroundTransparency = 1
		Cmdbar_3.Parent.Visible = false
		BindTriggerSelect.Visible = true
	end
end)

Add_2.MouseButton1Click:Connect(function()
	if keySelected then
		if string.find(Cmdbar_2.Text, "\\\\") or string.find(Cmdbar_3.Text, "\\\\") then
			notify('Keybind Error','Only use one backslash to keybind multiple commands into one keybind or command')
		else
			if newToggle and Cmdbar_3.Text ~= '' and Cmdbar_2.text ~= '' then
				addbind(Cmdbar_2.Text,keyPressed,false,Cmdbar_3.Text)
			elseif not newToggle and Cmdbar_2.text ~= '' then
				addbind(Cmdbar_2.Text,keyPressed,bindChosenKeyUp)
			else
				return
			end
			refreshbinds()
			updatesaves()
			if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
				notify('Keybinds Updated','Binded '..keyPressed..' to '..Cmdbar_2.Text..(newToggle and " / "..Cmdbar_3.Text or ""))
			else
				notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to '..Cmdbar_2.Text..(newToggle and " / "..Cmdbar_3.Text or ""))
			end
		end
	end
end)

Exit_2.MouseButton1Click:Connect(function()
	Cmdbar_2.Text = 'Command'
	Cmdbar_3.Text = 'Command 2'
	BindTo.Text = 'Click to bind'
	bindChosenKeyUp = false
	BindTriggerSelect.Text = "KeyDown"
	keySelected = false
	KeybindEditor:TweenPosition(UDim2.new(0.5, -180, 0, -500), "InOut", "Quart", 0.5, true, nil)
end)

function onInputBegan(input,gameProcessed)
	if awaitingInput then
		if input.UserInputType == Enum.UserInputType.Keyboard then
			keyPressed = tostring(input.KeyCode)
			BindTo.Text = keyPressed:sub(14)
		elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
			keyPressed = 'LeftClick'
			BindTo.Text = 'LeftClick'
		elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
			keyPressed = 'RightClick'
			BindTo.Text = 'RightClick'
		end
		awaitingInput = false
		keySelected = true
	end
	if not gameProcessed and #binds > 0 then
		for i,v in pairs(binds) do
			if not v.ISKEYUP then
				if (input.UserInputType == Enum.UserInputType.Keyboard and v.KEY:lower()==tostring(input.KeyCode):lower()) or (input.UserInputType == Enum.UserInputType.MouseButton1 and v.KEY:lower()=='leftclick') or (input.UserInputType == Enum.UserInputType.MouseButton2 and v.KEY:lower()=='rightclick') then
					if v.TOGGLE then
						local isOn = toggleOn[v] == true
						toggleOn[v] = not isOn
						if isOn then
							execCmd(v.TOGGLE,Players.LocalPlayer)
						else
							execCmd(v.COMMAND,Players.LocalPlayer)
						end
					else
						execCmd(v.COMMAND,Players.LocalPlayer)
					end
				end
			end
		end
	end
end

function onInputEnded(input,gameProcessed)
	if not gameProcessed and #binds > 0 then
		for i,v in pairs(binds) do
			if v.ISKEYUP then
				if (input.UserInputType == Enum.UserInputType.Keyboard and v.KEY:lower()==tostring(input.KeyCode):lower()) or (input.UserInputType == Enum.UserInputType.MouseButton1 and v.KEY:lower()=='leftclick') or (input.UserInputType == Enum.UserInputType.MouseButton2 and v.KEY:lower()=='rightclick') then
					execCmd(v.COMMAND,Players.LocalPlayer)
				end
			end
		end
	end
end

UserInputService.InputBegan:Connect(onInputBegan)
UserInputService.InputEnded:Connect(onInputEnded)

ClickTP.Select.MouseButton1Click:Connect(function()
	if keySelected then
		addbind('clicktp',keyPressed,bindChosenKeyUp)
		refreshbinds()
		updatesaves()
		if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
			notify('Keybinds Updated','Binded '..keyPressed..' to click tp')
		else
			notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to click tp')
		end
	end
end)

ClickDelete.Select.MouseButton1Click:Connect(function()
	if keySelected then
		addbind('clickdel',keyPressed,bindChosenKeyUp)
		refreshbinds()
		updatesaves()
		if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
			notify('Keybinds Updated','Binded '..keyPressed..' to click delete')
		else
			notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to click delete')
		end
	end
end)

local function clicktpFunc()
	pcall(function()
		local character = Players.LocalPlayer.Character
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid and humanoid.SeatPart then
			humanoid.Sit = false
			wait(0.1)
		end
		
		local hipHeight = humanoid and humanoid.HipHeight > 0 and (humanoid.HipHeight + 1)
		local rootPart = getRoot(character)
		local rootPartPosition = rootPart.Position
		local hitPosition = IYMouse.Hit.Position
		local newCFrame = CFrame.new(
			hitPosition, 
			Vector3.new(rootPartPosition.X, hitPosition.Y, rootPartPosition.Z)
		) * CFrame.Angles(0, math.pi, 0)

		rootPart.CFrame = newCFrame + Vector3.new(0, hipHeight or 4, 0)
	end)
end

IYMouse.Button1Down:Connect(function()
	for i,v in pairs(binds) do
		if v.COMMAND == 'clicktp' then
			local input = v.KEY
			if input == 'RightClick' and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) and Players.LocalPlayer.Character then
				clicktpFunc()
			elseif input == 'LeftClick' and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) and Players.LocalPlayer.Character then
				clicktpFunc()
			elseif UserInputService:IsKeyDown(Enum.KeyCode[input:sub(14)]) and Players.LocalPlayer.Character then
				clicktpFunc()
			end
		elseif v.COMMAND == 'clickdel' then
			local input = v.KEY
			if input == 'RightClick' and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
				pcall(function() IYMouse.Target:Destroy() end)
			elseif input == 'LeftClick' and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
				pcall(function() IYMouse.Target:Destroy() end)
			elseif UserInputService:IsKeyDown(Enum.KeyCode[input:sub(14)]) then
				pcall(function() IYMouse.Target:Destroy() end)
			end
		end
	end
end)

PluginsGUI = PluginEditor.background

function addPlugin(name)
	if name:lower() == 'plugin file name' or name:lower() == 'iy_fe.iy' or name == 'iy_fe' then
		notify('Plugin Error','Please enter a valid plugin')
	else
		local file
		local fileName
		if name:sub(-3) == '.iy' then
			pcall(function() file = readfile(name) end)
			fileName = name
		else
			pcall(function() file = readfile(name..'.iy') end)
			fileName = name..'.iy'
		end
		if file then
			if not FindInTable(PluginsTable, fileName) then
				table.insert(PluginsTable, fileName)
				LoadPlugin(fileName)
				refreshplugins()
				pcall(eventEditor.Refresh)
			else
				notify('Plugin Error','This plugin is already added')
			end
		else
			notify('Plugin Error','Cannot locate file "'..fileName..'". Is the file in the correct folder?')
		end
	end
end

function deletePlugin(name)
	local pName = name..'.iy'
	if name:sub(-3) == '.iy' then
		pName = name
	end
	for i = #cmds,1,-1 do
		if cmds[i].PLUGIN == pName then
			table.remove(cmds, i)
		end
	end
	for i,v in pairs(CMDsF:GetChildren()) do
		if v.Name == 'PLUGIN_'..pName then
			v:Destroy()
		end
	end
	for i,v in pairs(PluginsTable) do
		if v == pName then
			table.remove(PluginsTable, i)
			notify('Removed Plugin',pName..' was removed')
		end
	end
	IndexContents('',true)
	refreshplugins()
end

function refreshplugins(dontSave)
	if #PluginsTable > 0 then
		PluginsHint:Destroy()
	end
	if Holder_5 then
		Holder_5:ClearAllChildren()
		Holder_5.CanvasSize = UDim2.new(0, 0, 0, 10)
		for i,v in pairs(PluginsTable) do
			local pName = v
			local YSize = 25
			local Position = ((i * YSize) - YSize)
			local newplugin = Example_5:Clone()
			newplugin.Parent = Holder_5
			newplugin.Visible = true
			newplugin.Position = UDim2.new(0,0,0, Position + 5)
			newplugin.Text.Text = pName
			table.insert(shade2,newplugin)
			table.insert(shade2,newplugin.Text)
			table.insert(text1,newplugin.Text)
			table.insert(shade3,newplugin.Text.Delete)
			table.insert(text2,newplugin.Text.Delete)
			Holder_5.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newplugin.Text.Delete.MouseButton1Click:Connect(function()
				deletePlugin(pName)
			end)
		end
		if not dontSave then
			updatesaves()
		end
	end
end

local PluginCache
function LoadPlugin(val,startup)
	local plugin

	function CatchedPluginLoad()
		plugin = loadfile(val)()
	end

	function handlePluginError(plerror)
		notify('Plugin Error','An error occurred with the plugin, "'..val..'" and it could not be loaded')
		if FindInTable(PluginsTable,val) then
			for i,v in pairs(PluginsTable) do
				if v == val then
					table.remove(PluginsTable,i)
				end
			end
		end
		updatesaves()

		print("Original Error: "..tostring(plerror))
		print("Plugin Error, stack traceback: "..tostring(debug.traceback()))

		plugin = nil

		return false
	end

	xpcall(CatchedPluginLoad, handlePluginError)

	if plugin ~= nil then
		if not startup then
			notify('Loaded Plugin',"Name: "..plugin["PluginName"].."\n".."Description: "..plugin["PluginDescription"])
		end
		addcmdtext('',val)
		addcmdtext(string.upper('--'..plugin["PluginName"]),val,plugin["PluginDescription"])
		if plugin["Commands"] then
			for i,v in pairs(plugin["Commands"]) do 
				local cmdExt = ''
				local cmdName = i
				local function handleNames()
					cmdName = i
					if findCmd(cmdName..cmdExt) then
						if isNumber(cmdExt) then
							cmdExt = cmdExt+1
						else
							cmdExt = 1
						end
						handleNames()
					else
						cmdName = cmdName..cmdExt
					end
				end
				handleNames()
				addcmd(cmdName, v["Aliases"], v["Function"], val)
				if v["ListName"] then
					local newName = v.ListName
					local cmdNames = {i,unpack(v.Aliases)}
					for i,v in pairs(cmdNames) do
						newName = newName:gsub(v,v..cmdExt)
					end
					addcmdtext(newName,val,v["Description"])
				else
					addcmdtext(cmdName,val,v["Description"])
				end
			end
		end
		IndexContents('',true)
	elseif plugin == nil then
		plugin = nil
	end
end

function FindPlugins()
	if PluginsTable ~= nil and type(PluginsTable) == "table" then
		for i,v in pairs(PluginsTable) do
			LoadPlugin(v,true)
		end
		refreshplugins(true)
	end
end

AddPlugin.MouseButton1Click:Connect(function()
	addPlugin(PluginsGUI.FileName.Text)
end)

Exit_3.MouseButton1Click:Connect(function()
	PluginEditor:TweenPosition(UDim2.new(0.5, -180, 0, -500), "InOut", "Quart", 0.5, true, nil)
	FileName.Text = 'Plugin File Name'
end)

Add_3.MouseButton1Click:Connect(function()
	PluginEditor:TweenPosition(UDim2.new(0.5, -180, 0, 310), "InOut", "Quart", 0.5, true, nil)
end)

Plugins.MouseButton1Click:Connect(function()
	if writefileExploit() then
		PluginsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
		wait(0.5)
		SettingsHolder.Visible = false
	else
		notify('Incompatible Exploit','Your exploit is unable to use plugins (missing read/writefile)')
	end
end)

Close_4.MouseButton1Click:Connect(function()
	SettingsHolder.Visible = true
	PluginsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

Players.LocalPlayer.OnTeleport:Connect(function(State)
	if State == Enum.TeleportState.Started then
		if KeepInfYield and queueteleport then
			queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()")
		end
	end
end)

addcmd('addalias',{},function(args, speaker)
	if #args < 2 then return end
	local cmd = string.lower(args[1])
	local alias = string.lower(args[2])
	for i,v in pairs(cmds) do
		if v.NAME:lower()==cmd or FindInTable(v.ALIAS,cmd) then
			customAlias[alias] = v
			aliases[#aliases + 1] = {CMD = cmd, ALIAS = alias}
			notify('Aliases Modified',"Added "..alias.." as an alias to "..cmd)
			updatesaves()
			refreshaliases()
			break
		end
	end
end)

addcmd('removealias',{},function(args, speaker)
	if #args < 1 then return end
	local alias = string.lower(args[1])
	if customAlias[alias] then
		local cmd = customAlias[alias].NAME
		customAlias[alias] = nil
		for i = #aliases,1,-1 do
			if aliases[i].ALIAS == tostring(alias) then
				table.remove(aliases, i)
			end
		end
		notify('Aliases Modified',"Removed the alias "..alias.." from "..cmd)
		updatesaves()
		refreshaliases()
	end
end)

addcmd('clraliases',{},function(args, speaker)
	customAlias = {}
	aliases = {}
	notify('Aliases Modified','Removed all aliases')
	updatesaves()
	refreshaliases()
end)

addcmd('keepiy', {}, function(args, speaker)
	if queueteleport then
		KeepInfYield = true
		updatesaves()
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing queue_on_teleport)')
	end
end)

addcmd('unkeepiy', {}, function(args, speaker)
	if queueteleport then
		KeepInfYield = false
		updatesaves()
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing queue_on_teleport)')
	end
end)

addcmd('toggleunkeepiy', {}, function(args, speaker)
	if queueteleport then
		KeepInfYield = not KeepInfYield
		updatesaves()
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing queue_on_teleport)')
	end
end)

local canOpenServerinfo = true
addcmd('serverinfo',{'info','sinfo'},function(args, speaker)
	if not canOpenServerinfo then return end
	canOpenServerinfo = false
	task.spawn(function()
		local FRAME = Instance.new("Frame")
		local shadow = Instance.new("Frame")
		local PopupText = Instance.new("TextLabel")
		local Exit = Instance.new("TextButton")
		local ExitImage = Instance.new("ImageLabel")
		local background = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		local TextLabel2 = Instance.new("TextLabel")
		local TextLabel3 = Instance.new("TextLabel")
		local Time = Instance.new("TextLabel")
		local appearance = Instance.new("TextLabel")
		local maxplayers = Instance.new("TextLabel")
		local name = Instance.new("TextLabel")
		local placeid = Instance.new("TextLabel")
		local playerid = Instance.new("TextLabel")
		local players = Instance.new("TextLabel")
		local CopyApp = Instance.new("TextButton")
		local CopyPlrID = Instance.new("TextButton")
		local CopyPlcID = Instance.new("TextButton")

		FRAME.Name = randomString()
		FRAME.Parent = PARENT
		FRAME.Active = true
		FRAME.BackgroundTransparency = 1
		FRAME.Position = UDim2.new(0.5, -130, 0, -500)
		FRAME.Size = UDim2.new(0, 250, 0, 20)
		FRAME.ZIndex = 10
		dragGUI(FRAME)

		shadow.Name = "shadow"
		shadow.Parent = FRAME
		shadow.BackgroundColor3 = currentShade2
		shadow.BorderSizePixel = 0
		shadow.Size = UDim2.new(0, 250, 0, 20)
		shadow.ZIndex = 10
		table.insert(shade2,shadow)

		PopupText.Name = "PopupText"
		PopupText.Parent = shadow
		PopupText.BackgroundTransparency = 1
		PopupText.Size = UDim2.new(1, 0, 0.95, 0)
		PopupText.ZIndex = 10
		PopupText.Font = Enum.Font.SourceSans
		PopupText.TextSize = 14
		PopupText.Text = "Server"
		PopupText.TextColor3 = currentText1
		PopupText.TextWrapped = true
		table.insert(text1,PopupText)

		Exit.Name = "Exit"
		Exit.Parent = shadow
		Exit.BackgroundTransparency = 1
		Exit.Position = UDim2.new(1, -20, 0, 0)
		Exit.Size = UDim2.new(0, 20, 0, 20)
		Exit.Text = ""
		Exit.ZIndex = 10

		ExitImage.Parent = Exit
		ExitImage.BackgroundColor3 = Color3.new(1, 1, 1)
		ExitImage.BackgroundTransparency = 1
		ExitImage.Position = UDim2.new(0, 5, 0, 5)
		ExitImage.Size = UDim2.new(0, 10, 0, 10)
		ExitImage.Image = "rbxassetid://5054663650"
		ExitImage.ZIndex = 10

		background.Name = "background"
		background.Parent = FRAME
		background.Active = true
		background.BackgroundColor3 = currentShade1
		background.BorderSizePixel = 0
		background.Position = UDim2.new(0, 0, 1, 0)
		background.Size = UDim2.new(0, 250, 0, 250)
		background.ZIndex = 10
		table.insert(shade1,background)

		TextLabel.Name = "Text Label"
		TextLabel.Parent = background
		TextLabel.BackgroundTransparency = 1
		TextLabel.BorderSizePixel = 0
		TextLabel.Position = UDim2.new(0, 5, 0, 80)
		TextLabel.Size = UDim2.new(0, 100, 0, 20)
		TextLabel.ZIndex = 10
		TextLabel.Font = Enum.Font.SourceSansLight
		TextLabel.TextSize = 20
		TextLabel.Text = "Run Time:"
		TextLabel.TextColor3 = currentText1
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,TextLabel)

		TextLabel2.Name = "Text Label2"
		TextLabel2.Parent = background
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.BorderSizePixel = 0
		TextLabel2.Position = UDim2.new(0, 5, 0, 130)
		TextLabel2.Size = UDim2.new(0, 100, 0, 20)
		TextLabel2.ZIndex = 10
		TextLabel2.Font = Enum.Font.SourceSansLight
		TextLabel2.TextSize = 20
		TextLabel2.Text = "Statistics:"
		TextLabel2.TextColor3 = currentText1
		TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,TextLabel2)

		TextLabel3.Name = "Text Label3"
		TextLabel3.Parent = background
		TextLabel3.BackgroundTransparency = 1
		TextLabel3.BorderSizePixel = 0
		TextLabel3.Position = UDim2.new(0, 5, 0, 10)
		TextLabel3.Size = UDim2.new(0, 100, 0, 20)
		TextLabel3.ZIndex = 10
		TextLabel3.Font = Enum.Font.SourceSansLight
		TextLabel3.TextSize = 20
		TextLabel3.Text = "Local Player:"
		TextLabel3.TextColor3 = currentText1
		TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,TextLabel3)

		Time.Name = "Time"
		Time.Parent = background
		Time.BackgroundTransparency = 1
		Time.BorderSizePixel = 0
		Time.Position = UDim2.new(0, 5, 0, 105)
		Time.Size = UDim2.new(0, 100, 0, 20)
		Time.ZIndex = 10
		Time.Font = Enum.Font.SourceSans
		Time.FontSize = Enum.FontSize.Size14
		Time.Text = "LOADING"
		Time.TextColor3 = currentText1
		Time.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,Time)

		appearance.Name = "appearance"
		appearance.Parent = background
		appearance.BackgroundTransparency = 1
		appearance.BorderSizePixel = 0
		appearance.Position = UDim2.new(0, 5, 0, 55)
		appearance.Size = UDim2.new(0, 100, 0, 20)
		appearance.ZIndex = 10
		appearance.Font = Enum.Font.SourceSans
		appearance.FontSize = Enum.FontSize.Size14
		appearance.Text = "Appearance: LOADING"
		appearance.TextColor3 = currentText1
		appearance.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,appearance)

		maxplayers.Name = "maxplayers"
		maxplayers.Parent = background
		maxplayers.BackgroundTransparency = 1
		maxplayers.BorderSizePixel = 0
		maxplayers.Position = UDim2.new(0, 5, 0, 175)
		maxplayers.Size = UDim2.new(0, 100, 0, 20)
		maxplayers.ZIndex = 10
		maxplayers.Font = Enum.Font.SourceSans
		maxplayers.FontSize = Enum.FontSize.Size14
		maxplayers.Text = "LOADING"
		maxplayers.TextColor3 = currentText1
		maxplayers.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,maxplayers)

		name.Name = "name"
		name.Parent = background
		name.BackgroundTransparency = 1
		name.BorderSizePixel = 0
		name.Position = UDim2.new(0, 5, 0, 215)
		name.Size = UDim2.new(0, 240, 0, 30)
		name.ZIndex = 10
		name.Font = Enum.Font.SourceSans
		name.FontSize = Enum.FontSize.Size14
		name.Text = "Place Name: LOADING"
		name.TextColor3 = currentText1
		name.TextWrapped = true
		name.TextXAlignment = Enum.TextXAlignment.Left
		name.TextYAlignment = Enum.TextYAlignment.Top
		table.insert(text1,name)

		placeid.Name = "placeid"
		placeid.Parent = background
		placeid.BackgroundTransparency = 1
		placeid.BorderSizePixel = 0
		placeid.Position = UDim2.new(0, 5, 0, 195)
		placeid.Size = UDim2.new(0, 100, 0, 20)
		placeid.ZIndex = 10
		placeid.Font = Enum.Font.SourceSans
		placeid.FontSize = Enum.FontSize.Size14
		placeid.Text = "Place ID: LOADING"
		placeid.TextColor3 = currentText1
		placeid.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,placeid)

		playerid.Name = "playerid"
		playerid.Parent = background
		playerid.BackgroundTransparency = 1
		playerid.BorderSizePixel = 0
		playerid.Position = UDim2.new(0, 5, 0, 35)
		playerid.Size = UDim2.new(0, 100, 0, 20)
		playerid.ZIndex = 10
		playerid.Font = Enum.Font.SourceSans
		playerid.FontSize = Enum.FontSize.Size14
		playerid.Text = "Player ID: LOADING"
		playerid.TextColor3 = currentText1
		playerid.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,playerid)

		players.Name = "players"
		players.Parent = background
		players.BackgroundTransparency = 1
		players.BorderSizePixel = 0
		players.Position = UDim2.new(0, 5, 0, 155)
		players.Size = UDim2.new(0, 100, 0, 20)
		players.ZIndex = 10
		players.Font = Enum.Font.SourceSans
		players.FontSize = Enum.FontSize.Size14
		players.Text = "LOADING"
		players.TextColor3 = currentText1
		players.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,players)

		CopyApp.Name = "CopyApp"
		CopyApp.Parent = background
		CopyApp.BackgroundColor3 = currentShade2
		CopyApp.BorderSizePixel = 0
		CopyApp.Position = UDim2.new(0, 210, 0, 55)
		CopyApp.Size = UDim2.new(0, 35, 0, 20)
		CopyApp.Font = Enum.Font.SourceSans
		CopyApp.TextSize = 14
		CopyApp.Text = "Copy"
		CopyApp.TextColor3 = currentText1
		CopyApp.ZIndex = 10
		table.insert(shade2,CopyApp)
		table.insert(text1,CopyApp)

		CopyPlrID.Name = "CopyPlrID"
		CopyPlrID.Parent = background
		CopyPlrID.BackgroundColor3 = currentShade2
		CopyPlrID.BorderSizePixel = 0
		CopyPlrID.Position = UDim2.new(0, 210, 0, 35)
		CopyPlrID.Size = UDim2.new(0, 35, 0, 20)
		CopyPlrID.Font = Enum.Font.SourceSans
		CopyPlrID.TextSize = 14
		CopyPlrID.Text = "Copy"
		CopyPlrID.TextColor3 = currentText1
		CopyPlrID.ZIndex = 10
		table.insert(shade2,CopyPlrID)
		table.insert(text1,CopyPlrID)

		CopyPlcID.Name = "CopyPlcID"
		CopyPlcID.Parent = background
		CopyPlcID.BackgroundColor3 = currentShade2
		CopyPlcID.BorderSizePixel = 0
		CopyPlcID.Position = UDim2.new(0, 210, 0, 195)
		CopyPlcID.Size = UDim2.new(0, 35, 0, 20)
		CopyPlcID.Font = Enum.Font.SourceSans
		CopyPlcID.TextSize = 14
		CopyPlcID.Text = "Copy"
		CopyPlcID.TextColor3 = currentText1
		CopyPlcID.ZIndex = 10
		table.insert(shade2,CopyPlcID)
		table.insert(text1,CopyPlcID)

		local SINFOGUI = background
		FRAME:TweenPosition(UDim2.new(0.5, -130, 0, 100), "InOut", "Quart", 0.5, true, nil) 
		wait(0.5)
		Exit.MouseButton1Click:Connect(function()
			FRAME:TweenPosition(UDim2.new(0.5, -130, 0, -500), "InOut", "Quart", 0.5, true, nil) 
			wait(0.6)
			FRAME:Destroy()
			canOpenServerinfo = true
		end)
		local Asset = MarketplaceService:GetProductInfo(PlaceId)
		SINFOGUI.name.Text = "Place Name: " .. Asset.Name
		SINFOGUI.playerid.Text = "Player ID: " ..speaker.UserId
		SINFOGUI.maxplayers.Text = Players.MaxPlayers.. " Players Max"
		SINFOGUI.placeid.Text = "Place ID: " ..PlaceId

		CopyApp.MouseButton1Click:Connect(function()
			toClipboard(speaker.CharacterAppearanceId)
		end)
		CopyPlrID.MouseButton1Click:Connect(function()
			toClipboard(speaker.UserId)
		end)
		CopyPlcID.MouseButton1Click:Connect(function()
			toClipboard(PlaceId)
		end)

		repeat
			players = Players:GetPlayers()
			SINFOGUI.players.Text = #players.. " Player(s)"
			SINFOGUI.appearance.Text = "Appearance: " ..speaker.CharacterAppearanceId
			local seconds = math.floor(workspace.DistributedGameTime)
			local minutes = math.floor(workspace.DistributedGameTime / 60)
			local hours = math.floor(workspace.DistributedGameTime / 60 / 60)
			local seconds = seconds - (minutes * 60)
			local minutes = minutes - (hours * 60)
			if hours < 1 then if minutes < 1 then
					SINFOGUI.Time.Text = seconds .. " Second(s)" else
					SINFOGUI.Time.Text = minutes .. " Minute(s), " .. seconds .. " Second(s)"
				end
			else
				SINFOGUI.Time.Text = hours .. " Hour(s), " .. minutes .. " Minute(s), " .. seconds .. " Second(s)"
			end
			wait(1)
		until SINFOGUI.Parent == nil
	end)
end)

addcmd('jobid',{},function(args, speaker)
	local jobId = 'Roblox.GameLauncher.joinGameInstance('..PlaceId..', "'..JobId..'")'
	toClipboard(jobId)
end)

addcmd('notifyjobid',{},function(args, speaker)
	notify('JobId / PlaceId',JobId..' / '..PlaceId)
end)

addcmd('breakloops',{'break'},function(args, speaker)
	lastBreakTime = tick()
end)

addcmd('gametp',{'gameteleport'},function(args, speaker)
	TeleportService:Teleport(args[1])
end)

addcmd('rejoin',{'rj'},function(args, speaker)
	if #Players:GetPlayers() <= 1 then
		Players.LocalPlayer:Kick("\nRejoining...")
		wait()
		TeleportService:Teleport(PlaceId, Players.LocalPlayer)
	else
		TeleportService:TeleportToPlaceInstance(PlaceId, JobId, Players.LocalPlayer)
	end
end)

addcmd('autorejoin',{'autorj'},function(args, speaker)
	local Dir = COREGUI:FindFirstChild("RobloxPromptGui"):FindFirstChild("promptOverlay")
	Dir.DescendantAdded:Connect(function(Err)
		if Err.Name == "ErrorTitle" then
			Err:GetPropertyChangedSignal("Text"):Connect(function()
				if Err.Text:sub(0, 12) == "Disconnected" then
					if #Players:GetPlayers() <= 1 then
						Players.LocalPlayer:Kick("\nRejoining...")
						wait()
						TeleportService:Teleport(PlaceId, Players.LocalPlayer)
					else
						TeleportService:TeleportToPlaceInstance(PlaceId, JobId, Players.LocalPlayer)
					end
				end
			end)
		end
	end)
	notify('Auto Rejoin','Auto rejoin enabled')
end)

addcmd('serverhop',{'shop'},function(args, speaker)
	-- thanks to NoobSploit for fixing
	if httprequest then
		local servers = {}
		local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", PlaceId)})
		local body = HttpService:JSONDecode(req.Body)
		if body and body.data then
			for i, v in next, body.data do
				if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
					table.insert(servers, 1, v.id)
				end
			end
		end
		if #servers > 0 then
			TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], Players.LocalPlayer)
		else
			return notify("Serverhop", "Couldn't find a server.")
		end
	end
end)

addcmd('joinplayer',{'joinp'},function(args, speaker)
	local retries = 0
	function ToServer(User,Place)	
		if args[2] == nil then Place = PlaceId end
		if not pcall(function()
				local FoundUser, UserId = pcall(function()
					if tonumber(User) then
						return tonumber(User)
					end

					return Players:GetUserIdFromNameAsync(User)
				end)
				if not FoundUser then
					notify('Join Error','Username/UserID does not exist')
				else
					notify('Join Player','Loading servers. Hold on a second.')
					local URL2 = ("https://games.roblox.com/v1/games/"..Place.."/servers/Public?sortOrder=Asc&limit=100")
					local Http = HttpService:JSONDecode(game:HttpGet(URL2))
					local GUID

					function tablelength(T)
						local count = 0
						for _ in pairs(T) do count = count + 1 end
						return count
					end

					for i=1,tonumber(tablelength(Http.data)) do
						for j,k in pairs(Http.data[i].playerIds) do
							if k == UserId then
								GUID = Http.data[i].id
							end
						end
					end

					if GUID ~= nil then
						notify('Join Player','Joining '..User)
						TeleportService:TeleportToPlaceInstance(Place,GUID,Players.LocalPlayer)
					else
						notify('Join Error','Unable to join user.')
					end
				end
			end)
		then
			if retries < 3 then
				retries = retries + 1
				print('ERROR retrying '..retries..'/3')
				notify('Join Error','Error while trying to join. Retrying '..retries..'/3.')
				ToServer(User,Place)
			else
				notify('Join Error','Error while trying to join.')
			end
		end
	end
	ToServer(args[1],args[2])
end)

addcmd('exit',{},function(args, speaker)
	game:shutdown() 
end)

local Noclipping = nil
addcmd('noclip',{},function(args, speaker)
	Clip = false
	wait(0.1)
	local function NoclipLoop()
		if Clip == false and speaker.Character ~= nil then
			for _, child in pairs(speaker.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
					child.CanCollide = false
				end
			end
		end
	end
	Noclipping = RunService.Stepped:Connect(NoclipLoop)
end)

addcmd('clip',{'unnoclip'},function(args, speaker)
	if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
end)

addcmd('togglenoclip',{},function(args, speaker)
	if Clip then
		execCmd('noclip')
	else
		execCmd('clip')
	end
end)

FLYING = false
QEfly = true
iyflyspeed = 1
vehicleflyspeed = 1
function sFLY(vfly)
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until IYMouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = getRoot(Players.LocalPlayer.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

addcmd('fly',{},function(args, speaker)
	NOFLY()
	wait()
	sFLY()
	if args[1] and isNumber(args[1]) then
		iyflyspeed = args[1]
	end
end)

addcmd('flyspeed',{'flysp'},function(args, speaker)
	local speed = args[1] or 1
	if isNumber(speed) then
		iyflyspeed = speed
	end
end)

addcmd('unfly',{'nofly','novfly','unvehiclefly','novehiclefly','unvfly'},function(args, speaker)
	NOFLY()
end)

addcmd('vfly',{'vehiclefly'},function(args, speaker)
	NOFLY()
	wait()
	sFLY(true)
	if args[1] and isNumber(args[1]) then
		vehicleflyspeed = args[1]
	end
end)

addcmd('togglevfly',{},function(args, speaker)
	if FLYING then
		NOFLY()
	else
		sFLY(true)
	end
end)

addcmd('vflyspeed',{'vflysp','vehicleflyspeed','vehicleflysp'},function(args, speaker)
	local speed = args[1] or 1
	if isNumber(speed) then
		vehicleflyspeed = speed
	end
end)

addcmd('qefly',{'flyqe'},function(args, speaker)
	if args[1] == 'false' then
		QEfly = false
	else
		QEfly = true
	end
end)

addcmd('togglefly',{},function(args, speaker)
	if FLYING then
		NOFLY()
	else
		sFLY()
	end
end)

CFspeed = 50
addcmd('cframefly', {'cfly'}, function(args, speaker)
	--Full credit to peyton#9148
	speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
	local Head = speaker.Character:WaitForChild("Head")
	Head.Anchored = true
	if CFloop then CFloop:Disconnect() end
	CFloop = RunService.Heartbeat:Connect(function(deltaTime)
		local moveDirection = speaker.Character:FindFirstChildOfClass('Humanoid').MoveDirection * (CFspeed * deltaTime)
		local headCFrame = Head.CFrame
		local cameraCFrame = workspace.CurrentCamera.CFrame
		local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
		cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
		local cameraPosition = cameraCFrame.Position
		local headPosition = headCFrame.Position

		local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
		Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
	end)
end)

addcmd('uncframefly',{'uncfly'},function(args, speaker)
	if CFloop then
		CFloop:Disconnect()
		speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
		local Head = speaker.Character:WaitForChild("Head")
		Head.Anchored = false
	end
end)

addcmd('cframeflyspeed',{'cflyspeed'},function(args, speaker)
	if isNumber(args[1]) then
		CFspeed = args[1]
	end
end)

Floating = false
floatName = randomString()
addcmd('float', {'platform'},function(args, speaker)
	Floating = true
	local pchar = speaker.Character
	if pchar and not pchar:FindFirstChild(floatName) then
		task.spawn(function()
			local Float = Instance.new('Part')
			Float.Name = floatName
			Float.Parent = pchar
			Float.Transparency = 1
			Float.Size = Vector3.new(2,0.2,1.5)
			Float.Anchored = true
			local FloatValue = -3.1
			Float.CFrame = getRoot(pchar).CFrame * CFrame.new(0,FloatValue,0)
			notify('Float','Float Enabled (Q = down & E = up)')
			qUp = IYMouse.KeyUp:Connect(function(KEY)
				if KEY == 'q' then
					FloatValue = FloatValue + 0.5
				end
			end)
			eUp = IYMouse.KeyUp:Connect(function(KEY)
				if KEY == 'e' then
					FloatValue = FloatValue - 0.5
				end
			end)
			qDown = IYMouse.KeyDown:Connect(function(KEY)
				if KEY == 'q' then
					FloatValue = FloatValue - 0.5
				end
			end)
			eDown = IYMouse.KeyDown:Connect(function(KEY)
				if KEY == 'e' then
					FloatValue = FloatValue + 0.5
				end
			end)
			floatDied = speaker.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
				FloatingFunc:Disconnect()
				Float:Destroy()
				qUp:Disconnect()
				eUp:Disconnect()
				qDown:Disconnect()
				eDown:Disconnect()
				floatDied:Disconnect()
			end)
			local function FloatPadLoop()
				if pchar:FindFirstChild(floatName) and getRoot(pchar) then
					Float.CFrame = getRoot(pchar).CFrame * CFrame.new(0,FloatValue,0)
				else
					FloatingFunc:Disconnect()
					Float:Destroy()
					qUp:Disconnect()
					eUp:Disconnect()
					qDown:Disconnect()
					eDown:Disconnect()
					floatDied:Disconnect()
				end
			end			
			FloatingFunc = RunService.Heartbeat:Connect(FloatPadLoop)
		end)
	end
end)

addcmd('unfloat',{'nofloat','unplatform','noplatform'},function(args, speaker)
	Floating = false
	local pchar = speaker.Character
	notify('Float','Float Disabled')
	if pchar:FindFirstChild(floatName) then
		pchar:FindFirstChild(floatName):Destroy()
	end
	if floatDied then
		FloatingFunc:Disconnect()
		qUp:Disconnect()
		eUp:Disconnect()
		qDown:Disconnect()
		eDown:Disconnect()
		floatDied:Disconnect()
	end
end)

addcmd('togglefloat',{},function(args, speaker)
	if Floating then
		execCmd('unfloat')
	else
		execCmd('float')
	end
end)

swimming = false
local oldgrav = workspace.Gravity
local swimbeat = nil
addcmd('swim',{},function(args, speaker)
	if not swimming and speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
		oldgrav = workspace.Gravity
		workspace.Gravity = 0
		local swimDied = function()
			workspace.Gravity = oldgrav
			swimming = false
		end
		local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
		gravReset = Humanoid.Died:Connect(swimDied)
		local enums = Enum.HumanoidStateType:GetEnumItems()
		table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
		for i, v in pairs(enums) do
			Humanoid:SetStateEnabled(v, false)
		end
		Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
		swimbeat = RunService.Heartbeat:Connect(function()
			pcall(function()
				speaker.Character.HumanoidRootPart.Velocity = ((Humanoid.MoveDirection ~= Vector3.new() or UserInputService:IsKeyDown(Enum.KeyCode.Space)) and speaker.Character.HumanoidRootPart.Velocity or Vector3.new())
			end)
		end)
		swimming = true
	end
end)

addcmd('unswim',{'noswim'},function(args, speaker)
	if speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
		workspace.Gravity = oldgrav
		swimming = false
		if gravReset then
			gravReset:Disconnect()
		end
		if swimbeat ~= nil then
			swimbeat:Disconnect()
			swimbeat = nil
		end
		local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
		local enums = Enum.HumanoidStateType:GetEnumItems()
		table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
		for i, v in pairs(enums) do
			Humanoid:SetStateEnabled(v, true)
		end
	end
end)

addcmd('toggleswim',{},function(args, speaker)
	if swimming then
		execCmd('unswim')
	else
		execCmd('swim')
	end
end)

addcmd('setwaypoint',{'swp','setwp','spos','saveposition','savepos'},function(args, speaker)
	local WPName = tostring(getstring(1))
	if getRoot(speaker.Character) then
		notify('Modified Waypoints',"Created waypoint: "..getstring(1))
		local torso = getRoot(speaker.Character)
		WayPoints[#WayPoints + 1] = {NAME = WPName, COORD = {math.floor(torso.Position.X), math.floor(torso.Position.Y), math.floor(torso.Position.Z)}, GAME = PlaceId}
		if AllWaypoints ~= nil then
			AllWaypoints[#AllWaypoints + 1] = {NAME = WPName, COORD = {math.floor(torso.Position.X), math.floor(torso.Position.Y), math.floor(torso.Position.Z)}, GAME = PlaceId}
		end
	end	
	refreshwaypoints()
	updatesaves()
end)

addcmd('waypointpos',{'wpp','setwaypointposition','setpos','setwaypoint','setwaypointpos'},function(args, speaker)
	local WPName = tostring(getstring(1))
	if getRoot(speaker.Character) then
		notify('Modified Waypoints',"Created waypoint: "..getstring(1))
		WayPoints[#WayPoints + 1] = {NAME = WPName, COORD = {args[2], args[3], args[4]}, GAME = PlaceId}
		if AllWaypoints ~= nil then
			AllWaypoints[#AllWaypoints + 1] = {NAME = WPName, COORD = {args[2], args[3], args[4]}, GAME = PlaceId}
		end
	end	
	refreshwaypoints()
	updatesaves()
end)

addcmd('waypoints',{'positions'},function(args, speaker)
	if SettingsOpen == false then SettingsOpen = true
		Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.5, true, nil)
		CMDsF.Visible = false
	end
	KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
	AliasesFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
	PluginsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
	PositionsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	SettingsHolder.Visible = false
	maximizeHolder()
end)

waypointParts = {}
addcmd('showwaypoints',{'showwp','showwps'},function(args, speaker)
	execCmd('hidewaypoints')
	wait()
	for i,_ in pairs(WayPoints) do
		local x = WayPoints[i].COORD[1]
		local y = WayPoints[i].COORD[2]
		local z = WayPoints[i].COORD[3]
		local part = Instance.new("Part")
		part.Size = Vector3.new(5,5,5)
		part.CFrame = CFrame.new(x,y,z)
		part.Parent = workspace
		part.Anchored = true
		part.CanCollide = false
		table.insert(waypointParts,part)
		local view = Instance.new("BoxHandleAdornment")
		view.Adornee = part
		view.AlwaysOnTop = true
		view.ZIndex = 10
		view.Size = part.Size
		view.Parent = part
	end
	for i,v in pairs(pWayPoints) do
		local view = Instance.new("BoxHandleAdornment")
		view.Adornee = pWayPoints[i].COORD[1]
		view.AlwaysOnTop = true
		view.ZIndex = 10
		view.Size = pWayPoints[i].COORD[1].Size
		view.Parent = pWayPoints[i].COORD[1]
		table.insert(waypointParts,view)
	end
end)

addcmd('hidewaypoints',{'hidewp','hidewps'},function(args, speaker)
	for i,v in pairs(waypointParts) do
		v:Destroy()
	end
	waypointParts = {}
end)

addcmd('waypoint',{'wp','lpos','loadposition','loadpos'},function(args, speaker)
	local WPName = tostring(getstring(1))
	if speaker.Character then
		for i,_ in pairs(WayPoints) do
			if tostring(WayPoints[i].NAME):lower() == tostring(WPName):lower() then
				local x = WayPoints[i].COORD[1]
				local y = WayPoints[i].COORD[2]
				local z = WayPoints[i].COORD[3]
				getRoot(speaker.Character).CFrame = CFrame.new(x,y,z)
			end
		end
		for i,_ in pairs(pWayPoints) do
			if tostring(pWayPoints[i].NAME):lower() == tostring(WPName):lower() then
				getRoot(speaker.Character).CFrame = CFrame.new(pWayPoints[i].COORD[1].Position)
			end
		end
	end
end)

tweenSpeed = 1
addcmd('tweenspeed',{'tspeed'},function(args, speaker)
	local newSpeed = args[1] or 1
	if tonumber(newSpeed) then
		tweenSpeed = tonumber(newSpeed)
	end
end)

addcmd('tweenwaypoint',{'twp'},function(args, speaker)
	local WPName = tostring(getstring(1))
	if speaker.Character then
		for i,_ in pairs(WayPoints) do
			local x = WayPoints[i].COORD[1]
			local y = WayPoints[i].COORD[2]
			local z = WayPoints[i].COORD[3]
			if tostring(WayPoints[i].NAME):lower() == tostring(WPName):lower() then
				TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = CFrame.new(x,y,z)}):Play()
			end
		end
		for i,_ in pairs(pWayPoints) do
			if tostring(pWayPoints[i].NAME):lower() == tostring(WPName):lower() then
				TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pWayPoints[i].COORD[1].Position)}):Play()
			end
		end
	end
end)

addcmd('walktowaypoint',{'wtwp'},function(args, speaker)
	local WPName = tostring(getstring(1))
	if speaker.Character then
		for i,_ in pairs(WayPoints) do
			local x = WayPoints[i].COORD[1]
			local y = WayPoints[i].COORD[2]
			local z = WayPoints[i].COORD[3]
			if tostring(WayPoints[i].NAME):lower() == tostring(WPName):lower() then
				if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
					speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
					wait(.1)
				end
				speaker.Character:FindFirstChildOfClass('Humanoid').WalkToPoint = Vector3.new(x,y,z)
			end
		end
		for i,_ in pairs(pWayPoints) do
			if tostring(pWayPoints[i].NAME):lower() == tostring(WPName):lower() then
				if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
					speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
					wait(.1)
				end
				speaker.Character:FindFirstChildOfClass('Humanoid').WalkToPoint = Vector3.new(pWayPoints[i].COORD[1].Position)
			end
		end
	end
end)

addcmd('deletewaypoint',{'dwp','dpos','deleteposition','deletepos'},function(args, speaker)
	for i,v in pairs(WayPoints) do
		if v.NAME:lower() == tostring(getstring(1)):lower() then
			notify('Modified Waypoints',"Deleted waypoint: " .. v.NAME)
			table.remove(WayPoints, i)
		end
	end
	if AllWaypoints ~= nil and #AllWaypoints > 0 then
		for i,v in pairs(AllWaypoints) do
			if v.NAME:lower() == tostring(getstring(1)):lower() then
				if not v.GAME or v.GAME == PlaceId then
					table.remove(AllWaypoints, i)
				end
			end
		end
	end
	for i,v in pairs(pWayPoints) do
		if v.NAME:lower() == tostring(getstring(1)):lower() then
			notify('Modified Waypoints',"Deleted waypoint: " .. v.NAME)
			table.remove(pWayPoints, i)
		end
	end
	refreshwaypoints()
	updatesaves()
end)

addcmd('clearwaypoints',{'cwp','clearpositions','cpos','clearpos'},function(args, speaker)
	WayPoints = {}
	pWayPoints = {}
	refreshwaypoints()
	updatesaves()
	AllWaypoints = {}
	notify('Modified Waypoints','Removed all waypoints')
end)

addcmd('cleargamewaypoints',{'cgamewp'},function(args, speaker)
	for i,v in pairs(WayPoints) do
		if v.GAME == PlaceId then
			table.remove(WayPoints, i)
		end
	end
	if AllWaypoints ~= nil and #AllWaypoints > 0 then
		for i,v in pairs(AllWaypoints) do
			if v.GAME == PlaceId then
				table.remove(AllWaypoints, i)
			end
		end
	end
	for i,v in pairs(pWayPoints) do
		if v.GAME == PlaceId then
			table.remove(pWayPoints, i)
		end
	end
	refreshwaypoints()
	updatesaves()
	notify('Modified Waypoints','Deleted game waypoints')
end)


local coreGuiTypeNames = {
	-- predefined aliases
	["inventory"] = Enum.CoreGuiType.Backpack,
	["leaderboard"] = Enum.CoreGuiType.PlayerList,
	["emotes"] = Enum.CoreGuiType.EmotesMenu
}

-- Load the full list of enums
for _, enumItem in ipairs(Enum.CoreGuiType:GetEnumItems()) do
	coreGuiTypeNames[enumItem.Name:lower()] = enumItem
end

addcmd('enable',{},function(args, speaker)
	local input = args[1] and args[1]:lower()
	if input then
		if input == "reset" then
			StarterGui:SetCore("ResetButtonCallback", true)
		else
			local coreGuiType = coreGuiTypeNames[input]
			if coreGuiType then
				StarterGui:SetCoreGuiEnabled(coreGuiType, true)
			end
		end
	end
end)

addcmd('disable',{},function(args, speaker)
	local input = args[1] and args[1]:lower()
	if input then
		if input == "reset" then
			StarterGui:SetCore("ResetButtonCallback", false)
		else
			local coreGuiType = coreGuiTypeNames[input]
			if coreGuiType then
				StarterGui:SetCoreGuiEnabled(coreGuiType, false)
			end
		end
	end
end)


local invisGUIS = {}
addcmd('showguis',{},function(args, speaker)
	for i,v in pairs(speaker:FindFirstChildWhichIsA("PlayerGui"):GetDescendants()) do
		if (v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("ScrollingFrame")) and not v.Visible then
			v.Visible = true
			if not FindInTable(invisGUIS,v) then
				table.insert(invisGUIS,v)
			end
		end
	end
end)

addcmd('unshowguis',{},function(args, speaker)
	for i,v in pairs(invisGUIS) do
		v.Visible = false
	end
	invisGUIS = {}
end)

local hiddenGUIS = {}
addcmd('hideguis',{},function(args, speaker)
	for i,v in pairs(speaker:FindFirstChildWhichIsA("PlayerGui"):GetDescendants()) do
		if (v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("ScrollingFrame")) and v.Visible then
			v.Visible = false
			if not FindInTable(hiddenGUIS,v) then
				table.insert(hiddenGUIS,v)
			end
		end
	end
end)

addcmd('unhideguis',{},function(args, speaker)
	for i,v in pairs(hiddenGUIS) do
		v.Visible = true
	end
	hiddenGUIS = {}
end)

function deleteGuisAtPos()
	pcall(function()
		local guisAtPosition = Players.LocalPlayer.PlayerGui:GetGuiObjectsAtPosition(IYMouse.X, IYMouse.Y)
		for _, gui in pairs(guisAtPosition) do
			if gui.Visible == true then
				gui:Destroy()
			end
		end
	end)
end

local deleteGuiInput
addcmd('guidelete',{},function(args, speaker)
	deleteGuiInput = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if not gameProcessedEvent then
			if input.KeyCode == Enum.KeyCode.Backspace then
				deleteGuisAtPos()
			end
		end
	end)
	notify('GUI Delete Enabled','Hover over a GUI and press backspace to delete it')
end)

addcmd('unguidelete',{'noguidelete'},function(args, speaker)
	if deleteGuiInput then deleteGuiInput:Disconnect() end
	notify('GUI Delete Disabled','GUI backspace delete has been disabled')
end)

local wasStayOpen = StayOpen
addcmd('hideiy',{},function(args, speaker)
	isHidden = true
	wasStayOpen = StayOpen
	if StayOpen == true then
		StayOpen = false
		On.BackgroundTransparency = 1
	end
	minimizeNum = 0
	minimizeHolder()
	if not (args[1] and tostring(args[1]) == 'nonotify') then notify('IY Hidden','You can press the prefix key to access the command bar') end
end)

addcmd('showiy',{'unhideiy'},function(args, speaker)
	isHidden = false
	minimizeNum = -20
	if wasStayOpen then
		maximizeHolder()
		StayOpen = true
		On.BackgroundTransparency = 0
	else
		minimizeHolder()
	end
end)

addcmd('rec', {'record'}, function(args, speaker)
	return COREGUI:ToggleRecording()
end)

addcmd('screenshot', {'scrnshot'}, function(args, speaker)
	return COREGUI:TakeScreenshot()
end)

addcmd('togglefs', {'togglefullscreen'}, function(args, speaker)
	return GuiService:ToggleFullscreen()
end)

addcmd('inspect', {'examine'}, function(args, speaker)
	for _, v in ipairs(getPlayer(args[1], speaker)) do
		GuiService:CloseInspectMenu()
		GuiService:InspectPlayerFromUserId(Players[v].UserId)
	end
end)

addcmd('savegame',{'saveplace'},function(args, speaker)
	if saveinstance then
		notify("Loading","Downloading game. This will take a while")
		if getsynasset then
			saveinstance()
		else
			saveinstance(game)
		end
		notify('Game Saved','Saved place to the workspace folder within your exploit folder.')
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing saveinstance)')
	end
end)


addcmd('clearerror',{'clearerrors'},function(args, speaker)
	GuiService:ClearError()
end)

addcmd('clientantikick',{'antikick'},function(args, speaker)
	if not hookmetamethod then 
		return notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
	end
	local LocalPlayer = Players.LocalPlayer
	local oldhmmi
	local oldhmmnc
	oldhmmi = hookmetamethod(game, "__index", function(self, method)
		if self == LocalPlayer and method:lower() == "kick" then
			return error("Expected ':' not '.' calling member function Kick", 2)
		end
		return oldhmmi(self, method)
	end)
	oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
		if self == LocalPlayer and getnamecallmethod():lower() == "kick" then
			return
		end
		return oldhmmnc(self, ...)
	end)

	notify('Client Antikick','Client anti kick is now active (only effective on localscript kick)')
end)

allow_rj = true
addcmd('clientantiteleport',{'antiteleport'},function(args, speaker)
	if not hookmetamethod then 
		return notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
	end
	local TeleportService = TeleportService
	local oldhmmi
	local oldhmmnc
	oldhmmi = hookmetamethod(game, "__index", function(self, method)
		if self == TeleportService then
			if method:lower() == "teleport" then
				return error("Expected ':' not '.' calling member function Kick", 2)
			elseif method == "TeleportToPlaceInstance" then
				return error("Expected ':' not '.' calling member function TeleportToPlaceInstance", 2)
			end
		end
		return oldhmmi(self, method)
	end)
	oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
		if self == TeleportService and getnamecallmethod():lower() == "teleport" or getnamecallmethod() == "TeleportToPlaceInstance" then
			return
		end
		return oldhmmnc(self, ...)
	end)

	notify('Client AntiTP','Client anti teleport is now active (only effective on localscript teleport)')
end)

addcmd('allowrejoin',{'allowrj'},function(args, speaker)
	if args[1] and args[1] == 'false' then
		allow_rj = false
		notify('Client AntiTP','Allow rejoin set to false')
	else
		allow_rj = true
		notify('Client AntiTP','Allow rejoin set to true')
	end
end)

addcmd('cancelteleport',{'canceltp'},function(args, speaker)
	TeleportService:TeleportCancel()
end)

addcmd('volume',{'vol'},function(args, speaker)
	local level = args[1]/10
	UserSettings():GetService("UserGameSettings").MasterVolume = level
end)

addcmd('antilag',{'boostfps','lowgraphics'},function(args, speaker)
	local Terrain = workspace:FindFirstChildOfClass('Terrain')
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 0
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(Lighting:GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
	workspace.DescendantAdded:Connect(function(child)
		task.spawn(function()
			if child:IsA('ForceField') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Sparkles') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') or child:IsA('Fire') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			end
		end)
	end)
end)

addcmd('setfpscap', {'fpscap', 'maxfps'}, function(args, speaker)
	if setfpscap and type(setfpscap) == "function" then
		local num = args[1] or 1e6
		if num == 'none' then
			return setfpscap(1e6)
		elseif num > 0 then
			return setfpscap(num)
		else
			return notify('Invalid argument', "Please provide a number above 0 or 'none'.")
		end
	else
		return notify('Incompatible Exploit', 'Your exploit does not support this command (missing setfpscap)')
	end
end)

addcmd('notify',{},function(args, speaker)
	notify(getstring(1))
end)

addcmd('lastcommand',{'lastcmd'},function(args, speaker)
	if cmdHistory[1]:sub(1,11) ~= 'lastcommand' and cmdHistory[1]:sub(1,7) ~= 'lastcmd' then
		execCmd(cmdHistory[1])
	end
end)

addcmd('esp',{},function(args, speaker)
	if not CHMSenabled then
		ESPenabled = true
		for i,v in pairs(Players:GetChildren()) do
			if v.ClassName == "Player" and v.Name ~= speaker.Name then
				ESP(v)
			end
		end
	else
		notify('ESP','Disable chams (nochams) before using esp')
	end
end)

addcmd('noesp',{'unesp'},function(args, speaker)
	ESPenabled = false
	for i,c in pairs(COREGUI:GetChildren()) do
		if string.sub(c.Name, -4) == '_ESP' then
			c:Destroy()
		end
	end
end)

addcmd('esptransparency',{},function(args, speaker)
    espTransparency = (args[1] and isNumber(args[1]) and args[1]) or 0.3
    updatesaves()
end)

local espParts = {}
local partEspTrigger = nil
function partAdded(part)
	if #espParts > 0 then
		if FindInTable(espParts,part.Name:lower()) then
			local a = Instance.new("BoxHandleAdornment")
			a.Name = part.Name:lower().."_PESP"
			a.Parent = part
			a.Adornee = part
			a.AlwaysOnTop = true
			a.ZIndex = 0
			a.Size = part.Size
			a.Transparency = espTransparency
			a.Color = BrickColor.new("Lime green")
		end
	else
		partEspTrigger:Disconnect()
		partEspTrigger = nil
	end
end

addcmd('partesp',{},function(args, speaker)
	local partEspName = getstring(1):lower()
	if not FindInTable(espParts,partEspName) then
		table.insert(espParts,partEspName)
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and v.Name:lower() == partEspName then
				local a = Instance.new("BoxHandleAdornment")
				a.Name = partEspName.."_PESP"
				a.Parent = v
				a.Adornee = v
				a.AlwaysOnTop = true
				a.ZIndex = 0
				a.Size = v.Size
				a.Transparency = espTransparency
				a.Color = BrickColor.new("Lime green")
			end
		end
	end
	if partEspTrigger == nil then
		partEspTrigger = workspace.DescendantAdded:Connect(partAdded)
	end
end)

addcmd('unpartesp',{'nopartesp'},function(args, speaker)
	if args[1] then
		local partEspName = getstring(1):lower()
		if FindInTable(espParts,partEspName) then
			table.remove(espParts, GetInTable(espParts, partEspName))
		end
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BoxHandleAdornment") and v.Name == partEspName..'_PESP' then
				v:Destroy()
			end
		end
	else
		partEspTrigger:Disconnect()
		partEspTrigger = nil
		espParts = {}
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BoxHandleAdornment") and v.Name:sub(-5) == '_PESP' then
				v:Destroy()
			end
		end
	end
end)

addcmd('chams',{},function(args, speaker)
	if not ESPenabled then
		CHMSenabled = true
		for i,v in pairs(Players:GetChildren()) do
			if v.ClassName == "Player" and v.Name ~= speaker.Name then
				CHMS(v)
			end
		end
	else
		notify('Chams','Disable ESP (noesp) before using chams')
	end
end)

addcmd('nochams',{'unchams'},function(args, speaker)
	CHMSenabled = false
	for i,v in pairs(Players:GetChildren()) do
		local chmsplr = v
		for i,c in pairs(COREGUI:GetChildren()) do
			if c.Name == chmsplr.Name..'_CHMS' then
				c:Destroy()
			end
		end
	end
end)

addcmd('locate',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		Locate(Players[v])
	end
end)

addcmd('nolocate',{'unlocate'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	if args[1] then
		for i,v in pairs(players) do
			for i,c in pairs(COREGUI:GetChildren()) do
				if c.Name == Players[v].Name..'_LC' then
					c:Destroy()
				end
			end
		end
	else
		for i,c in pairs(COREGUI:GetChildren()) do
			if string.sub(c.Name, -3) == '_LC' then
				c:Destroy()
			end
		end
	end
end)

viewing = nil
addcmd('view',{'spectate'},function(args, speaker)
	StopFreecam()
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		if viewDied then
			viewDied:Disconnect()
			viewChanged:Disconnect()
		end
		viewing = Players[v]
		workspace.CurrentCamera.CameraSubject = viewing.Character
		notify('Spectate','Viewing ' .. Players[v].Name)
		local function viewDiedFunc()
			repeat wait() until Players[v].Character ~= nil and getRoot(Players[v].Character)
			workspace.CurrentCamera.CameraSubject = viewing.Character
		end
		viewDied = Players[v].CharacterAdded:Connect(viewDiedFunc)
		local function viewChangedFunc()
			workspace.CurrentCamera.CameraSubject = viewing.Character
		end
		viewChanged = workspace.CurrentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(viewChangedFunc)
	end
end)

addcmd('viewpart',{'viewp'},function(args, speaker)
	StopFreecam()
	if args[1] then
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
				wait(0.1)
				workspace.CurrentCamera.CameraSubject = v
			end
		end
	end
end)

addcmd('unview',{'unspectate'},function(args, speaker)
	StopFreecam()
	if viewing ~= nil then
		viewing = nil
		notify('Spectate','View turned off')
	end
	if viewDied then
		viewDied:Disconnect()
		viewChanged:Disconnect()
	end
	workspace.CurrentCamera.CameraSubject = speaker.Character
end)


fcRunning = false
local Camera = workspace.CurrentCamera
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	local newCamera = workspace.CurrentCamera
	if newCamera then
		Camera = newCamera
	end
end)

local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value

Spring = {} do
	Spring.__index = Spring

	function Spring.new(freq, pos)
		local self = setmetatable({}, Spring)
		self.f = freq
		self.p = pos
		self.v = pos*0
		return self
	end

	function Spring:Update(dt, goal)
		local f = self.f*2*math.pi
		local p0 = self.p
		local v0 = self.v

		local offset = goal - p0
		local decay = math.exp(-f*dt)

		local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
		local v1 = (f*dt*(offset*f - v0) + v0)*decay

		self.p = p1
		self.v = v1

		return p1
	end

	function Spring:Reset(pos)
		self.p = pos
		self.v = pos*0
	end
end

local cameraPos = Vector3.new()
local cameraRot = Vector2.new()

local velSpring = Spring.new(5, Vector3.new())
local panSpring = Spring.new(5, Vector2.new())

Input = {} do

	keyboard = {
		W = 0,
		A = 0,
		S = 0,
		D = 0,
		E = 0,
		Q = 0,
		Up = 0,
		Down = 0,
		LeftShift = 0,
	}

	mouse = {
		Delta = Vector2.new(),
	}

	NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
	PAN_MOUSE_SPEED = Vector2.new(1, 1)*(math.pi/64)
	NAV_ADJ_SPEED = 0.75
	NAV_SHIFT_MUL = 0.25

	navSpeed = 1

	function Input.Vel(dt)
		navSpeed = math.clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

		local kKeyboard = Vector3.new(
			keyboard.D - keyboard.A,
			keyboard.E - keyboard.Q,
			keyboard.S - keyboard.W
		)*NAV_KEYBOARD_SPEED

		local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)

		return (kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
	end

	function Input.Pan(dt)
		local kMouse = mouse.Delta*PAN_MOUSE_SPEED
		mouse.Delta = Vector2.new()
		return kMouse
	end

	do
		function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		function MousePan(action, state, input)
			local delta = input.Delta
			mouse.Delta = Vector2.new(-delta.y, -delta.x)
			return Enum.ContextActionResult.Sink
		end

		function Zero(t)
			for k, v in pairs(t) do
				t[k] = v*0
			end
		end

		function Input.StartCapture()
			ContextActionService:BindActionAtPriority("FreecamKeyboard",Keypress,false,INPUT_PRIORITY,
				Enum.KeyCode.W,
				Enum.KeyCode.A,
				Enum.KeyCode.S,
				Enum.KeyCode.D,
				Enum.KeyCode.E,
				Enum.KeyCode.Q,
				Enum.KeyCode.Up,
				Enum.KeyCode.Down
			)
			ContextActionService:BindActionAtPriority("FreecamMousePan",MousePan,false,INPUT_PRIORITY,Enum.UserInputType.MouseMovement)
		end

		function Input.StopCapture()
			navSpeed = 1
			Zero(keyboard)
			Zero(mouse)
			ContextActionService:UnbindAction("FreecamKeyboard")
			ContextActionService:UnbindAction("FreecamMousePan")
		end
	end
end

function GetFocusDistance(cameraFrame)
	local znear = 0.1
	local viewport = Camera.ViewportSize
	local projy = 2*math.tan(cameraFov/2)
	local projx = viewport.x/viewport.y*projy
	local fx = cameraFrame.rightVector
	local fy = cameraFrame.upVector
	local fz = cameraFrame.lookVector

	local minVect = Vector3.new()
	local minDist = 512

	for x = 0, 1, 0.5 do
		for y = 0, 1, 0.5 do
			local cx = (x - 0.5)*projx
			local cy = (y - 0.5)*projy
			local offset = fx*cx - fy*cy + fz
			local origin = cameraFrame.p + offset*znear
			local _, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
			local dist = (hit - origin).magnitude
			if minDist > dist then
				minDist = dist
				minVect = offset.unit
			end
		end
	end

	return fz:Dot(minVect)*minDist
end

local function StepFreecam(dt)
	local vel = velSpring:Update(dt, Input.Vel(dt))
	local pan = panSpring:Update(dt, Input.Pan(dt))

	local zoomFactor = math.sqrt(math.tan(math.rad(70/2))/math.tan(math.rad(cameraFov/2)))

	cameraRot = cameraRot + pan*Vector2.new(0.75, 1)*8*(dt/zoomFactor)
	cameraRot = Vector2.new(math.clamp(cameraRot.x, -math.rad(90), math.rad(90)), cameraRot.y%(2*math.pi))

	local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*Vector3.new(1, 1, 1)*64*dt)
	cameraPos = cameraCFrame.p

	Camera.CFrame = cameraCFrame
	Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
	Camera.FieldOfView = cameraFov
end

local PlayerState = {} do
	mouseBehavior = ""
	mouseIconEnabled = ""
	cameraType = ""
	cameraFocus = ""
	cameraCFrame = ""
	cameraFieldOfView = ""

	function PlayerState.Push()
		cameraFieldOfView = Camera.FieldOfView
		Camera.FieldOfView = 70

		cameraType = Camera.CameraType
		Camera.CameraType = Enum.CameraType.Custom

		cameraCFrame = Camera.CFrame
		cameraFocus = Camera.Focus

		mouseIconEnabled = UserInputService.MouseIconEnabled
		UserInputService.MouseIconEnabled = true

		mouseBehavior = UserInputService.MouseBehavior
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
	end

	function PlayerState.Pop()
		Camera.FieldOfView = 70

		Camera.CameraType = cameraType
		cameraType = nil

		Camera.CFrame = cameraCFrame
		cameraCFrame = nil

		Camera.Focus = cameraFocus
		cameraFocus = nil

		UserInputService.MouseIconEnabled = mouseIconEnabled
		mouseIconEnabled = nil

		UserInputService.MouseBehavior = mouseBehavior
		mouseBehavior = nil
	end
end

function StartFreecam(pos)
	if fcRunning then
		StopFreecam()
	end
	local cameraCFrame = Camera.CFrame
	if pos then
		cameraCFrame = pos
	end
	cameraRot = Vector2.new()
	cameraPos = cameraCFrame.p
	cameraFov = Camera.FieldOfView

	velSpring:Reset(Vector3.new())
	panSpring:Reset(Vector2.new())

	PlayerState.Push()
	RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
	Input.StartCapture()
	fcRunning = true
end

function StopFreecam()
	if not fcRunning then return end
	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
	workspace.Camera.FieldOfView = 70
	fcRunning = false
end

addcmd('freecam',{'fc'},function(args, speaker)
	StartFreecam()
end)

addcmd('freecampos',{'fcpos','fcp','freecamposition','fcposition'},function(args, speaker)
	if not args[1] then return end
	local freecamPos = CFrame.new(args[1],args[2],args[3])
	StartFreecam(freecamPos)
end)

addcmd('freecamwaypoint',{'fcwp'},function(args, speaker)
	local WPName = tostring(getstring(1))
	if speaker.Character then
		for i,_ in pairs(WayPoints) do
			local x = WayPoints[i].COORD[1]
			local y = WayPoints[i].COORD[2]
			local z = WayPoints[i].COORD[3]
			if tostring(WayPoints[i].NAME):lower() == tostring(WPName):lower() then
				StartFreecam(CFrame.new(x,y,z))
			end
		end
		for i,_ in pairs(pWayPoints) do
			if tostring(pWayPoints[i].NAME):lower() == tostring(WPName):lower() then
				StartFreecam(CFrame.new(pWayPoints[i].COORD[1].Position))
			end
		end
	end
end)

addcmd('freecamgoto',{'fcgoto','freecamtp','fctp'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		StartFreecam(getRoot(Players[v].Character).CFrame)
	end
end)

addcmd('unfreecam',{'nofreecam','unfc','nofc'},function(args, speaker)
	StopFreecam()
end)

addcmd('freecamspeed',{'fcspeed'},function(args, speaker)
	local FCspeed = args[1] or 1
	if isNumber(FCspeed) then
		NAV_KEYBOARD_SPEED = Vector3.new(FCspeed, FCspeed, FCspeed)
	end
end)

addcmd('notifyfreecamposition',{'notifyfcpos'},function(args, speaker)
	if fcRunning then
		local X,Y,Z = workspace.CurrentCamera.CFrame.Position.X,workspace.CurrentCamera.CFrame.Position.Y,workspace.CurrentCamera.CFrame.Position.Z
		local Format, Round = string.format, math.round
		notify("Current Position", Format("%s, %s, %s", Round(X), Round(Y), Round(Z)))
	end
end)

addcmd('copyfreecamposition',{'copyfcpos'},function(args, speaker)
	if fcRunning then
		local X,Y,Z = workspace.CurrentCamera.CFrame.Position.X,workspace.CurrentCamera.CFrame.Position.Y,workspace.CurrentCamera.CFrame.Position.Z
		local Format, Round = string.format, math.round
		toClipboard(Format("%s, %s, %s", Round(X), Round(Y), Round(Z)))
	end
end)

addcmd('gotocamera',{'gotocam','tocam'},function(args, speaker)
	getRoot(speaker.Character).CFrame = workspace.Camera.CFrame
end)

addcmd('tweengotocamera',{'tweengotocam','tgotocam','ttocam'},function(args, speaker)
	TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = workspace.Camera.CFrame}):Play()
end)

addcmd('fov',{},function(args, speaker)
	local fov = args[1] or 70
	if isNumber(fov) then
		workspace.CurrentCamera.FieldOfView = fov
	end
end)

local preMaxZoom = Players.LocalPlayer.CameraMaxZoomDistance
local preMinZoom = Players.LocalPlayer.CameraMinZoomDistance
addcmd('lookat',{},function(args, speaker)
	if speaker.CameraMaxZoomDistance ~= 0.5 then
		preMaxZoom = speaker.CameraMaxZoomDistance
		preMinZoom = speaker.CameraMinZoomDistance
	end
	speaker.CameraMaxZoomDistance = 0.5
	speaker.CameraMinZoomDistance = 0.5
	wait()
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local target = Players[v].Character
		if target and target:FindFirstChild('Head') then
			workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, target.Head.CFrame.p)
			wait(0.1)
		end
	end
	speaker.CameraMaxZoomDistance = preMaxZoom
	speaker.CameraMinZoomDistance = preMinZoom
end)

addcmd('fixcam',{'restorecam'},function(args, speaker)
	StopFreecam()
	execCmd('unview')
	workspace.CurrentCamera:remove()
	wait(.1)
	repeat wait() until speaker.Character ~= nil
	workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	speaker.CameraMinZoomDistance = 0.5
	speaker.CameraMaxZoomDistance = 400
	speaker.CameraMode = "Classic"
	speaker.Character.Head.Anchored = false
end)

addcmd('enableshiftlock',{'enablesl','shiftlock'},function(args, speaker)
	speaker.DevEnableMouseLock = true
	notify('Shiftlock','Shift lock is now available')
end)

addcmd('firstp',{},function(args, speaker)
	speaker.CameraMode = "LockFirstPerson"
end)

addcmd('thirdp',{},function(args, speaker)
	speaker.CameraMode = "Classic"
end)

addcmd('noclipcam', {'nccam'}, function(args, speaker)
	local sc = (debug and debug.setconstant) or setconstant
	local gc = (debug and debug.getconstants) or getconstants
	if not sc or not getgc or not gc then
		return notify('Incompatible Exploit', 'Your exploit does not support this command (missing setconstant or getconstants or getgc)')
	end
	local pop = speaker.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper
	for _, v in pairs(getgc()) do
		if type(v) == 'function' and getfenv(v).script == pop then
			for i, v1 in pairs(gc(v)) do
				if tonumber(v1) == .25 then
					sc(v, i, 0)
				elseif tonumber(v1) == 0 then
					sc(v, i, .25)
				end
			end
		end
	end
end)

addcmd('maxzoom',{},function(args, speaker)
	speaker.CameraMaxZoomDistance = args[1]
end)

addcmd('minzoom',{},function(args, speaker)
	speaker.CameraMinZoomDistance = args[1]
end)

addcmd('camdistance',{},function(args, speaker)
	local camMax = speaker.CameraMaxZoomDistance
	local camMin = speaker.CameraMinZoomDistance
	if camMax < tonumber(args[1]) then
		camMax = args[1]
	end
	speaker.CameraMaxZoomDistance = args[1]
	speaker.CameraMinZoomDistance = args[1]
	wait()
	speaker.CameraMaxZoomDistance = camMax
	speaker.CameraMinZoomDistance = camMin
end)

addcmd('unlockws',{'unlockworkspace'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Locked = false
		end
	end
end)

addcmd('lockws',{'lockworkspace'},function(args, speaker) 
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Locked = true
		end
	end
end)

addcmd('delete',{'remove'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() then
			v:Destroy()
		end
	end
	notify('Item(s) Deleted','Deleted ' ..getstring(1))
end)

addcmd('deleteclass',{'removeclass','deleteclassname','removeclassname','dc'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() then
			v:Destroy()
		end
	end
	notify('Item(s) Deleted','Deleted items with ClassName ' ..getstring(1))
end)

addcmd('chardelete',{'charremove','cd'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() then
			v:Destroy()
		end
	end
	notify('Item(s) Deleted','Deleted ' ..getstring(1))
end)

addcmd('chardeleteclass',{'charremoveclass','chardeleteclassname','charremoveclassname','cdc'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() then
			v:Destroy()
		end
	end
	notify('Item(s) Deleted','Deleted items with ClassName ' ..getstring(1))
end)

addcmd('deletevelocity',{'dv','removevelocity','removeforces'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("BodyVelocity") or v:IsA("BodyGyro") or v:IsA("RocketPropulsion") or v:IsA("BodyThrust") or v:IsA("BodyAngularVelocity") or v:IsA("AngularVelocity") or v:IsA("BodyForce") or v:IsA("VectorForce") or v:IsA("LineForce") then
			v:Destroy()
		end
	end
end)

addcmd('deleteinvisparts',{'deleteinvisibleparts','dip'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") and v.Transparency == 1 and v.CanCollide then
			v:Destroy()
		end
	end
end)

local shownParts = {}
addcmd('invisibleparts',{'invisparts'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") and v.Transparency == 1 then
			if not table.find(shownParts,v) then
				table.insert(shownParts,v)
			end
			v.Transparency = 0
		end
	end
end)

addcmd('uninvisibleparts',{'uninvisparts'},function(args, speaker)
	for i,v in pairs(shownParts) do
		v.Transparency = 1
	end
	shownParts = {}
end)

addcmd('btools',{},function(args, speaker)
	for i = 1, 4 do
		local Tool = Instance.new("HopperBin")
		Tool.BinType = i
		Tool.Name = randomString()
		Tool.Parent = speaker:FindFirstChildOfClass("Backpack")
	end
end)

addcmd('f3x',{'fex'},function(args, speaker)
	loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end)

addcmd('partpath',{'partname'},function(args, speaker)
	selectPart()
end)

addcmd('antiafk',{'antiidle'},function(args, speaker)
	local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
		Players.LocalPlayer.Idled:Connect(function()
			local VirtualUser = game:GetService("VirtualUser")
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end
	if not (args[1] and tostring(args[1]) == 'nonotify') then notify('Anti Idle','Anti idle is enabled') end
end)

addcmd('datalimit',{},function(args, speaker)
	if tonumber(args[1]) then
		NetworkClient:SetOutgoingKBPSLimit(args[1])
	end
end)

addcmd('replicationlag',{'backtrack'},function(args, speaker)
	if tonumber(args[1]) then
		settings():GetService("NetworkSettings").IncomingReplicationLag = args[1]
	end
end)

addcmd('noprompts', {'nopurchaseprompts'}, function(args, speaker)
	COREGUI.PurchasePrompt.Enabled = false
end)

addcmd('showprompts', {'showpurchaseprompts'}, function(args, speaker)
	COREGUI.PurchasePrompt.Enabled = true
end)

addcmd('age',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	local ages = {}
	for i,v in pairs(players) do
		local p = Players[v]
		table.insert(ages, p.Name.."'s age is: "..p.AccountAge)
	end
	notify('Account Age',table.concat(ages, ',\n'))
end)

addcmd('chatage',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	local ages = {}
	for i,v in pairs(players) do
		local p = Players[v]
		table.insert(ages, p.Name.."'s age is: "..p.AccountAge)
	end
	local chatString = table.concat(ages, ', ')
	ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chatString, "All")
end)

addcmd('joindate',{'jd'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	local dates = {}
	notify("Loading",'Hold on a sec')
	for i,v in pairs(players) do
		local user = game:HttpGet("https://users.roblox.com/v1/users/"..Players[v].UserId)
		local json = HttpService:JSONDecode(user)
		local date = json["created"]:sub(1,10)
		local splitDates = string.split(date,"-")
		table.insert(dates,Players[v].Name.." joined: "..splitDates[2].."/"..splitDates[3].."/"..splitDates[1])
	end
	notify('Join Date (Month/Day/Year)',table.concat(dates, ',\n'))
end)

addcmd('chatjoindate',{'cjd'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	local dates = {}
	notify("Loading",'Hold on a sec')
	for i,v in pairs(players) do
		local user = game:HttpGet("https://users.roblox.com/v1/users/"..Players[v].UserId)
		local json = HttpService:JSONDecode(user)
		local date = json["created"]:sub(1,10)
		local splitDates = string.split(date,"-")
		table.insert(dates,Players[v].Name.." joined: "..splitDates[2].."/"..splitDates[3].."/"..splitDates[1])
	end
	local chatString = table.concat(dates, ', ')
	ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chatString, "All")
end)

addcmd('copyname',{'copyuser'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local name = tostring(Players[v].Name)
		toClipboard(name)
	end
end)

addcmd('userid',{'id'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local id = tostring(Players[v].UserId)
		notify('User ID',id)
	end
end)

addcmd('copyid',{'copyuserid'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local id = tostring(Players[v].UserId)
		toClipboard(id)
	end
end)

addcmd('creatorid',{'creator'},function(args, speaker)
	if game.CreatorType == Enum.CreatorType.User then
		notify('Creator ID',game.CreatorId)
	elseif game.CreatorType == Enum.CreatorType.Group then
		local OwnerID = GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
		speaker.UserId = OwnerID
		notify('Creator ID',OwnerID)
	end
end)

addcmd('copycreatorid',{'copycreator'},function(args, speaker)
	if game.CreatorType == Enum.CreatorType.User then
		toClipboard(game.CreatorId)
		notify('Copied ID','Copied creator ID to clipboard')
	elseif game.CreatorType == Enum.CreatorType.Group then
		local OwnerID = GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
		toClipboard(OwnerID)
		notify('Copied ID','Copied creator ID to clipboard')
	end
end)

addcmd('setcreatorid',{'setcreator'},function(args, speaker)
	if game.CreatorType == Enum.CreatorType.User then
		speaker.UserId = game.CreatorId
		notify('Set ID','Set UserId to '..game.CreatorId)
	elseif game.CreatorType == Enum.CreatorType.Group then
		local OwnerID = GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
		speaker.UserId = OwnerID
		notify('Set ID','Set UserId to '..OwnerID)
	end
end)

addcmd('appearanceid',{'aid'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local aid = tostring(Players[v].CharacterAppearanceId)
		notify('Appearance ID',aid)
	end
end)

addcmd('copyappearanceid',{'caid'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local aid = tostring(Players[v].CharacterAppearanceId)
		toClipboard(aid)
	end
end)

addcmd('norender',{},function(args, speaker)
	RunService:Set3dRenderingEnabled(false)
end)

addcmd('render',{},function(args, speaker)
	RunService:Set3dRenderingEnabled(true)
end)

addcmd('2022materials',{'use2022materials'},function(args, speaker)
	if sethidden then
		sethidden(MaterialService, "Use2022Materials", true)
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('un2022materials',{'unuse2022materials'},function(args, speaker)
	if sethidden then
		sethidden(MaterialService, "Use2022Materials", false)
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('goto',{'to'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			getRoot(speaker.Character).CFrame = getRoot(Players[v].Character).CFrame + Vector3.new(3,1,0)
		end
	end
	execCmd('breakvelocity')
end)

addcmd('tweengoto',{'tgoto','tto','tweento'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = getRoot(Players[v].Character).CFrame + Vector3.new(3,1,0)}):Play()
		end
	end
	execCmd('breakvelocity')
end)

addcmd('vehiclegoto',{'vgoto','vtp','vehicletp'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			local seat = speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart
			local vehicleModel = seat:FindFirstAncestorWhichIsA("Model")
			vehicleModel:MoveTo(getRoot(Players[v].Character).Position)
		end
	end
end)

addcmd('pulsetp',{'ptp'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			local startPos = getRoot(speaker.Character).CFrame
			local seconds = args[2] or 1
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			getRoot(speaker.Character).CFrame = getRoot(Players[v].Character).CFrame + Vector3.new(3,1,0)
			wait(seconds)
			getRoot(speaker.Character).CFrame = startPos
		end
	end
	execCmd('breakvelocity')
end)

local vnoclipParts = {}
addcmd('vehiclenoclip',{'vnoclip'},function(args, speaker)
	vnoclipParts = {}
	local seat = speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart
	local vehicleModel = seat.Parent
	repeat
		if vehicleModel.ClassName ~= "Model" then
			vehicleModel = vehicleModel.Parent
		end
	until vehicleModel.ClassName == "Model"
	wait(0.1)
	execCmd('noclip')
	for i,v in pairs(vehicleModel:GetDescendants()) do
		if v:IsA("BasePart") and v.CanCollide then
			table.insert(vnoclipParts,v)
			v.CanCollide = false
		end
	end
end)

addcmd('vehicleclip',{'vclip','unvnoclip','unvehiclenoclip'},function(args, speaker)
	execCmd('clip')
	for i,v in pairs(vnoclipParts) do
		v.CanCollide = true
	end
	vnoclipParts = {}
end)

addcmd('togglevnoclip',{},function(args, speaker)
	if Clip then
		execCmd('vnoclip')
	else
		execCmd('vclip')
	end
end)

addcmd('clientbring',{'cbring'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			if Players[v].Character:FindFirstChildOfClass('Humanoid') then
				Players[v].Character:FindFirstChildOfClass('Humanoid').Sit = false
			end
			wait()
			getRoot(Players[v].Character).CFrame = getRoot(speaker.Character).CFrame + Vector3.new(3,1,0)
		end
	end
end)

local bringT = {}
addcmd('loopbring',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		task.spawn(function()
			if Players[v].Name ~= speaker.Name and not FindInTable(bringT, Players[v].Name) then
				table.insert(bringT, Players[v].Name)
				local plrName = Players[v].Name
				local pchar=Players[v].Character
				local distance = 3
				if args[2] and isNumber(args[2]) then
					distance = args[2]
				end
				local lDelay = 0
				if args[3] and isNumber(args[3]) then
					lDelay = args[3]
				end
				repeat
					for i,c in pairs(players) do
						if Players:FindFirstChild(v) then
							pchar = Players[v].Character
							if pchar~= nil and Players[v].Character ~= nil and getRoot(pchar) and speaker.Character ~= nil and getRoot(speaker.Character) then
								getRoot(pchar).CFrame = getRoot(speaker.Character).CFrame + Vector3.new(distance,1,0)
							end
							wait(lDelay)
						else 
							for a,b in pairs(bringT) do if b == plrName then table.remove(bringT, a) end end
						end
					end
				until not FindInTable(bringT, plrName)
			end
		end)
	end
end)

addcmd('unloopbring',{'noloopbring'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		task.spawn(function()
			for a,b in pairs(bringT) do if b == Players[v].Name then table.remove(bringT, a) end end
		end)
	end
end)

local walkto = false
local waypointwalkto = false
addcmd('walkto',{'follow'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			walkto = true
			repeat wait()
				speaker.Character:FindFirstChildOfClass('Humanoid'):MoveTo(getRoot(Players[v].Character).Position)
			until Players[v].Character == nil or not getRoot(Players[v].Character) or walkto == false
		end
	end
end)

addcmd('pathfindwalkto',{'pathfindfollow'},function(args, speaker)
	walkto = false
	wait()
	local players = getPlayer(args[1], speaker)
	local hum = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	local path = PathService:CreatePath()
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			walkto = true
			repeat wait()
				local success, response = pcall(function()
					path:ComputeAsync(getRoot(speaker.Character).Position, getRoot(Players[v].Character).Position)
					local waypoints = path:GetWaypoints()
					local distance 
					for waypointIndex, waypoint in pairs(waypoints) do
						local waypointPosition = waypoint.Position
						hum:MoveTo(waypointPosition)
						repeat 
							distance = (waypointPosition - hum.Parent.PrimaryPart.Position).magnitude
							wait()
						until
						distance <= 5
					end	 
				end)
				if not success then
					speaker.Character:FindFirstChildOfClass('Humanoid'):MoveTo(getRoot(Players[v].Character).Position)
				end
			until Players[v].Character == nil or not getRoot(Players[v].Character) or walkto == false
		end
	end
end)

addcmd('pathfindwalktowaypoint',{'pathfindwalktowp'},function(args, speaker)
	waypointwalkto = false
	wait()
	local WPName = tostring(getstring(1))
	local hum = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	local path = PathService:CreatePath()
	if speaker.Character then
		for i,_ in pairs(WayPoints) do
			if tostring(WayPoints[i].NAME):lower() == tostring(WPName):lower() then
				if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
					speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
					wait(.1)
				end
				local TrueCoords = Vector3.new(WayPoints[i].COORD[1], WayPoints[i].COORD[2], WayPoints[i].COORD[3])
				waypointwalkto = true
				repeat wait()
					local success, response = pcall(function()
						path:ComputeAsync(getRoot(speaker.Character).Position, TrueCoords)
						local waypoints = path:GetWaypoints()
						local distance 
						for waypointIndex, waypoint in pairs(waypoints) do
							local waypointPosition = waypoint.Position
							hum:MoveTo(waypointPosition)
							repeat 
								distance = (waypointPosition - hum.Parent.PrimaryPart.Position).magnitude
								wait()
							until
							distance <= 5
						end
					end)
					if not success then
						speaker.Character:FindFirstChildOfClass('Humanoid'):MoveTo(TrueCoords)
					end
				until not speaker.Character or waypointwalkto == false
			end
		end
		for i,_ in pairs(pWayPoints) do
			if tostring(pWayPoints[i].NAME):lower() == tostring(WPName):lower() then
				if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
					speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
					wait(.1)
				end
				local TrueCoords = pWayPoints[i].COORD[1].Position
				waypointwalkto = true
				repeat wait()
					local success, response = pcall(function()
						path:ComputeAsync(getRoot(speaker.Character).Position, TrueCoords)
						local waypoints = path:GetWaypoints()
						local distance 
						for waypointIndex, waypoint in pairs(waypoints) do
							local waypointPosition = waypoint.Position
							hum:MoveTo(waypointPosition)
							repeat 
								distance = (waypointPosition - hum.Parent.PrimaryPart.Position).magnitude
								wait()
							until
							distance <= 5
						end
					end)
					if not success then
						speaker.Character:FindFirstChildOfClass('Humanoid'):MoveTo(TrueCoords)
					end
				until not speaker.Character or waypointwalkto == false
			end
		end
	end
end)

addcmd('unwalkto',{'nowalkto','unfollow','nofollow'},function(args, speaker)
	walkto = false
	waypointwalkto = false
end)

addcmd('freeze',{'fr'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	if players ~= nil then
		for i,v in pairs(players) do
			task.spawn(function()
				for i, x in next, Players[v].Character:GetDescendants() do
					if x:IsA("BasePart") and not x.Anchored then
						x.Anchored = true
					end
				end
			end)
		end
	end
end)


addcmd('thaw',{'unfreeze','unfr'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	if players ~= nil then
		for i,v in pairs(players) do
			task.spawn(function()
				for i, x in next, Players[v].Character:GetDescendants() do
					if x.Name ~= floatName and x:IsA("BasePart") and x.Anchored then
						x.Anchored = false
					end
				end
			end)
		end
	end
end)

oofing = false
addcmd('loopoof',{},function(args, speaker)
	oofing = true
	repeat wait(0.1)
		for i,v in pairs(Players:GetPlayers()) do
			if v.Character ~= nil and v.Character:FindFirstChild'Head' then
				for _,x in pairs(v.Character.Head:GetChildren()) do
					if x:IsA'Sound' then x.Playing = true end
				end
			end
		end
	until oofing == false
end)

addcmd('unloopoof',{},function(args, speaker)
	oofing = false
end)

local notifiedRespectFiltering = false
addcmd('muteboombox',{},function(args, speaker)
	if not notifiedRespectFiltering and SoundService.RespectFilteringEnabled then notifiedRespectFiltering = true notify('RespectFilteringEnabled','RespectFilteringEnabled is set to true (the command will still work but may only be clientsided)') end
	local players = getPlayer(args[1], speaker)
	if players ~= nil then
		for i,v in pairs(players) do
			task.spawn(function()
				for i, x in next, Players[v].Character:GetDescendants() do
					if x:IsA("Sound") and x.Playing == true then
						x.Playing = false
					end
				end
				for i, x in next, Players[v]:FindFirstChildOfClass("Backpack"):GetDescendants() do
					if x:IsA("Sound") and x.Playing == true then
						x.Playing = false
					end
				end
			end)
		end
	end
end)

addcmd('unmuteboombox',{},function(args, speaker)
	if not notifiedRespectFiltering and SoundService.RespectFilteringEnabled then notifiedRespectFiltering = true notify('RespectFilteringEnabled','RespectFilteringEnabled is set to true (the command will still work but may only be clientsided)') end
	local players = getPlayer(args[1], speaker)
	if players ~= nil then
		for i,v in pairs(players) do
			task.spawn(function()
				for i, x in next, Players[v].Character:GetDescendants() do
					if x:IsA("Sound") and x.Playing == false then
						x.Playing = true
					end
				end
			end)
		end
	end
end)

addcmd('reset',{},function(args, speaker)
	speaker.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Dead)
end)

addcmd('freezeanims',{},function(args, speaker)
	local Humanoid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
	local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
	for _, v in pairs(ActiveTracks) do
		v:AdjustSpeed(0)
	end
end)

addcmd('unfreezeanims',{},function(args, speaker)
	local Humanoid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
	local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
	for _, v in pairs(ActiveTracks) do
		v:AdjustSpeed(1)
	end
end)




addcmd('respawn',{},function(args, speaker)
	respawn(speaker)
end)

addcmd('refresh',{'re'},function(args, speaker)
	refresh(speaker)
end)

addcmd('god',{},function(args, speaker)
	local Cam = workspace.CurrentCamera
	local Pos, Char = Cam.CFrame, speaker.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	local nHuman = Human.Clone(Human)
	nHuman.Parent, speaker.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, "Animate")
	if Script then
		Script.Disabled = true
		wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth
end)

invisRunning = false
addcmd('invisible',{'invis'},function(args, speaker)
	if invisRunning then return end
	invisRunning = true
	-- Full credit to AmokahFox @V3rmillion
	local Player = speaker
	repeat wait(.1) until Player.Character
	local Character = Player.Character
	Character.Archivable = true
	local IsInvis = false
	local IsRunning = true
	local InvisibleCharacter = Character:Clone()
	InvisibleCharacter.Parent = Lighting
	local Void = workspace.FallenPartsDestroyHeight
	InvisibleCharacter.Name = ""
	local CF

	local invisFix = RunService.Stepped:Connect(function()
		pcall(function()
			local IsInteger
			if tostring(Void):find'-' then
				IsInteger = true
			else
				IsInteger = false
			end
			local Pos = Player.Character.HumanoidRootPart.Position
			local Pos_String = tostring(Pos)
			local Pos_Seperate = Pos_String:split(', ')
			local X = tonumber(Pos_Seperate[1])
			local Y = tonumber(Pos_Seperate[2])
			local Z = tonumber(Pos_Seperate[3])
			if IsInteger == true then
				if Y <= Void then
					Respawn()
				end
			elseif IsInteger == false then
				if Y >= Void then
					Respawn()
				end
			end
		end)
	end)

	for i,v in pairs(InvisibleCharacter:GetDescendants())do
		if v:IsA("BasePart") then
			if v.Name == "HumanoidRootPart" then
				v.Transparency = 1
			else
				v.Transparency = .5
			end
		end
	end

	function Respawn()
		IsRunning = false
		if IsInvis == true then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				IsInvis = false
				InvisibleCharacter.Parent = nil
				invisRunning = false
			end)
		elseif IsInvis == false then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				TurnVisible()
			end)
		end
	end

	local invisDied
	invisDied = InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
		Respawn()
		invisDied:Disconnect()
	end)

	if IsInvis == true then return end
	IsInvis = true
	CF = workspace.CurrentCamera.CFrame
	local CF_1 = Player.Character.HumanoidRootPart.CFrame
	Character:MoveTo(Vector3.new(0,math.pi*1000000,0))
	workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	wait(.2)
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	InvisibleCharacter = InvisibleCharacter
	Character.Parent = Lighting
	InvisibleCharacter.Parent = workspace
	InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
	Player.Character = InvisibleCharacter
	execCmd('fixcam')
	Player.Character.Animate.Disabled = true
	Player.Character.Animate.Disabled = false

	function TurnVisible()
		if IsInvis == false then return end
		invisFix:Disconnect()
		invisDied:Disconnect()
		CF = workspace.CurrentCamera.CFrame
		Character = Character
		local CF_1 = Player.Character.HumanoidRootPart.CFrame
		Character.HumanoidRootPart.CFrame = CF_1
		InvisibleCharacter:Destroy()
		Player.Character = Character
		Character.Parent = workspace
		IsInvis = false
		Player.Character.Animate.Disabled = true
		Player.Character.Animate.Disabled = false
		invisDied = Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
			Respawn()
			invisDied:Disconnect()
		end)
		invisRunning = false
	end
	notify('Invisible','You now appear invisible to other players')
end)

addcmd('visible',{'vis'},function(args, speaker)
	TurnVisible()
end)

addcmd('toggleinvis',{},function(args, speaker)
	if invisRunning then
		execCmd('visible')
	else
		execCmd('invisible')
	end
end)

addcmd('toolinvisible',{'toolinvis','tinvis'},function(args, speaker)
	local Char  = Players.LocalPlayer.Character
	local touched = false
	local tpdback = false
	local box = Instance.new('Part')
	box.Anchored = true
	box.CanCollide = true
	box.Size = Vector3.new(10,1,10)
	box.Position = Vector3.new(0,10000,0)
	box.Parent = workspace
	local boxTouched = box.Touched:connect(function(part)
		if (part.Parent.Name == Players.LocalPlayer.Name) then
			if touched == false then
				touched = true
				local function apply()
					local no = Char.HumanoidRootPart:Clone()
					wait(.25)
					Char.HumanoidRootPart:Destroy()
					no.Parent = Char
					Char:MoveTo(loc)
					touched = false
				end
				if Char then
					apply()
				end
			end
		end
	end)
	repeat wait() until Char
	local cleanUp
	cleanUp = Players.LocalPlayer.CharacterAdded:connect(function(char)
		boxTouched:Disconnect()
		box:Destroy()
		cleanUp:Disconnect()
	end)
	loc = Char.HumanoidRootPart.Position
	Char:MoveTo(box.Position + Vector3.new(0,.5,0))
end)

addcmd('strengthen',{},function(args, speaker)
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			if args[1] then
				child.CustomPhysicalProperties = PhysicalProperties.new(args[1], 0.3, 0.5)
			else
				child.CustomPhysicalProperties = PhysicalProperties.new(100, 0.3, 0.5)
			end
		end
	end
end)

addcmd('weaken',{},function(args, speaker)
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			if args[1] then
				child.CustomPhysicalProperties = PhysicalProperties.new(-args[1], 0.3, 0.5)
			else
				child.CustomPhysicalProperties = PhysicalProperties.new(0, 0.3, 0.5)
			end
		end
	end
end)

addcmd('unweaken',{'unstrengthen'},function(args, speaker)
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
end)

addcmd('breakvelocity', {}, function(args, speaker)
	local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
	delay(1, function()
		BeenASecond = true
	end)
	while not BeenASecond do
		for _, v in ipairs(speaker.Character:GetDescendants()) do
			if v.IsA(v, "BasePart") then
				v.Velocity, v.RotVelocity = V3, V3
			end
		end
		wait()
	end
end)

addcmd('jpower',{'jumppower','jp'},function(args, speaker)
	local jpower = args[1] or 50
	if isNumber(jpower) then
		if speaker.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
			speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower = jpower
		else
			speaker.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = jpower
		end
	end
end)

addcmd('maxslopeangle',{'msa'},function(args, speaker)
	local sangle = args[1] or 89
	if isNumber(sangle) then
		speaker.Character:FindFirstChildOfClass('Humanoid').MaxSlopeAngle = sangle
	end
end)

addcmd('gravity',{'grav'},function(args, speaker)
	local grav = args[1] or 196.2
	if isNumber(grav) then
		workspace.Gravity = grav
	end
end)

addcmd('hipheight',{'hheight'},function(args, speaker)
	local height
	if r15(speaker) then
		height = args[1] or 2.1
	else
		height = args[1] or 0
	end
	speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = height
end)

addcmd('dance', {}, function(args, speaker)
	if not r15(speaker) then
		local dances = {"27789359", "30196114", "248263260", "45834924", "33796059", "28488254", "52155728"}
		local animation = Instance.new("Animation")
		animation.AnimationId = "rbxassetid://" .. dances[math.random(1, #dances)]
		animTrack = speaker.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(animation)
		animTrack:Play()
	else
		notify('R6 Required', 'This command requires the r6 rig type')
	end
end)

addcmd('undance',{'nodance'},function(args, speaker)
	animTrack:Stop()
	animTrack:Destroy()
end)

addcmd('nolimbs',{'rlimbs'},function(args, speaker)
	if r15(speaker) then
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperLeg" or
				v.Name == "LeftUpperLeg" or
				v.Name == "RightUpperArm" or
				v.Name == "LeftUpperArm" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Leg" or
				v.Name == "Left Leg" or
				v.Name == "Right Arm" or
				v.Name == "Left Arm" then
				v:Destroy()
			end
		end
	end
end)

addcmd('nohead',{'rhead','headless'},function(args, speaker)
	if sethidden then
		-- Full credit to Thomas_Cornez#0272 @Discord
		local lplr = Players.LocalPlayer
		local char = lplr.Character
		local rigType = tostring(char:FindFirstChildOfClass('Humanoid').RigType) == "Enum.HumanoidRigType.R6" and 1 or tostring(char:FindFirstChildOfClass('Humanoid').RigType) == "Enum.HumanoidRigType.R15" and 2

		local speaker = Players.LocalPlayer


		local test = Instance.new("Model")
		local hum  = Instance.new("Humanoid")
		local animation = Instance.new("Model")
		local humanoidanimation = Instance.new("Humanoid")
		test.Parent = workspace
		hum.Parent = test
		animation.Parent = workspace
		humanoidanimation.Parent = animation

		lplr.Character = test
		wait(2)
		char:FindFirstChildOfClass('Humanoid').Animator.Parent = humanoidanimation
		char:FindFirstChildOfClass('Humanoid'):Destroy()

		char.Head:Destroy()
		wait(5)
		Players.LocalPlayer.Character = char

		local hum2 = Instance.new("Humanoid")
		hum2.Parent = char
		char:FindFirstChildOfClass("Humanoid").Jump = true

		humanoidanimation.Animator.Parent = hum2
		char.Animate.Disabled = true
		wait()
		char.Animate.Disabled = false
		wait()

		if rig == 1 then
			hum2.HipHeight = 0
		elseif rig == 2 then
			hum2.HipHeight = 2.19
		end
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('noarms',{'rarms'},function(args, speaker)
	if r15(speaker) then
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperArm" or
				v.Name == "LeftUpperArm" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Arm" or
				v.Name == "Left Arm" then
				v:Destroy()
			end
		end
	end
end)

addcmd('nolegs',{'rlegs'},function(args, speaker)
	if r15(speaker) then
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperLeg" or
				v.Name == "LeftUpperLeg" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Leg" or
				v.Name == "Left Leg" then
				v:Destroy()
			end
		end
	end
end)

addcmd('sit',{},function(args, speaker)
	speaker.Character:FindFirstChildOfClass("Humanoid").Sit = true
end)

addcmd('lay', {'laydown'}, function(args, speaker)
	local Human = speaker.Character and speaker.Character:FindFirstChildOfClass('Humanoid')
	if not Human then
		return
	end
	Human.Sit = true
	task.wait(.1)
	Human.RootPart.CFrame = Human.RootPart.CFrame * CFrame.Angles(math.pi * .5, 0, 0)
	for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
		v:Stop()
	end
end)

addcmd('sitwalk',{},function(args, speaker)
	local anims = speaker.Character.Animate
	local sit = anims.sit:FindFirstChildOfClass("Animation").AnimationId
	anims.idle:FindFirstChildOfClass("Animation").AnimationId = sit
	anims.walk:FindFirstChildOfClass("Animation").AnimationId = sit
	anims.run:FindFirstChildOfClass("Animation").AnimationId = sit
	anims.jump:FindFirstChildOfClass("Animation").AnimationId = sit
	if r15(speaker) then
		speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = 0.5
	else
		speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = -1.5
	end
end)

function noSitFunc()
	wait()
	if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit then
		Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit = false
	end
end
addcmd('nosit',{},function(args, speaker)
	if noSit then noSit:Disconnect() nositDied:Disconnect() end
	noSit = Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPropertyChangedSignal("Sit"):Connect(noSitFunc)
	local function nositDiedFunc()
		repeat wait() until speaker.Character ~= nil and speaker.Character:FindFirstChildOfClass("Humanoid")
		noSit:Disconnect()
		noSit = Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPropertyChangedSignal("Sit"):Connect(noSitFunc)
	end
	nositDied = speaker.CharacterAdded:Connect(nositDiedFunc)
end)

addcmd('unnosit',{},function(args, speaker)
	if noSit then noSit:Disconnect() nositDied:Disconnect() end
end)

addcmd('jump',{},function(args, speaker)
	speaker.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
end)

local infJump
local infJumpDebounce = false
addcmd('infjump',{'infinitejump'},function(args, speaker)
    if infJump then infJump:Disconnect() end
    infJumpDebounce = false
    infJump = UserInputService.JumpRequest:Connect(function()
        if not infJumpDebounce then
            infJumpDebounce = true
            speaker.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
            wait()
            infJumpDebounce = false
        end
    end)
end)

addcmd('uninfjump',{'uninfinitejump','noinfjump','noinfinitejump'},function(args, speaker)
    if infJump then infJump:Disconnect() end
    infJumpDebounce = false
end)

local flyjump
addcmd('flyjump',{},function(args, speaker)
	if flyjump then flyjump:Disconnect() end
	flyjump = UserInputService.JumpRequest:Connect(function(Jump)
		Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
	end)
end)

addcmd('unflyjump',{'noflyjump'},function(args, speaker)
	if flyjump then flyjump:Disconnect() end
end)

local HumanModCons = {}
addcmd('autojump',{'ajump'},function(args, speaker)
	local Char = speaker.Character
	local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
	local function autoJump()
		if Char and Human then
			local check1 = workspace:FindPartOnRay(Ray.new(Human.RootPart.Position-Vector3.new(0,1.5,0), Human.RootPart.CFrame.lookVector*3), Human.Parent)
			local check2 = workspace:FindPartOnRay(Ray.new(Human.RootPart.Position+Vector3.new(0,1.5,0), Human.RootPart.CFrame.lookVector*3), Human.Parent)
			if check1 or check2 then
				Human.Jump = true
			end
		end
	end
	autoJump()
	HumanModCons.ajLoop = (HumanModCons.ajLoop and HumanModCons.ajLoop:Disconnect() and false) or RunService.RenderStepped:Connect(autoJump)
	HumanModCons.ajCA = (HumanModCons.ajCA and HumanModCons.ajCA:Disconnect() and false) or speaker.CharacterAdded:Connect(function(nChar)
		Char, Human = nChar, nChar:WaitForChild("Humanoid")
		autoJump()
		HumanModCons.ajLoop = (HumanModCons.ajLoop and HumanModCons.ajLoop:Disconnect() and false) or RunService.RenderStepped:Connect(autoJump)
	end)
end)

addcmd('unautojump',{'noautojump', 'noajump', 'unajump'},function(args, speaker)
	HumanModCons.ajLoop = (HumanModCons.ajLoop and HumanModCons.ajLoop:Disconnect() and false) or nil
	HumanModCons.ajCA = (HumanModCons.ajCA and HumanModCons.ajCA:Disconnect() and false) or nil
end)

addcmd('edgejump',{'ejump'},function(args, speaker)
	local Char = speaker.Character
	local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
	-- Full credit to NoelGamer06 @V3rmillion
	local state
	local laststate
	local lastcf
	local function edgejump()
		if Char and Human then
			laststate = state
			state = Human:GetState()
			if laststate ~= state and state == Enum.HumanoidStateType.Freefall and laststate ~= Enum.HumanoidStateType.Jumping then
				Char.HumanoidRootPart.CFrame = lastcf
				Char.HumanoidRootPart.Velocity = Vector3.new(Char.HumanoidRootPart.Velocity.X, Human.JumpPower or Human.JumpHeight, Char.HumanoidRootPart.Velocity.Z)
			end
			lastcf = Char.HumanoidRootPart.CFrame
		end
	end
	edgejump()
	HumanModCons.ejLoop = (HumanModCons.ejLoop and HumanModCons.ejLoop:Disconnect() and false) or RunService.RenderStepped:Connect(edgejump)
	HumanModCons.ejCA = (HumanModCons.ejCA and HumanModCons.ejCA:Disconnect() and false) or speaker.CharacterAdded:Connect(function(nChar)
		Char, Human = nChar, nChar:WaitForChild("Humanoid")
		edgejump()
		HumanModCons.ejLoop = (HumanModCons.ejLoop and HumanModCons.ejLoop:Disconnect() and false) or RunService.RenderStepped:Connect(edgejump)
	end)
end)

addcmd('unedgejump',{'noedgejump', 'noejump', 'unejump'},function(args, speaker)
	HumanModCons.ejLoop = (HumanModCons.ejLoop and HumanModCons.ejLoop:Disconnect() and false) or nil
	HumanModCons.ejCA = (HumanModCons.ejCA and HumanModCons.ejCA:Disconnect() and false) or nil
end)

addcmd('team',{},function(args, speaker)
	local teamname = nil
	for a,b in pairs(Teams:GetChildren()) do
		local L_name = b.Name:lower()
		local F = L_name:find(getstring(1))
		if F == 1 then
			teamname = b 
		end
	end
	speaker.Team = teamname
end)

addcmd('nobgui',{'unbgui','nobillboardgui','unbillboardgui','noname','rohg'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants())do
		if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
			v:Destroy()
		end
	end
end)

addcmd('loopnobgui',{'loopunbgui','loopnobillboardgui','loopunbillboardgui','loopnoname','looprohg'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants())do
		if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
			v:Destroy()
		end
	end
	local function charPartAdded(part)
		if part:IsA("BillboardGui") or part:IsA("SurfaceGui") then
			wait()
			part:Destroy()
		end
	end
	charPartTrigger = speaker.Character.DescendantAdded:Connect(charPartAdded)
end)

addcmd('unloopnobgui',{'unloopunbgui','unloopnobillboardgui','unloopunbillboardgui','unloopnoname','unlooprohg'},function(args, speaker)
	if charPartTrigger then
		charPartTrigger:Disconnect()
	end
end)

addcmd('spasm',{},function(args, speaker)
	if not r15(speaker) then
		local pchar=speaker.Character
		local AnimationId = "33796059"
		SpasmAnim = Instance.new("Animation")
		SpasmAnim.AnimationId = "rbxassetid://"..AnimationId
		Spasm = pchar:FindFirstChildOfClass('Humanoid'):LoadAnimation(SpasmAnim)
		Spasm:Play()
		Spasm:AdjustSpeed(99)
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('unspasm',{'nospasm'},function(args, speaker)
	Spasm:Stop()
	SpasmAnim:Destroy()
end)

addcmd('headthrow',{},function(args, speaker)
	if not r15(speaker) then
		local AnimationId = "35154961"
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"..AnimationId
		local k = speaker.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Anim)
		k:Play(0)
		k:AdjustSpeed(1)
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('animation',{'anim'},function(args, speaker)
	if not r15(speaker) then
		local pchar=speaker.Character
		local AnimationId = tostring(args[1])
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"..AnimationId
		local k = pchar:FindFirstChildOfClass('Humanoid'):LoadAnimation(Anim)
		k:Play()
		if args[2] then
			k:AdjustSpeed(tostring(args[2]))
		end
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('noanim',{},function(args, speaker)
	speaker.Character.Animate.Disabled = true
end)

addcmd('reanim',{},function(args, speaker)
	speaker.Character.Animate.Disabled = false
end)

addcmd('animspeed',{},function(args, speaker)
	local Char = speaker.Character
	local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

	for i,v in next, Hum:GetPlayingAnimationTracks() do
		v:AdjustSpeed(tonumber(args[1] or 1))
	end
end)

addcmd('copyanimation',{'copyanim','copyemote'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for _,v in ipairs(players)do
		local char = Players[v].Character
		for _, v1 in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks()) do
			v1:Stop()
		end
		for _, v1 in pairs(Players[v].Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks()) do
			if not string.find(v1.Animation.AnimationId, "507768375") then
				local ANIM = speaker.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(v1.Animation)
				ANIM:Play(.1, 1, v1.Speed)
				ANIM.TimePosition = v1.TimePosition
				task.spawn(function()
					v1.Stopped:Wait()
					ANIM:Stop()
					ANIM:Destroy()
				end)
			end
		end
	end
end)

addcmd('stopanimations',{'stopanims','stopanim'},function(args, speaker)
	local Char = speaker.Character
	local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

	for i,v in next, Hum:GetPlayingAnimationTracks() do
		v:Stop()
	end
end)

addcmd('refreshanimations', {'refreshanimation', 'refreshanims', 'refreshanim'}, function(args, speaker)
	local Char = speaker.Character or speaker.CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild('Humanoid', 15)
	local Animate = Char and Char:WaitForChild('Animate', 15)
	if not Human or not Animate then
		return notify('Refresh Animations', 'Failed to get Animate/Humanoid')
	end
	Animate.Disabled = true
	for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
		v:Stop()
	end
	Animate.Disabled = false
end)

addcmd('allowcustomanim', {'allowcustomanimations'}, function(args, speaker)
	StarterPlayer.AllowCustomAnimations = true
	execCmd('refreshanimations')
end)

addcmd('unallowcustomanim', {'unallowcustomanimations'}, function(args, speaker)
	StarterPlayer.AllowCustomAnimations = false
	execCmd('refreshanimations')
end)

addcmd('loopanimation', {'loopanim'},function(args, speaker)
	local Char = speaker.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	for _, v in ipairs(Human.GetPlayingAnimationTracks(Human)) do
		v.Looped = true
	end
end)

addcmd('tpposition',{'tppos'},function(args, speaker)
	if #args < 3 then return end
	local tpX,tpY,tpZ = tonumber(args[1]),tonumber(args[2]),tonumber(args[3])
	local char = speaker.Character
	if char and getRoot(char) then
		getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
	end
end)

addcmd('tweentpposition',{'ttppos'},function(args, speaker)
	if #args < 3 then return end
	local tpX,tpY,tpZ = tonumber(args[1]),tonumber(args[2]),tonumber(args[3])
	local char = speaker.Character
	if char and getRoot(char) then
		TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = CFrame.new(tpX,tpY,tpZ)}):Play()
	end
end)

addcmd('offset',{},function(args, speaker)
	if #args < 3 then
		return 
	end
	if speaker.Character then
		speaker.Character:TranslateBy(Vector3.new(tonumber(args[1]) or 0, tonumber(args[2]) or 0, tonumber(args[3]) or 0))
	end
end)

addcmd('tweenoffset',{'toffset'},function(args, speaker)
	if #args < 3 then return end
	local tpX,tpY,tpZ = tonumber(args[1]),tonumber(args[2]),tonumber(args[3])
	local char = speaker.Character
	if char and getRoot(char) then
		TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = CFrame.new(tpX,tpY,tpZ)}):Play()
	end
end)

addcmd('clickteleport',{},function(args, speaker)
	if speaker == Players.LocalPlayer then
		notify('Click TP','Go to Settings>Keybinds>Add to set up click tp')
	end
end)

addcmd('tptool', {'teleporttool'}, function(args, speaker)
	local TpTool = Instance.new("Tool")
	TpTool.Name = "Teleport Tool"
	TpTool.RequiresHandle = false
	TpTool.Parent = speaker.Backpack
	TpTool.Activated:Connect(function()
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
		if not Char or not HRP then
			return warn("Failed to find HumanoidRootPart")
		end
		HRP.CFrame = CFrame.new(IYMouse.Hit.X, IYMouse.Hit.Y + 3, IYMouse.Hit.Z, select(4, HRP.CFrame:components()))
	end)
end)

addcmd('clickdelete',{},function(args, speaker)
	if speaker == Players.LocalPlayer then
		notify('Click Delete','Go to Settings>Keybinds>Add to set up click delete')
	end
end)

addcmd('getposition',{'getpos','notifypos','notifyposition'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		local char = Players[v].Character
		local pos = char and (getRoot(char) or char:FindFirstChildWhichIsA("BasePart"))
		pos = pos and pos.Position
		if not pos then
			return notify('Getposition Error','Missing character')
		end
		local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
		notify('Current Position',roundedPos)
	end
end)

addcmd('copyposition',{'copypos'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		local char = Players[v].Character
		local pos = char and (getRoot(char) or char:FindFirstChildWhichIsA("BasePart"))
		pos = pos and pos.Position
		if not pos then
			return notify('Getposition Error','Missing character')
		end
		local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
		toClipboard(roundedPos)
	end
end)

addcmd('walktopos',{'walktoposition'},function(args, speaker)
	if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
		speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
		wait(.1)
	end
	speaker.Character:FindFirstChildOfClass('Humanoid').WalkToPoint = Vector3.new(args[1],args[2],args[3])
end)

addcmd('speed',{'ws','walkspeed'},function(args, speaker)
	if args[2] then
		local speed = args[2] or 16
		if isNumber(speed) then
			speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
		end
	else
		local speed = args[1] or 16
		if isNumber(speed) then
			speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
		end
	end
end)

addcmd('spoofspeed',{'spoofws','spoofwalkspeed'},function(args, speaker)
	if args[1] and isNumber(args[1]) then
		if hookmetamethod then
			local char = speaker.Character
			local setspeed;
			local index; index = hookmetamethod(game, "__index", function(self, key)
				local keyclean = key:gsub("\0", "")
				if (keyclean == "WalkSpeed" or keyclean == "walkSpeed") and self:IsA("Humanoid") and self:IsDescendantOf(char) and not checkcaller() then
					return setspeed or args[1]
				end
				return index(self, key)
			end)
			local newindex; newindex = hookmetamethod(game, "__newindex", function(self, key, value)
				local keyclean = string.gsub(key, "\0", "")
				if (keyclean == "WalkSpeed" or keyclean == "walkSpeed") and self:IsA("Humanoid") and self:IsDescendantOf(char) and not checkcaller() then
					setspeed = tonumber(value)
					return setspeed
				end
				return newindex(self, key, value)
			end)
		else
			notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
		end
	end
end)

addcmd('loopspeed',{'loopws'},function(args, speaker)
	local speed = args[1] or 16
	if args[2] then
		speed = args[2] or 16
	end
	if isNumber(speed) then
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
		local function WalkSpeedChange()
			if Char and Human then
				Human.WalkSpeed = speed
			end
		end
		WalkSpeedChange()
		HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
		HumanModCons.wsCA = (HumanModCons.wsCA and HumanModCons.wsCA:Disconnect() and false) or speaker.CharacterAdded:Connect(function(nChar)
			Char, Human = nChar, nChar:WaitForChild("Humanoid")
			WalkSpeedChange()
			HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
		end)
	end
end)

addcmd('unloopspeed',{'unloopws'},function(args, speaker)
	HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or nil
	HumanModCons.wsCA = (HumanModCons.wsCA and HumanModCons.wsCA:Disconnect() and false) or nil
end)

addcmd('spoofjumppower',{'spoofjp'},function(args, speaker)
	if args[1] and isNumber(args[1]) then
		if hookmetamethod then
			local char = speaker.Character
			local setpower;
			local index; index = hookmetamethod(game, "__index", function(self, key)
				local keyclean = key:gsub("\0", "")
				if (keyclean == "JumpPower" or keyclean == "jumpPower") and self:IsA("Humanoid") and self:IsDescendantOf(char) and not checkcaller() then
					return setpower or args[1]
				end
				return index(self, key)
			end)
			local newindex; newindex = hookmetamethod(game, "__newindex", function(self, key, value)
				local keyclean = string.gsub(key, "\0", "")
				if (keyclean == "JumpPower" or keyclean == "jumpPower") and self:IsA("Humanoid") and self:IsDescendantOf(char) and not checkcaller() then
					setpower = tonumber(value)
					return setpower
				end
				return newindex(self, key, value)
			end)
		else
			notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
		end
	end
end)

addcmd('loopjumppower',{'loopjp','loopjpower'},function(args, speaker)
	local jpower = args[1] or 50
	if isNumber(jpower) then
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
		local function JumpPowerChange()
			if Char and Human then
				if speaker.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
					speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower = jpower
				else
					speaker.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = jpower
				end
			end
		end
		JumpPowerChange()
		HumanModCons.jpLoop = (HumanModCons.jpLoop and HumanModCons.jpLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("JumpPower"):Connect(JumpPowerChange)
		HumanModCons.jpCA = (HumanModCons.jpCA and HumanModCons.jpCA:Disconnect() and false) or speaker.CharacterAdded:Connect(function(nChar)
			Char, Human = nChar, nChar:WaitForChild("Humanoid")
			JumpPowerChange()
			HumanModCons.jpLoop = (HumanModCons.jpLoop and HumanModCons.jpLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("JumpPower"):Connect(JumpPowerChange)
		end)
	end
end)

addcmd('unloopjumppower',{'unloopjp','unloopjpower'},function(args, speaker)
	local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
	local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
	HumanModCons.jpLoop = (HumanModCons.jpLoop and HumanModCons.jpLoop:Disconnect() and false) or nil
	HumanModCons.jpCA = (HumanModCons.jpCA and HumanModCons.jpCA:Disconnect() and false) or nil
	if Char and Human then
		if speaker.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
			speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower = 50
		else
			speaker.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = 50
		end
	end
end)

addcmd('tools',{'gears'},function(args, speaker)
	local function copy(instance)
		for i,c in pairs(instance:GetChildren())do
			if c:IsA('Tool') or c:IsA('HopperBin') then
				c:Clone().Parent = speaker:FindFirstChildOfClass("Backpack")
			end
			copy(c)
		end
	end
	copy(Lighting)
	local function copy(instance)
		for i,c in pairs(instance:GetChildren())do
			if c:IsA('Tool') or c:IsA('HopperBin') then
				c:Clone().Parent = speaker:FindFirstChildOfClass("Backpack")
			end
			copy(c)
		end
	end
	copy(ReplicatedStorage)
	notify('Tools','Copied tools from ReplicatedStorage and Lighting')
end)

addcmd('notools',{'rtools','clrtools','removetools','deletetools','dtools'},function(args, speaker)
	for i,v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetDescendants()) do
		if v:IsA('Tool') or v:IsA('HopperBin') then
			v:Destroy()
		end
	end
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA('Tool') or v:IsA('HopperBin') then
			v:Destroy()
		end
	end
end)

addcmd('deleteselectedtool',{'dst'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA('Tool') or v:IsA('HopperBin') then
			v:Destroy()
		end
	end
end)

addcmd('console',{},function(args, speaker)
	-- Thanks wally!!
	notify("Loading",'Hold on a sec')
	local _, str = pcall(function()
		return game:HttpGet("https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/console.lua", true)
	end)

	local s, e = loadstring(str)
	if typeof(s) ~= "function" then
		return
	end

	local success, message = pcall(s)
	if (not success) then
		if printconsole then
			printconsole(message)
		elseif printoutput then
			printoutput(message)
		end
	end
	wait(1)
	notify('Console','Press F9 to open the console')
end)

addcmd('explorer', {'dex'}, function(args, speaker)
    notify('Loading', 'Hold on a sec')
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/dex.lua"))()
end)

addcmd('olddex', {'odex'}, function(args, speaker)
    notify('Loading old explorer', 'Hold on a sec')
    
    local getobjects = function(a)
        local Objects = {}
        if a then
            local b = InsertService:LoadLocalAsset(a)
            if b then 
                table.insert(Objects, b) 
            end
        end
        return Objects
    end

    local Dex = getobjects("rbxassetid://10055842438")[1]
    Dex.Parent = PARENT

    local function Load(Obj, Url)
        local function GiveOwnGlobals(Func, Script)
            -- Fix for this edit of dex being poorly made
            -- I (Alex) would like to commemorate whoever added this dex in somehow finding the worst dex to ever exist
            local Fenv, RealFenv, FenvMt = {}, {
                script = Script,
                getupvalue = function(a, b)
                    return nil -- force it to use globals
                end,
                getreg = function() -- It loops registry for some idiotic reason so stop it from doing that and just use a global
                    return {} -- force it to use globals
                end,
                getprops = getprops or function(inst)
                    if getproperties then
                        local props = getproperties(inst)
                        if props[1] and gethiddenproperty then
                            local results = {}
                            for _,name in pairs(props) do
                                local success, res = pcall(gethiddenproperty, inst, name)
                                if success then
                                    results[name] = res
                                end
                            end
                            
                            return results
                        end
                        
                        return props
                    end
                    
                    return {}
                end
            }, {}
            FenvMt.__index = function(a,b)
                return RealFenv[b] == nil and getgenv()[b] or RealFenv[b]
            end
            FenvMt.__newindex = function(a, b, c)
                if RealFenv[b] == nil then 
                    getgenv()[b] = c 
                else 
                    RealFenv[b] = c 
                end
            end
            setmetatable(Fenv, FenvMt)
            pcall(setfenv, Func, Fenv)
            return Func
        end

        local function LoadScripts(_, Script)
            if Script:IsA("LocalScript") then
                task.spawn(function()
                    GiveOwnGlobals(loadstring(Script.Source,"="..Script:GetFullName()), Script)()
                end)
            end
            table.foreach(Script:GetChildren(), LoadScripts)
        end
                    
        LoadScripts(nil, Obj)
    end

    Load(Dex)
end)

addcmd('remotespy',{'rspy'},function(args, speaker)
	notify("Loading",'Hold on a sec')
	-- Full credit to exx, creator of SimpleSpy
	-- also thanks to NoobSploit for fixing
	loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/SimpleSpyV3/main.lua"))()
end)

addcmd('audiologger',{'alogger'},function(args, speaker)
	notify("Loading",'Hold on a sec')
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/audiologger.lua'),true))()
end)

local loopgoto = nil
addcmd('loopgoto',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		loopgoto = nil
		if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
			speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
			wait(.1)
		end
		loopgoto = Players[v]
		local distance = 3
		if args[2] and isNumber(args[2]) then
			distance = args[2]
		end
		local lDelay = 0
		if args[3] and isNumber(args[3]) then
			lDelay = args[3]
		end
		repeat
			if Players:FindFirstChild(v) then
				if Players[v].Character ~= nil then
					getRoot(speaker.Character).CFrame = getRoot(Players[v].Character).CFrame + Vector3.new(distance,1,0)
				end
				wait(lDelay)
			else
				loopgoto = nil
			end
		until loopgoto ~= Players[v]
	end
end)

addcmd('unloopgoto',{'noloopgoto'},function(args, speaker)
	loopgoto = nil
end)

addcmd('headsit',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	if headSit then headSit:Disconnect() end
	for i,v in pairs(players)do
		speaker.Character:FindFirstChildOfClass('Humanoid').Sit = true
		headSit = RunService.Heartbeat:Connect(function()
			if Players:FindFirstChild(Players[v].Name) and Players[v].Character ~= nil and getRoot(Players[v].Character) and getRoot(speaker.Character) and speaker.Character:FindFirstChildOfClass('Humanoid').Sit == true then
				getRoot(speaker.Character).CFrame = getRoot(Players[v].Character).CFrame * CFrame.Angles(0,math.rad(0),0)* CFrame.new(0,1.6,0.4)
			else
				headSit:Disconnect()
			end
		end)
	end
end)

addcmd('chat',{'say'},function(args, speaker)
	local cString = getstring(1)
	ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(cString, "All")
end)


spamming = false
spamspeed = 1
addcmd('spam',{},function(args, speaker)
	spamming = true
	local spamstring = getstring(1)
	repeat wait(spamspeed)
		ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamstring, "All")
	until spamming == false
end)

addcmd('nospam',{'unspam'},function(args, speaker)
	spamming = false
end)

addcmd('whisper',{'pm'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		task.spawn(function()
			local plrName = Players[v].Name
			local pmstring = getstring(2)
			ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..plrName.." "..pmstring, "All")
		end)
	end
end)

pmspamming = {}
addcmd('pmspam',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		task.spawn(function()
			local plrName = Players[v].Name
			if FindInTable(pmspamming, plrName) then return end
			table.insert(pmspamming, plrName)
			local pmspamstring = getstring(2)
			repeat
				if Players:FindFirstChild(v) then
					wait(spamspeed)
					ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..plrName.." "..pmspamstring, "All")
				else
					for a,b in pairs(pmspamming) do if b == plrName then table.remove(pmspamming, a) end end
				end
			until not FindInTable(pmspamming, plrName)
		end)
	end
end)

addcmd('nopmspam',{'unpmspam'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		task.spawn(function()
			for a,b in pairs(pmspamming) do
				if b == Players[v].Name then
					table.remove(pmspamming, a)
				end
			end
		end)
	end
end)

addcmd('spamspeed',{},function(args, speaker)
	local speed = args[1] or 1
	if isNumber(speed) then
		spamspeed = speed
	end
end)

addcmd('bubblechat',{},function(args, speaker)
	ChatService.BubbleChatEnabled = true
end)

addcmd('unbubblechat',{'nobubblechat'},function(args, speaker)
	ChatService.BubbleChatEnabled = false
end)

addcmd('safechat',{},function(args, speaker)
	speaker:SetSuperSafeChat(true)
end)

addcmd('nosafechat',{'disablesafechat','unsafechat'},function(args, speaker)
	speaker:SetSuperSafeChat(false)
end)

addcmd('blockhead',{},function(args, speaker)
	speaker.Character.Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
end)

addcmd('blockhats',{},function(args, speaker)
	for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
		for i,c in pairs(v:GetDescendants()) do
			if c:IsA("SpecialMesh") then
				c:Destroy()
			end
		end
	end
end)

addcmd('blocktool',{},function(args, speaker)
	for _,v in pairs(speaker.Character:GetChildren()) do
		if v:IsA("Tool") or v:IsA("HopperBin") then
			for i,c in pairs(v:GetDescendants()) do
				if c:IsA("SpecialMesh") then
					c:Destroy()
				end
			end
		end
	end
end)

addcmd('creeper',{},function(args, speaker)
	if r15(speaker) then
		speaker.Character.Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
		speaker.Character.LeftUpperArm:Destroy()
		speaker.Character.RightUpperArm:Destroy()
		speaker.Character:FindFirstChildOfClass("Humanoid"):RemoveAccessories()
	else
		speaker.Character.Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
		speaker.Character["Left Arm"]:Destroy()
		speaker.Character["Right Arm"]:Destroy()
		speaker.Character:FindFirstChildOfClass("Humanoid"):RemoveAccessories()
	end
end)

function getTorso(x)
	x = x or Players.LocalPlayer.Character
	return x:FindFirstChild("Torso") or x:FindFirstChild("UpperTorso") or x:FindFirstChild("LowerTorso") or x:FindFirstChild("HumanoidRootPart")
end

addcmd('bang',{'rape'},function(args, speaker)
	execCmd('unbang')
	wait()
	local players = getPlayer(args[1], speaker)
	for _, v in pairs(players) do
		bangAnim = Instance.new("Animation")
		if not r15(speaker) then
			bangAnim.AnimationId = "rbxassetid://148840371"
		else
			bangAnim.AnimationId = "rbxassetid://5918726674"
		end
		bang = speaker.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(bangAnim)
		bang:Play(.1, 1, 1)
		if args[2] then
			bang:AdjustSpeed(args[2])
		else
			bang:AdjustSpeed(3)
		end
		local bangplr = Players[v].Name
		bangDied = speaker.Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
			bangLoop = bangLoop:Disconnect()
			bang:Stop()
			bangAnim:Destroy()
			bangDied:Disconnect()
		end)
		local bangOffet = CFrame.new(0, 0, 1.1)
		bangLoop = RunService.Stepped:Connect(function()
			pcall(function()
				local otherRoot = getTorso(Players[bangplr].Character)
				getRoot(Players.LocalPlayer.Character).CFrame = otherRoot.CFrame * bangOffet
			end)
		end)
	end
end)

addcmd('unbang',{'unrape'},function(args, speaker)
	if bangLoop then
		bangLoop = bangLoop:Disconnect()
		bangDied:Disconnect()
		bang:Stop()
		bangAnim:Destroy()
	end
end)

addcmd('carpet',{},function(args, speaker)
	if not r15(speaker) then
		execCmd('uncarpet')
		wait()
		local players = getPlayer(args[1], speaker)
		for i,v in pairs(players)do
			carpetAnim = Instance.new("Animation")
			carpetAnim.AnimationId = "rbxassetid://282574440"
			carpet = speaker.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(carpetAnim)
			carpet:Play(.1, 1, 1)
			local carpetplr = Players[v].Name
			carpetDied = speaker.Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
				carpetLoop:Disconnect()
				carpet:Stop()
				carpetAnim:Destroy()
				carpetDied:Disconnect()
			end)
			carpetLoop = RunService.Heartbeat:Connect(function()
				pcall(function()
					getRoot(Players.LocalPlayer.Character).CFrame = getRoot(Players[carpetplr].Character).CFrame
				end)
			end)
		end
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('uncarpet',{'nocarpet'},function(args, speaker)
	if carpetLoop then
		carpetLoop:Disconnect()
		carpetDied:Disconnect()
		carpet:Stop()
		carpetAnim:Destroy()
	end
end)

addcmd('friend',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		speaker:RequestFriendship(v)
	end
end)

addcmd('unfriend',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		speaker:RevokeFriendship(v)
	end
end)

addcmd('bringpart',{},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
			v.CFrame = getRoot(speaker.Character).CFrame
		end
	end
end)

addcmd('bringpartclass',{'bpc'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() and v:IsA("BasePart") then
			v.CFrame = getRoot(speaker.Character).CFrame
		end
	end
end)

gotopartDelay = 0.1
addcmd('gotopart',{'topart'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			getRoot(speaker.Character).CFrame = v.CFrame
		end
	end
end)

addcmd('tweengotopart',{'tgotopart','ttopart'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
		end
	end
end)

addcmd('gotopartclass',{'gpc'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() and v:IsA("BasePart") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			getRoot(speaker.Character).CFrame = v.CFrame
		end
	end
end)

addcmd('tweengotopartclass',{'tgpc'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() and v:IsA("BasePart") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
		end
	end
end)

addcmd('gotomodel',{'tomodel'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("Model") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			getRoot(speaker.Character).CFrame = v:GetModelCFrame()
		end
	end
end)

addcmd('tweengotomodel',{'tgotomodel','ttomodel'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("Model") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = v:GetModelCFrame()}):Play()
		end
	end
end)

addcmd('gotopartdelay',{},function(args, speaker)
	local gtpDelay = args[1] or 0.1
	if isNumber(gtpDelay) then
		gotopartDelay = gtpDelay
	end
end)

addcmd('noclickdetectorlimits',{'nocdlimits','removecdlimits'},function(args, speaker)
	for i,v in ipairs(workspace:GetDescendants()) do
		if v:IsA("ClickDetector") then
			v.MaxActivationDistance = math.huge
		end
	end
end)

addcmd('fireclickdetectors',{'firecd','firecds'}, function(args, speaker)
    if fireclickdetector then
        if args[1] then
            local name = getstring(1)
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant:IsA("ClickDetector") and descendant.Name == name then
                    fireclickdetector(descendant)
                end
            end
        else
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant:IsA("ClickDetector") then
                    fireclickdetector(descendant)
                end
            end
        end
    else
        notify("Incompatible Exploit", "Your exploit does not support this command (missing fireclickdetector)")
    end
end)

addcmd('noproximitypromptlimits',{'nopplimits','removepplimits'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("ProximityPrompt") then
			v.MaxActivationDistance = math.huge
		end
	end
end)

addcmd('fireproximityprompts',{'firepp'},function(args, speaker)
    if fireclickdetector then
        if args[1] then
            local name = getstring(1)
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant:IsA("ProximityPrompt") and descendant.Name == name then
                    fireproximityprompt(descendant)
                end
            end
        else
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant:IsA("ProximityPrompt") then
                    fireproximityprompt(descendant)
                end
            end
        end
    else
        notify("Incompatible Exploit", "Your exploit does not support this command (missing fireproximityprompt)")
    end
end)

local PromptButtonHoldBegan = nil
addcmd('instantproximityprompts',{'instantpp'},function(args, speaker)
	if fireproximityprompt then
		execCmd("uninstantproximityprompts")
		wait(0.1)
		PromptButtonHoldBegan = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
			fireproximityprompt(prompt)
		end)
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing fireproximityprompt)')
	end
end)

addcmd('uninstantproximityprompts',{'uninstantpp'},function(args, speaker)
	if PromptButtonHoldBegan ~= nil then
		PromptButtonHoldBegan:Disconnect()
		PromptButtonHoldBegan = nil
	end
end)

addcmd('notifyping',{'ping'},function(args, speaker)
    notify("Ping", math.round(speaker:GetNetworkPing() * 1000) .. "ms")
end)

addcmd('grabtools', {}, function(args, speaker)
	local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
	for _, child in ipairs(workspace:GetChildren()) do
		if speaker.Character and child:IsA("BackpackItem") and child:FindFirstChild("Handle") then
			humanoid:EquipTool(child)
		end
	end

	if grabtoolsFunc then 
		grabtoolsFunc:Disconnect() 
	end

	grabtoolsFunc = workspace.ChildAdded:Connect(function(child)
		if speaker.Character and child:IsA("BackpackItem") and child:FindFirstChild("Handle") then
			humanoid:EquipTool(child)
		end
	end)

	notify("Grabtools", "Picking up any dropped tools")
end)

addcmd('nograbtools',{'ungrabtools'},function(args, speaker)
	if grabtoolsFunc then 
		grabtoolsFunc:Disconnect() 
	end

	notify("Grabtools", "Grabtools has been disabled")
end)

local specifictoolremoval = {}
addcmd('removespecifictool',{},function(args, speaker)
	if args[1] and speaker:FindFirstChildOfClass("Backpack") then
		local tool = string.lower(getstring(1))
		local RST = RunService.RenderStepped:Connect(function()
			if speaker:FindFirstChildOfClass("Backpack") then
				for i,v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
					if v.Name:lower() == tool then
						v:Remove()
					end
				end
			end
		end)
		specifictoolremoval[tool] = RST
	end
end)

addcmd('unremovespecifictool',{},function(args, speaker)
	if args[1] then
		local tool = string.lower(getstring(1))
		if specifictoolremoval[tool] ~= nil then
			specifictoolremoval[tool]:Disconnect()
			specifictoolremoval[tool] = nil
		end
	end
end)

addcmd('clearremovespecifictool',{},function(args, speaker)
	for obj in pairs(specifictoolremoval) do
		specifictoolremoval[obj]:Disconnect()
		specifictoolremoval[obj] = nil
	end
end)

addcmd('light',{},function(args, speaker)
	local light = Instance.new("PointLight")
	light.Parent = getRoot(speaker.Character)
	light.Range = 30
	if args[1] then
		light.Brightness = args[2]
		light.Range = args[1]
	else
		light.Brightness = 5
	end
end)

addcmd('unlight',{'nolight'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v.ClassName == "PointLight" then
			v:Destroy()
		end
	end
end)

addcmd('copytools',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		task.spawn(function()
			for i,v in pairs(Players[v]:FindFirstChildOfClass("Backpack"):GetChildren()) do
				if v:IsA('Tool') or v:IsA('HopperBin') then
					v:Clone().Parent = speaker:FindFirstChildOfClass("Backpack")
				end
			end
		end)
	end
end)

addcmd('naked',{},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Clothing") or v:IsA("ShirtGraphic") then
			v:Destroy()
		end
	end
end)

addcmd('noface',{'removeface'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Decal") and v.Name == 'face' then
			v:Destroy()
		end
	end
end)

addcmd('spawnpoint',{'spawn'},function(args, speaker)
	spawnpos = getRoot(speaker.Character).CFrame
	spawnpoint = true
	spDelay = tonumber(args[1]) or 0.1
	notify('Spawn Point','Spawn point created at '..tostring(spawnpos))
end)

addcmd('nospawnpoint',{'nospawn','removespawnpoint'},function(args, speaker)
	spawnpoint = false
	notify('Spawn Point','Removed spawn point')
end)

addcmd('flashback',{'diedtp'},function(args, speaker)
	if lastDeath ~= nil then
		if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
			speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
			wait(.1)
		end
		getRoot(speaker.Character).CFrame = lastDeath
	end
end)

addcmd('hatspin',{'spinhats'},function(args, speaker)
	execCmd('unhatspin')
	wait(.5)
	for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
		local keep = Instance.new("BodyPosition") keep.Name = randomString() keep.Parent = v.Handle
		local spin = Instance.new("BodyAngularVelocity") spin.Name = randomString() spin.Parent = v.Handle
		v.Handle:FindFirstChildOfClass("Weld"):Destroy()
		if args[1] then
			spin.AngularVelocity = Vector3.new(0, args[1], 0)
			spin.MaxTorque = Vector3.new(0, args[1] * 2, 0)
		else
			spin.AngularVelocity = Vector3.new(0, 100, 0)
			spin.MaxTorque = Vector3.new(0, 200, 0)
		end
		keep.P = 30000
		keep.D = 50
		spinhats = RunService.Stepped:Connect(function()
			pcall(function()
				keep.Position = Players.LocalPlayer.Character.Head.Position
			end)
		end)
	end
end)

addcmd('unhatspin',{'unspinhats'},function(args, speaker)
	if spinhats then
		spinhats:Disconnect()
	end
	for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
		v.Parent = workspace
		for i,c in pairs(v.Handle) do
			if c:IsA("BodyPosition") or c:IsA("BodyAngularVelocity") then
				c:Destroy()
			end
		end
		wait()
		v.Parent = speaker.Character
	end
end)

addcmd('clearhats',{'cleanhats'},function(args, speaker)
	if firetouchinterest then
		local Player = Players.LocalPlayer
		local Character = Player.Character
		local Old = Character:FindFirstChild("HumanoidRootPart").CFrame
		local Hats = {}
		
		for _, child in ipairs(workspace:GetChildren()) do
			if child:IsA("Accessory") then
				table.insert(Hats, child)
			end
		end
		
		for _, accessory in ipairs(Character:FindFirstChildOfClass("Humanoid"):GetAccessories()) do
			accessory:Destroy()
		end
		
		for i = 1, #Hats do
			repeat RunService.Heartbeat:wait() until Hats[i]
			firetouchinterest(Hats[i].Handle,Character:FindFirstChild("HumanoidRootPart"),0)
			repeat RunService.Heartbeat:wait() until Character:FindFirstChildOfClass("Accessory")
			Character:FindFirstChildOfClass("Accessory"):Destroy()
			repeat RunService.Heartbeat:wait() until not Character:FindFirstChildOfClass("Accessory")
		end
		
		execCmd("reset")
		
		Player.CharacterAdded:Wait()
		
		for i = 1,20 do 
			RunService.Heartbeat:Wait()
			if Player.Character:FindFirstChild("HumanoidRootPart") then
				Player.Character:FindFirstChild("HumanoidRootPart").CFrame = Old
			end
		end
	else
		notify("Incompatible Exploit","Your exploit does not support this command (missing firetouchinterest)")
	end
end)

addcmd('vr',{},function(args, speaker)
	-- Full credit to Abacaxl @V3rmillion
	notify("Loading", "Hold on a sec")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/vr.lua"))()
end)

addcmd('split',{},function(args, speaker)
	if r15(speaker) then
		speaker.Character.UpperTorso.Waist:Destroy()
	else
		notify('R15 Required','This command requires the r15 rig type')
	end
end)

addcmd('nilchar',{},function(args, speaker)
	if speaker.Character ~= nil then
		speaker.Character.Parent = nil
	end
end)

addcmd('unnilchar',{'nonilchar'},function(args, speaker)
	if speaker.Character ~= nil then
		speaker.Character.Parent = workspace
	end
end)

addcmd('noroot',{'removeroot','rroot'},function(args, speaker)
	if speaker.Character ~= nil then
		local char = Players.LocalPlayer.Character
		char.Parent = nil
		char.HumanoidRootPart:Destroy()
		char.Parent = workspace
	end
end)

addcmd('replaceroot',{'replacerootpart'},function(args, speaker)
	if speaker.Character ~= nil and speaker.Character:FindFirstChild("HumanoidRootPart") then
		local Char = speaker.Character
		local OldParent = Char.Parent
		local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
		local OldPos = HRP.CFrame
		Char.Parent = game
		local HRP1 = HRP:Clone()
		HRP1.Parent = Char
		HRP = HRP:Destroy()
		HRP1.CFrame = OldPos
		Char.Parent = OldParent
	end
end)

addcmd('clearcharappearance',{'clearchar','clrchar'},function(args, speaker)
	speaker:ClearCharacterAppearance()
end)

addcmd('equiptools',{},function(args, speaker)
	for i,v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
		if v:IsA("Tool") or v:IsA("HopperBin") then
			v.Parent = speaker.Character
		end
	end
end)

addcmd('unequiptools',{},function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
end)

local function GetHandleTools(p)
	p = p or Players.LocalPlayer
	local r = {}
	for _, v in ipairs(p.Character and p.Character:GetChildren() or {}) do
		if v.IsA(v, "BackpackItem") and v.FindFirstChild(v, "Handle") then
			r[#r + 1] = v
		end
	end
	for _, v in ipairs(p.Backpack:GetChildren()) do
		if v.IsA(v, "BackpackItem") and v.FindFirstChild(v, "Handle") then
			r[#r + 1] = v
		end
	end
	return r
end
addcmd('dupetools', {'clonetools'}, function(args, speaker)
	local LOOP_NUM = tonumber(args[1]) or 1
	local OrigPos = speaker.Character.HumanoidRootPart.Position
	local Tools, TempPos = {}, Vector3.new(math.random(-2e5, 2e5), 2e5, math.random(-2e5, 2e5))
	for i = 1, LOOP_NUM do
		local Human = speaker.Character:WaitForChild("Humanoid")
		wait(.1, Human.Parent:MoveTo(TempPos))
		Human.RootPart.Anchored = speaker:ClearCharacterAppearance(wait(.1)) or true
		local t = GetHandleTools(speaker)
		while #t > 0 do
			for _, v in ipairs(t) do
				task.spawn(function()
					for _ = 1, 25 do
						v.Parent = speaker.Character
						v.Handle.Anchored = true
					end
					for _ = 1, 5 do
						v.Parent = workspace
					end
					table.insert(Tools, v.Handle)
				end)
			end
			t = GetHandleTools(speaker)
		end
		wait(.1)
		speaker.Character = speaker.Character:Destroy()
		speaker.CharacterAdded:Wait():WaitForChild("Humanoid").Parent:MoveTo(LOOP_NUM == i and OrigPos or TempPos, wait(.1))
		if i == LOOP_NUM or i % 5 == 0 then
			local HRP = speaker.Character.HumanoidRootPart
			if type(firetouchinterest) == "function" then
				for _, v in ipairs(Tools) do
					v.Anchored = not firetouchinterest(v, HRP, 1, firetouchinterest(v, HRP, 0)) and false or false
				end
			else
				for _, v in ipairs(Tools) do
					task.spawn(function()
						local x = v.CanCollide
						v.CanCollide = false
						v.Anchored = false
						for _ = 1, 10 do
							v.CFrame = HRP.CFrame
							wait()
						end
						v.CanCollide = x
					end)
				end
			end
			wait(.1)
			Tools = {}
		end
		TempPos = TempPos + Vector3.new(10, math.random(-5, 5), 0)
	end
end)

local RS = RunService.RenderStepped
addcmd('givetool', {'givetools'}, function(args, speaker)
	local v = Players[getPlayer(args[1], speaker)[1]].Character
	workspace.CurrentCamera.CameraSubject = v
	local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
	local hum = Char and Char:FindFirstChildWhichIsA('Humanoid')
	local hrp = hum and hum.RootPart
	local hrppos = hrp.CFrame
	hum = hum:Destroy() or hum:Clone()
	hum.Parent = Char
	hum:ClearAllChildren()
	speaker:ClearCharacterAppearance()
	task.spawn(function()
		speaker.CharacterAdded:Wait():WaitForChild('Humanoid').RootPart.CFrame = wait() and hrppos
	end)
	local vHRP = getRoot(v)
	while Char and Char.Parent and vHRP and vHRP.Parent do
		local Tools = false
		for _, v in ipairs(Char:GetChildren()) do
			if v:IsA('BackpackItem') and v:FindFirstChild('Handle') then
				Tools = true
				firetouchinterest(v.Handle, vHRP, 0)
				firetouchinterest(v.Handle, vHRP, 1)
			end
		end
		if not Tools then
			break
		end
		hrp.CFrame = vHRP.CFrame
		RS:Wait()
	end
	execCmd('re')
end)

addcmd('touchinterests', {'touchinterest', 'firetouchinterests', 'firetouchinterest'}, function(args, speaker)
	if not firetouchinterest then
		notify("Incompatible Exploit", "Your exploit does not support this command (missing firetouchinterest)")
		return
	end

	local root = getRoot(speaker.Character) or speaker.Character:FindFirstChildWhichIsA("BasePart")
	
	local function touch(x)
		x = x:FindFirstAncestorWhichIsA("Part")
		if x then
			if firetouchinterest then
				task.spawn(function()
					firetouchinterest(x, root, 1)
					wait()
					firetouchinterest(x, root, 0)
				end)
			end
			x.CFrame = root.CFrame
		end
	end

    if args[1] then
        local name = getstring(1)
        for _, descendant in ipairs(workspace:GetDescendants()) do
            if descendant:IsA("TouchTransmitter") and descendant.Name == name then
                touch(descendant)
            end
        end
    else
        for _, descendant in ipairs(workspace:GetDescendants()) do
            if descendant:IsA("TouchTransmitter") then
                touch(descendant)
            end
        end
    end
end)

addcmd('fullbright',{'fb','fullbrightness'},function(args, speaker)
	Lighting.Brightness = 2
	Lighting.ClockTime = 14
	Lighting.FogEnd = 100000
	Lighting.GlobalShadows = false
	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end)

addcmd('loopfullbright',{'loopfb'},function(args, speaker)
	if brightLoop then
		brightLoop:Disconnect()
	end
	local function brightFunc()
		Lighting.Brightness = 2
		Lighting.ClockTime = 14
		Lighting.FogEnd = 100000
		Lighting.GlobalShadows = false
		Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
	end

	brightLoop = RunService.RenderStepped:Connect(brightFunc)
end)

addcmd('unloopfullbright',{'unloopfb'},function(args, speaker)
	if brightLoop then
		brightLoop:Disconnect()
	end
end)

addcmd('ambient',{},function(args, speaker)
	Lighting.Ambient = Color3.new(args[1],args[2],args[3])
	Lighting.OutdoorAmbient = Color3.new(args[1],args[2],args[3])
end)

addcmd('day',{},function(args, speaker)
	Lighting.ClockTime = 14
end)

addcmd('night',{},function(args, speaker)
	Lighting.ClockTime = 0
end)

addcmd('nofog',{},function(args, speaker)
	Lighting.FogEnd = 100000
	for i,v in pairs(Lighting:GetDescendants()) do
		if v:IsA("Atmosphere") then
			v:Destroy()
		end
	end
end)

addcmd('brightness',{},function(args, speaker)
	Lighting.Brightness = args[1]
end)

addcmd('globalshadows',{'gshadows'},function(args, speaker)
	Lighting.GlobalShadows = true
end)

addcmd('unglobalshadows',{'nogshadows','ungshadows','noglobalshadows'},function(args, speaker)
	Lighting.GlobalShadows = false
end)

origsettings = {abt = Lighting.Ambient, oabt = Lighting.OutdoorAmbient, brt = Lighting.Brightness, time = Lighting.ClockTime, fe = Lighting.FogEnd, fs = Lighting.FogStart, gs = Lighting.GlobalShadows}

addcmd('restorelighting',{'rlighting'},function(args, speaker)
	Lighting.Ambient = origsettings.abt
	Lighting.OutdoorAmbient = origsettings.oabt
	Lighting.Brightness = origsettings.brt
	Lighting.ClockTime = origsettings.time
	Lighting.FogEnd = origsettings.fe
	Lighting.FogStart = origsettings.fs
	Lighting.GlobalShadows = origsettings.gs
end)

addcmd('stun',{'platformstand'},function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
end)

addcmd('unstun',{'nostun','unplatformstand','noplatformstand'},function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
end)

addcmd('norotate',{'noautorotate'},function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = false
end)

addcmd('unnorotate',{'autorotate'},function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = true
end)

addcmd('enablestate',{},function(args, speaker)
	local x = args[1]
	if not tonumber(x) then
		local x = Enum.HumanoidStateType[args[1]]
	end
	speaker.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(x, true)
end)

addcmd('disablestate',{},function(args, speaker)
	local x = args[1]
	if not tonumber(x) then
		local x = Enum.HumanoidStateType[args[1]]
	end
	speaker.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(x, false)
end)

addcmd('drophats',{'drophat'},function(args, speaker)
	if speaker.Character then
		for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
			v.Parent = workspace
		end
	end
end)

addcmd('deletehats',{'nohats','rhats'},function(args, speaker)
	for i,v in next, speaker.Character:GetDescendants() do
		if v:IsA("Accessory") then
			for i,p in next, v:GetDescendants() do
				if p:IsA("Weld") then
					p:Destroy()
				end
			end
		end
	end
end)

addcmd('droptools',{'droptool'},function(args, speaker)
	for i,v in pairs(Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = Players.LocalPlayer.Character
		end
	end
	wait()
	for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = workspace
		end
	end
end)

addcmd('droppabletools',{},function(args, speaker)
	if speaker.Character then
		for _,obj in pairs(speaker.Character:GetChildren()) do
			if obj:IsA("Tool") then
				obj.CanBeDropped = true
			end
		end
	end
	if speaker:FindFirstChildOfClass("Backpack") then
		for _,obj in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
			if obj:IsA("Tool") then
				obj.CanBeDropped = true
			end
		end
	end
end)

local currentToolSize = ""
local currentGripPos = ""
addcmd('reach',{},function(args, speaker)
	execCmd('unreach')
	wait()
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Tool") then
			if args[1] then
				currentToolSize = v.Handle.Size
				currentGripPos = v.GripPos
				local a = Instance.new("SelectionBox")
				a.Name = "SelectionBoxCreated"
				a.Parent = v.Handle
				a.Adornee = v.Handle
				v.Handle.Massless = true
				v.Handle.Size = Vector3.new(0.5,0.5,args[1])
				v.GripPos = Vector3.new(0,0,0)
				speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
			else
				currentToolSize = v.Handle.Size
				currentGripPos = v.GripPos
				local a = Instance.new("SelectionBox")
				a.Name = "SelectionBoxCreated"
				a.Parent = v.Handle
				a.Adornee = v.Handle
				v.Handle.Massless = true
				v.Handle.Size = Vector3.new(0.5,0.5,60)
				v.GripPos = Vector3.new(0,0,0)
				speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
			end
		end
	end
end)

addcmd('unreach',{'noreach'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Tool") then
			v.Handle.Size = currentToolSize
			v.GripPos = currentGripPos
			v.Handle.SelectionBoxCreated:Destroy()
		end
	end
end)

addcmd('grippos',{},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Tool") then
			v.Parent = speaker:FindFirstChildOfClass("Backpack")
			v.GripPos = Vector3.new(args[1],args[2],args[3])
			v.Parent = speaker.Character
		end
	end
end)

addcmd('usetools', {}, function(args, speaker)
	local Backpack = speaker:FindFirstChildOfClass("Backpack")
	local ammount = tonumber(args[1]) or 1
	local delay_ = tonumber(args[2]) or false
	for _, v in ipairs(Backpack:GetChildren()) do
		v.Parent = speaker.Character
		task.spawn(function()
			for _ = 1, ammount do
				v:Activate()
				if delay_ then
					wait(delay_)
				end
			end
			v.Parent = Backpack
		end)
	end
end)

addcmd('logs',{},function(args, speaker)
	logs:TweenPosition(UDim2.new(0, 0, 1, -265), "InOut", "Quart", 0.3, true, nil)
end)

addcmd('chatlogs',{'clogs'},function(args, speaker)
	join.Visible = false
	chat.Visible = true
	table.remove(shade3,table.find(shade3,selectChat))
	table.remove(shade2,table.find(shade2,selectJoin))
	table.insert(shade2,selectChat)
	table.insert(shade3,selectJoin)
	selectJoin.BackgroundColor3 = currentShade3
	selectChat.BackgroundColor3 = currentShade2
	logs:TweenPosition(UDim2.new(0, 0, 1, -265), "InOut", "Quart", 0.3, true, nil)
end)

addcmd('joinlogs',{'jlogs'},function(args, speaker)
	chat.Visible = false
	join.Visible = true	
	table.remove(shade3,table.find(shade3,selectJoin))
	table.remove(shade2,table.find(shade2,selectChat))
	table.insert(shade2,selectJoin)
	table.insert(shade3,selectChat)
	selectChat.BackgroundColor3 = currentShade3
	selectJoin.BackgroundColor3 = currentShade2
	logs:TweenPosition(UDim2.new(0, 0, 1, -265), "InOut", "Quart", 0.3, true, nil)
end)

flinging = false
addcmd('fling',{},function(args, speaker)
	flinging = false
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child:IsA("BasePart") then
			child.CustomPhysicalProperties = PhysicalProperties.new(math.huge, 0.3, 0.5)
		end
	end
	execCmd('noclip')
	wait(.1)
	local bambam = Instance.new("BodyAngularVelocity")
	bambam.Name = randomString()
	bambam.Parent = getRoot(speaker.Character)
	bambam.AngularVelocity = Vector3.new(0,99999,0)
	bambam.MaxTorque = Vector3.new(0,math.huge,0)
	bambam.P = math.huge
	local Char = speaker.Character:GetChildren()
	for i, v in next, Char do
		if v:IsA("BasePart") then
			v.CanCollide = false
			v.Massless = true
			v.Velocity = Vector3.new(0, 0, 0)
		end
	end
	flinging = true
	local function flingDiedF()
		execCmd('unfling')
	end
	flingDied = speaker.Character:FindFirstChildOfClass('Humanoid').Died:Connect(flingDiedF)
	repeat
		bambam.AngularVelocity = Vector3.new(0,99999,0)
		wait(.2)
		bambam.AngularVelocity = Vector3.new(0,0,0)
		wait(.1)
	until flinging == false
end)

addcmd('unfling',{'nofling'},function(args, speaker)
	execCmd('clip')
	if flingDied then
		flingDied:Disconnect()
	end
	flinging = false
	wait(.1)
	local speakerChar = speaker.Character
	if not speakerChar or not getRoot(speakerChar) then return end
	for i,v in pairs(getRoot(speakerChar):GetChildren()) do
		if v.ClassName == 'BodyAngularVelocity' then
			v:Destroy()
		end
	end
	for _, child in pairs(speakerChar:GetDescendants()) do
		if child.ClassName == "Part" or child.ClassName == "MeshPart" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
end)

addcmd('togglefling',{},function(args, speaker)
	if flinging then
		execCmd('unfling')
	else
		execCmd('fling')
	end
end)

addcmd('invisfling',{},function(args, speaker)
	local ch = speaker.Character
	local prt=Instance.new("Model")
	prt.Parent = speaker.Character
	local z1 = Instance.new("Part")
	z1.Name="Torso"
	z1.CanCollide = false
	z1.Anchored = true
	local z2 = Instance.new("Part")
	z2.Name="Head"
	z2.Parent = prt
	z2.Anchored = true
	z2.CanCollide = false
	local z3 =Instance.new("Humanoid")
	z3.Name="Humanoid"
	z3.Parent = prt
	z1.Position = Vector3.new(0,9999,0)
	speaker.Character=prt
	wait(3)
	speaker.Character=ch
	wait(3)
	local Hum = Instance.new("Humanoid")
	z2:Clone()
	Hum.Parent = speaker.Character
	local root =  getRoot(speaker.Character)
	for i,v in pairs(speaker.Character:GetChildren()) do
		if v ~= root and  v.Name ~= "Humanoid" then
			v:Destroy()
		end
	end
	root.Transparency = 0
	root.Color = Color3.new(1, 1, 1)
	local invisflingStepped
	invisflingStepped = RunService.Stepped:Connect(function()
		if speaker.Character and getRoot(speaker.Character) then
			getRoot(speaker.Character).CanCollide = false
		else
			invisflingStepped:Disconnect()
		end
	end)
	sFLY()
	workspace.CurrentCamera.CameraSubject = root
	local bambam = Instance.new("BodyThrust")
	bambam.Parent = getRoot(speaker.Character)
	bambam.Force = Vector3.new(99999,99999*10,99999)
	bambam.Location = getRoot(speaker.Character).Position
end)

function attach(speaker,target)
	if tools(speaker) then
		local char = speaker.Character
		local tchar = target.Character
		local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
		local hrp = getRoot(speaker.Character)
		local hrp2 = getRoot(target.Character)
		hum.Name = "1"
		local newHum = hum:Clone()
		newHum.Parent = char
		newHum.Name = "Humanoid"
		wait()
		hum:Destroy()
		workspace.CurrentCamera.CameraSubject = char
		newHum.DisplayDistanceType = "None"
		local tool = speaker:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or speaker.Character:FindFirstChildOfClass("Tool")
		tool.Parent = char
		hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
		local n = 0
		repeat
			wait(.1)
			n = n + 1
			hrp.CFrame = hrp2.CFrame
		until (tool.Parent ~= char or not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
	else
		notify('Tool Required','You need to have an item in your inventory to use this command')
	end
end

addcmd('attach',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		attach(speaker,Players[v])
	end
end)

function kill(speaker,target,fast)
	if tools(speaker) then
		if target ~= nil then
			local NormPos = getRoot(speaker.Character).CFrame
			if not fast then
				refresh(speaker)
				wait()
				repeat wait() until speaker.Character ~= nil and getRoot(speaker.Character)
				wait(0.3)
			end
			local hrp = getRoot(speaker.Character)
			attach(speaker,target)
			repeat
				wait()
				hrp.CFrame = CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5,999999)
			until not getRoot(target.Character) or not getRoot(speaker.Character)
			speaker.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = NormPos
		end
	else
		notify('Tool Required','You need to have an item in your inventory to use this command')
	end
end

addcmd('kill',{'fekill'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		kill(speaker,Players[v])
	end
end)

addcmd('handlekill', {'hkill'}, function(args, speaker)
	if not firetouchinterest then
		return notify('Incompatible Exploit', 'Your exploit does not support this command (missing firetouchinterest)')
	end
	local RS = RunService.RenderStepped
	local Tool = speaker.Character.FindFirstChildWhichIsA(speaker.Character, "Tool")
	local Handle = Tool and Tool.FindFirstChild(Tool, "Handle")
	if not Tool or not Handle then
		return notify("Handle Kill", "You need to hold a \"Tool\" that does damage on touch. For example the default \"Sword\" tool.")
	end
	for _, v in ipairs(getPlayer(args[1], speaker)) do
		v = Players[v]
		task.spawn(function()
			while Tool and speaker.Character and v.Character and Tool.Parent == speaker.Character do
				local Human = v.Character.FindFirstChildWhichIsA(v.Character, "Humanoid")
				if not Human or Human.Health <= 0 then
					break
				end
				for _, v1 in ipairs(v.Character.GetChildren(v.Character)) do
					v1 = ((v1.IsA(v1, "BasePart") and firetouchinterest(Handle, v1, 1, (RS.Wait(RS) and nil) or firetouchinterest(Handle, v1, 0)) and nil) or v1) or v1
				end
			end
			notify("Handle Kill Stopped!", v.Name .. " died/left or you unequipped the tool!")
		end)
	end
end)

local hb = RunService.Heartbeat
addcmd('tpwalk', {'teleportwalk'}, function(args, speaker)
	tpwalking = true
	local chr = speaker.Character
	local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
	while tpwalking and chr and hum and hum.Parent do
		local delta = hb:Wait()
		if hum.MoveDirection.Magnitude > 0 then
			if args[1] and isNumber(args[1]) then
				chr:TranslateBy(hum.MoveDirection * tonumber(args[1]) * delta * 10)
			else
				chr:TranslateBy(hum.MoveDirection * delta * 10)
			end
		end
	end
end)
addcmd('untpwalk', {'unteleportwalk'}, function(args, speaker)
	tpwalking = false
end)

addcmd('fastkill',{'fastfekill'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		kill(speaker,Players[v],true)
	end
end)

function bring(speaker,target,fast)
	if tools(speaker) then
		if target ~= nil then
			local NormPos = getRoot(speaker.Character).CFrame
			if not fast then
				refresh(speaker)
				wait()
				repeat wait() until speaker.Character ~= nil and getRoot(speaker.Character)
				wait(0.3)
			end
			local hrp = getRoot(speaker.Character)
			attach(speaker,target)
			repeat
				wait()
				hrp.CFrame = NormPos
			until not getRoot(target.Character) or not getRoot(speaker.Character)
			speaker.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = NormPos
		end
	else
		notify('Tool Required','You need to have an item in your inventory to use this command')
	end
end

addcmd('bring',{'febring'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		bring(speaker,Players[v])
	end
end)

addcmd('fastbring',{'fastfebring'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		bring(speaker,Players[v],true)
	end
end)

function teleport(speaker,target,target2,fast)
	if tools(speaker) then
		if target ~= nil then
			local NormPos = getRoot(speaker.Character).CFrame
			if not fast then
				refresh(speaker)
				wait()
				repeat wait() until speaker.Character ~= nil and getRoot(speaker.Character)
				wait(0.3)
			end
			local hrp = getRoot(speaker.Character)
			local hrp2 = getRoot(target2.Character)
			attach(speaker,target)
			repeat
				wait()
				hrp.CFrame = hrp2.CFrame
			until not getRoot(target.Character) or not getRoot(speaker.Character)
			wait(1)
			speaker.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = NormPos
		end
	else
		notify('Tool Required','You need to have an item in your inventory to use this command')
	end
end

addcmd('tp',{'teleport'},function(args, speaker)
	local players1=getPlayer(args[1], speaker)
	local players2=getPlayer(args[2], speaker)
	for i,v in pairs(players1)do
		if getRoot(Players[v].Character) and getRoot(Players[players2[1]].Character) then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			teleport(speaker,Players[v],Players[players2[1]])
		end
	end
end)

addcmd('fasttp',{'fastteleport'},function(args, speaker)
	local players1=getPlayer(args[1], speaker)
	local players2=getPlayer(args[2], speaker)
	for i,v in pairs(players1)do
		if getRoot(Players[v].Character) and getRoot(Players[players2[1]].Character) then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			teleport(speaker,Players[v],Players[players2[1]],true)
		end
	end
end)

addcmd('spin',{},function(args, speaker)
	local spinSpeed = 20
	if args[1] and isNumber(args[1]) then
		spinSpeed = args[1]
	end
	for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
		if v.Name == "Spinning" then
			v:Destroy()
		end
	end
	local Spin = Instance.new("BodyAngularVelocity")
	Spin.Name = "Spinning"
	Spin.Parent = getRoot(speaker.Character)
	Spin.MaxTorque = Vector3.new(0, math.huge, 0)
	Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
end)

addcmd('unspin',{},function(args, speaker)
	for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
		if v.Name == "Spinning" then
			v:Destroy()
		end
	end
end)

local transparent = false
function x(v)
	if v then
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = 0.5
			end
		end
	else
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = 0
			end
		end
	end
end

addcmd('xray',{},function(args, speaker)
	transparent = true
	x(transparent)
end)

addcmd('unxray',{'noxray'},function(args, speaker)
	transparent = false
	x(transparent)
end)

addcmd('togglexray',{},function(args, speaker)
	transparent=not transparent
	x(transparent)
end)

local walltpTouch = nil
addcmd('walltp',{},function(args, speaker)
	local torso
	if r15(speaker) then
		torso = speaker.Character.UpperTorso
	else
		torso = speaker.Character.Torso
	end
	local function touchedFunc(hit)
		local Root = getRoot(speaker.Character)
		if hit:IsA("BasePart") and hit.Position.Y > Root.Position.Y - speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight then
			local hitP = getRoot(hit.Parent)
			if hitP ~= nil then
				Root.CFrame = hit.CFrame * CFrame.new(Root.CFrame.lookVector.X,hitP.Size.Z/2 + speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight,Root.CFrame.lookVector.Z)
			elseif hitP == nil then
				Root.CFrame = hit.CFrame * CFrame.new(Root.CFrame.lookVector.X,hit.Size.Y/2 + speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight,Root.CFrame.lookVector.Z)
			end
		end
	end
	walltpTouch = torso.Touched:Connect(touchedFunc)
end)

addcmd('unwalltp',{'nowalltp'},function(args, speaker)
	if walltpTouch then
		walltpTouch:Disconnect()
	end
end)

autoclicking = false
addcmd('autoclick',{},function(args, speaker)
	if mouse1press and mouse1release then
		execCmd('unautoclick')
		wait()
		local clickDelay = 0.1
		local releaseDelay = 0.1
		if args[1] and isNumber(args[1]) then clickDelay = args[1] end
		if args[2] and isNumber(args[2]) then releaseDelay = args[2] end
		autoclicking = true
		cancelAutoClick = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
			if not gameProcessedEvent then
				if (input.KeyCode == Enum.KeyCode.Backspace and UserInputService:IsKeyDown(Enum.KeyCode.Equals)) or (input.KeyCode == Enum.KeyCode.Equals and UserInputService:IsKeyDown(Enum.KeyCode.Backspace)) then
					autoclicking = false
					cancelAutoClick:Disconnect()
				end
			end
		end)
		notify('Auto Clicker',"Press [backspace] and [=] at the same time to stop")
		repeat wait(clickDelay)
			mouse1press()
			wait(releaseDelay)
			mouse1release()
		until autoclicking == false
	else
		notify('Auto Clicker',"Your exploit doesn't have the ability to use the autoclick")
	end
end)

addcmd('unautoclick',{'noautoclick'},function(args, speaker)
	autoclicking = false
	if cancelAutoClick then cancelAutoClick:Disconnect() end
end)

addcmd('mousesensitivity',{'ms'},function(args, speaker)
	UserInputService.MouseDeltaSensitivity = args[1]
end)

local nameBox = nil
local nbSelection = nil
addcmd('hovername',{},function(args, speaker)
	execCmd('unhovername')
	wait()
	nameBox = Instance.new("TextLabel")
	nameBox.Name = randomString()
	nameBox.Parent = PARENT
	nameBox.BackgroundTransparency = 1
	nameBox.Size = UDim2.new(0,200,0,30)
	nameBox.Font = Enum.Font.Code
	nameBox.TextSize = 16
	nameBox.Text = ""
	nameBox.TextColor3 = Color3.new(1, 1, 1)
	nameBox.TextStrokeTransparency = 0
	nameBox.TextXAlignment = Enum.TextXAlignment.Left
	nameBox.ZIndex = 10
	nbSelection = Instance.new('SelectionBox')
	nbSelection.Name = randomString()
	nbSelection.LineThickness = 0.03
	nbSelection.Color3 = Color3.new(1, 1, 1)
	local function updateNameBox()
		local t
		local target = IYMouse.Target

		if target then
			local humanoid = target.Parent:FindFirstChildOfClass("Humanoid") or target.Parent.Parent:FindFirstChildOfClass("Humanoid")
			if humanoid then
				t = humanoid.Parent
			end
		end

		if t ~= nil then
			local x = IYMouse.X
			local y = IYMouse.Y
			local xP
			local yP
			if IYMouse.X > 200 then
				xP = x - 205
				nameBox.TextXAlignment = Enum.TextXAlignment.Right
			else
				xP = x + 25
				nameBox.TextXAlignment = Enum.TextXAlignment.Left
			end
			nameBox.Position = UDim2.new(0, xP, 0, y)
			nameBox.Text = t.Name
			nameBox.Visible = true
			nbSelection.Parent = t
			nbSelection.Adornee = t
		else
			nameBox.Visible = false
			nbSelection.Parent = nil
			nbSelection.Adornee = nil
		end
	end
	nbUpdateFunc = IYMouse.Move:Connect(updateNameBox)
end)

addcmd('unhovername',{'nohovername'},function(args, speaker)
	if nbUpdateFunc then
		nbUpdateFunc:Disconnect()
		nameBox:Destroy()
		nbSelection:Destroy()
	end
end)

addcmd('nolighting',{'nolight'},function(args, speaker)
	local lighting = game.Lighting
	
	for _, child in ipairs(lighting:GetChildren()) do
	    if not child:IsA('Sky') then
	        child:Destroy()
	    end
	end
end)


addcmd('headsize',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		if Players[v] ~= speaker and Players[v].Character:FindFirstChild('Head') then
			local sizeArg = tonumber(args[2])
			local Size = Vector3.new(sizeArg,sizeArg,sizeArg)
			local Head = Players[v].Character:FindFirstChild('Head')
			if Head:IsA("BasePart") then
				if not args[2] or sizeArg == 1 then
					Head.Size = Vector3.new(2,1,1)
				else
					Head.Size = Size
				end
			end
		end
	end
end)

addcmd('hitbox',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		if Players[v] ~= speaker and Players[v].Character:FindFirstChild('HumanoidRootPart') then
			local sizeArg = tonumber(args[2])
			local Size = Vector3.new(sizeArg,sizeArg,sizeArg)
			local Root = Players[v].Character:FindFirstChild('HumanoidRootPart')
			if Root:IsA("BasePart") then
				if not args[2] or sizeArg == 1 then
					Root.Size = Vector3.new(2,1,1)
					Root.Transparency = 0.4
				else
					Root.Size = Size
					Root.Transparency = 0.4
				end
			end
		end
	end
end)

addcmd('stareat',{'stare'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		if stareLoop then
			stareLoop:Disconnect()
		end
		if not Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Players[v].Character:FindFirstChild("HumanoidRootPart") then return end
		local function stareFunc()
			if Players.LocalPlayer.Character.PrimaryPart and Players:FindFirstChild(v) and Players[v].Character ~= nil and Players[v].Character:FindFirstChild("HumanoidRootPart") then
				local chrPos=Players.LocalPlayer.Character.PrimaryPart.Position
				local tPos=Players[v].Character:FindFirstChild("HumanoidRootPart").Position
				local modTPos=Vector3.new(tPos.X,chrPos.Y,tPos.Z)
				local newCF=CFrame.new(chrPos,modTPos)
				Players.LocalPlayer.Character:SetPrimaryPartCFrame(newCF)
			elseif not Players:FindFirstChild(v) then
				stareLoop:Disconnect()
			end
		end

		stareLoop = RunService.RenderStepped:Connect(stareFunc)
	end
end)

addcmd('unstareat',{'unstare','nostare','nostareat'},function(args, speaker)
	if stareLoop then
		stareLoop:Disconnect()
	end
end)

local RolewatchData = {["Group"]=0,["Role"]="",["Leave"]=false}
local RolewatchConnection = Players.PlayerAdded:Connect(function(player)
	if RolewatchData.Group == 0 then return end
	if player:IsInGroup(RolewatchData.Group) then
		if tostring(player:GetRoleInGroup(RolewatchData.Group)):lower() == RolewatchData.Role:lower() then
			if RolewatchData.Leave == true then
				Players.LocalPlayer:Kick("\n\nRolewatch\nPlayer \"" .. tostring(player.Name) .. "\" has joined with the Role \"" .. RolewatchData.Role .. "\"\n")
			else
				notify("Rolewatch", "Player \"" .. tostring(player.Name) .. "\" has joined with the Role \"" .. RolewatchData.Role .. "\"")
			end
		end
	end
end)

addcmd('rolewatch',{},function(args, speaker)
	local groupid = args[1] or 0
	if isNumber(groupid) then
		if args[2] then
			local rolename = tostring(getstring(2))
			RolewatchData.Group = tonumber(groupid)
			RolewatchData.Role = rolename
			notify("Rolewatch", "Watching Group ID \"" .. tostring(groupid) .. "\" for Role \"" .. rolename .. "\"")
		end
	end
end)

addcmd('rolewatchstop',{},function(args, speaker)
	RolewatchData = {["Group"]=0,["Role"]="",["Leave"]=false}
end)

addcmd('rolewatchleave',{'unrolewatch'},function(args, speaker)
	RolewatchData.Leave = not RolewatchData.Leave
	notify("Rolewatch", RolewatchData.Leave and "Leave has been Enabled" or "Leave has been Disabled")
end)

addcmd('removeterrain',{'rterrain','noterrain'},function(args, speaker)
	workspace:FindFirstChildOfClass('Terrain'):Clear()
end)

addcmd('clearnilinstances',{'nonilinstances','cni'},function(args, speaker)
	if getnilinstances then
		for i,v in pairs(getnilinstances()) do
			v:Destroy()
		end
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing getnilinstances)')
	end
end)

addcmd('destroyheight',{'dh'},function(args, speaker)
	local dh = args[1] or -500
	if isNumber(dh) then
		workspace.FallenPartsDestroyHeight = dh
	end
end)

addcmd('trip',{},function(args, speaker)
	if speaker and speaker.Character and speaker.Character:FindFirstChildOfClass("Humanoid") and getRoot(speaker.Character) then
		local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
		local root = getRoot(speaker.Character)
		hum:ChangeState(0)
		root.Velocity = root.CFrame.LookVector * 30
	end
end)

local freezingua = nil
frozenParts = {}
addcmd('freezeunanchored',{'freezeua'},function(args, speaker)
	if sethidden then
		local badnames = {
			"Head",
			"UpperTorso",
			"LowerTorso",
			"RightUpperArm",
			"LeftUpperArm",
			"RightLowerArm",
			"LeftLowerArm",
			"RightHand",
			"LeftHand",
			"RightUpperLeg",
			"LeftUpperLeg",
			"RightLowerLeg",
			"LeftLowerLeg",
			"RightFoot",
			"LeftFoot",
			"Torso",
			"Right Arm",
			"Left Arm",
			"Right Leg",
			"Left Leg",
			"HumanoidRootPart"
		}
		local function FREEZENOOB(v)
			if v:IsA("BasePart" or "UnionOperation") and v.Anchored == false then
				local BADD = false
				for i = 1,#badnames do
					if v.Name == badnames[i] then
						BADD = true
					end
				end
				if speaker.Character and v:IsDescendantOf(speaker.Character) then
					BADD = true
				end
				if BADD == false then
					for i,c in pairs(v:GetChildren()) do
						if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
							c:Destroy()
						end
					end
					local bodypos = Instance.new("BodyPosition")
					bodypos.Parent = v
					bodypos.Position = v.Position
					bodypos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					local bodygyro = Instance.new("BodyGyro")
					bodygyro.Parent = v
					bodygyro.CFrame = v.CFrame
					bodygyro.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
					if not table.find(frozenParts,v) then
						table.insert(frozenParts,v)
					end
				end
			end
		end
		for i,v in pairs(workspace:GetDescendants()) do
			FREEZENOOB(v)
		end
		freezingua = workspace.DescendantAdded:Connect(FREEZENOOB)
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('thawunanchored',{'thawua','unfreezeunanchored','unfreezeua'},function(args, speaker)
	if sethidden then
		if freezingua then
			freezingua:Disconnect()
		end
		for i,v in pairs(frozenParts) do
			for i,c in pairs(v:GetChildren()) do
				if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
					c:Destroy()
				end
			end
		end
		frozenParts = {}
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('tpunanchored',{'tpua'},function(args, speaker)
	if sethidden then
		local players = getPlayer(args[1], speaker)
		for i,v in pairs(players) do
			local Forces = {}
			for _,part in pairs(workspace:GetDescendants()) do
				if Players[v].Character:FindFirstChild('Head') and part:IsA("BasePart" or "UnionOperation" or "Model") and part.Anchored == false and not part:IsDescendantOf(speaker.Character) and part.Name == "Torso" == false and part.Name == "Head" == false and part.Name == "Right Arm" == false and part.Name == "Left Arm" == false and part.Name == "Right Leg" == false and part.Name == "Left Leg" == false and part.Name == "HumanoidRootPart" == false then
					for i,c in pairs(part:GetChildren()) do
						if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
							c:Destroy()
						end
					end
					local ForceInstance = Instance.new("BodyPosition")
					ForceInstance.Parent = part
					ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
					table.insert(Forces, ForceInstance)
					if not table.find(frozenParts,part) then
						table.insert(frozenParts,part)
					end
				end
			end
			for i,c in pairs(Forces) do
				c.Position = Players[v].Character.Head.Position
			end
		end
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

keycodeMap = {
	["0"] = 0x30,
	["1"] = 0x31,
	["2"] = 0x32,
	["3"] = 0x33,
	["4"] = 0x34,
	["5"] = 0x35,
	["6"] = 0x36,
	["7"] = 0x37,
	["8"] = 0x38,
	["9"] = 0x39,
	["a"] = 0x41,
	["b"] = 0x42,
	["c"] = 0x43,
	["d"] = 0x44,
	["e"] = 0x45,
	["f"] = 0x46,
	["g"] = 0x47,
	["h"] = 0x48,
	["i"] = 0x49,
	["j"] = 0x4A,
	["k"] = 0x4B,
	["l"] = 0x4C,
	["m"] = 0x4D,
	["n"] = 0x4E,
	["o"] = 0x4F,
	["p"] = 0x50,
	["q"] = 0x51,
	["r"] = 0x52,
	["s"] = 0x53,
	["t"] = 0x54,
	["u"] = 0x55,
	["v"] = 0x56,
	["w"] = 0x57,
	["x"] = 0x58,
	["y"] = 0x59,
	["z"] = 0x5A,
	["enter"] = 0x0D,
	["shift"] = 0x10,
	["ctrl"] = 0x11,
	["alt"] = 0x12,
	["pause"] = 0x13,
	["capslock"] = 0x14,
	["spacebar"] = 0x20,
	["space"] = 0x20,
	["pageup"] = 0x21,
	["pagedown"] = 0x22,
	["end"] = 0x23,
	["home"] = 0x24,
	["left"] = 0x25,
	["up"] = 0x26,
	["right"] = 0x27,
	["down"] = 0x28,
	["insert"] = 0x2D,
	["delete"] = 0x2E,
	["f1"] = 0x70,
	["f2"] = 0x71,
	["f3"] = 0x72,
	["f4"] = 0x73,
	["f5"] = 0x74,
	["f6"] = 0x75,
	["f7"] = 0x76,
	["f8"] = 0x77,
	["f9"] = 0x78,
	["f10"] = 0x79,
	["f11"] = 0x7A,
	["f12"] = 0x7B,
}
autoKeyPressing = false
cancelAutoKeyPress = nil

addcmd('autokeypress',{'keypress'},function(args, speaker)
	if keypress and keyrelease and args[1] then
		local code = keycodeMap[args[1]:lower()]
		if not code then notify('Auto Key Press',"Invalid key") return end
		execCmd('unautokeypress')
		wait()
		local clickDelay = 0.1
		local releaseDelay = 0.1
		if args[2] and isNumber(args[2]) then clickDelay = args[2] end
		if args[3] and isNumber(args[3]) then releaseDelay = args[3] end
		autoKeyPressing = true
		cancelAutoKeyPress = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
			if not gameProcessedEvent then
				if (input.KeyCode == Enum.KeyCode.Backspace and UserInputService:IsKeyDown(Enum.KeyCode.Equals)) or (input.KeyCode == Enum.KeyCode.Equals and UserInputService:IsKeyDown(Enum.KeyCode.Backspace)) then
					autoKeyPressing = false
					cancelAutoKeyPress:Disconnect()
				end
			end
		end)
		notify('Auto Key Press',"Press [backspace] and [=] at the same time to stop")
		repeat wait(clickDelay)
			keypress(code)
			wait(releaseDelay)
			keyrelease(code)
		until autoKeyPressing == false
		if cancelAutoKeyPress then cancelAutoKeyPress:Disconnect() keyrelease(code) end
	else
		notify('Auto Key Press',"Your exploit doesn't have the ability to use auto key press")
	end
end)

addcmd('unautokeypress',{'noautokeypress','unkeypress','nokeypress'},function(args, speaker)
	autoKeyPressing = false
	if cancelAutoKeyPress then cancelAutoKeyPress:Disconnect() end
end)

addcmd('addplugin',{'plugin'},function(args, speaker)
	addPlugin(getstring(1))
end)

addcmd('removeplugin',{'deleteplugin'},function(args, speaker)
	deletePlugin(getstring(1))
end)

addcmd('reloadplugin',{},function(args, speaker)
	local pluginName = getstring(1)
	deletePlugin(pluginName)
	wait(1)
	addPlugin(pluginName)
end)

addcmd('removecmd',{'deletecmd'},function(args, speaker)
	removecmd(args[1])
end)

updateColors(currentShade1,shade1)
updateColors(currentShade2,shade2)
updateColors(currentShade3,shade3)
updateColors(currentText1,text1)
updateColors(currentText2,text2)
updateColors(currentScroll,scroll)

if PluginsTable ~= nil or PluginsTable ~= {} then
	FindPlugins(PluginsTable)
end

-- Events
eventEditor.RegisterEvent("OnExecute")
eventEditor.RegisterEvent("OnSpawn",{
	{Type="Player",Name="Player Filter ($1)"}
})
eventEditor.RegisterEvent("OnDied",{
	{Type="Player",Name="Player Filter ($1)"}
})
eventEditor.RegisterEvent("OnDamage",{
	{Type="Player",Name="Player Filter ($1)"},
	{Type="Number",Name="Below Health ($2)"}
})
eventEditor.RegisterEvent("OnKilled",{
	{Type="Player",Name="Victim Player ($1)"},
	{Type="Player",Name="Killer Player ($2)",Default = 1}
})
eventEditor.RegisterEvent("OnJoin",{
	{Type="Player",Name="Player Filter ($1)",Default = 1}
})
eventEditor.RegisterEvent("OnChatted",{
	{Type="Player",Name="Player Filter ($1)",Default = 1},
	{Type="String",Name="Message Filter ($2)"}
})

function hookCharEvents(plr,instant)
	task.spawn(function()
		local char = plr.Character
		if not char then return end

		local humanoid = char:WaitForChild("Humanoid",10)
		if not humanoid then return end

		local oldHealth = humanoid.Health
		humanoid.HealthChanged:Connect(function(health)
			local change = math.abs(oldHealth - health)
			if oldHealth > health then
				eventEditor.FireEvent("OnDamage",plr.Name,tonumber(health))
			end
			oldHealth = health
		end)

		humanoid.Died:Connect(function()
			eventEditor.FireEvent("OnDied",plr.Name)

			local killedBy = humanoid:FindFirstChild("creator")
			if killedBy and killedBy.Value and killedBy.Value.Parent then
				eventEditor.FireEvent("OnKilled",plr.Name,killedBy.Name)
			end
		end)
	end)
end

Players.PlayerAdded:Connect(function(plr)
	eventEditor.FireEvent("OnJoin",plr.Name)
	plr.Chatted:Connect(function(msg) eventEditor.FireEvent("OnChatted",tostring(plr),msg) end)
	plr.CharacterAdded:Connect(function() eventEditor.FireEvent("OnSpawn",tostring(plr)) hookCharEvents(plr) end)
	JoinLog(plr)
	ChatLog(plr)
	if ESPenabled then
		repeat wait(1) until plr.Character and getRoot(plr.Character)
		ESP(plr)
	end
	if CHMSenabled then
		repeat wait(1) until plr.Character and getRoot(plr.Character)
		CHMS(plr)
	end
end)

for _,plr in pairs(Players:GetPlayers()) do
	pcall(function()
		plr.CharacterAdded:Connect(function() eventEditor.FireEvent("OnSpawn",tostring(plr)) hookCharEvents(plr) end)
		hookCharEvents(plr)
	end)
end

if spawnCmds and #spawnCmds > 0 then
	for i,v in pairs(spawnCmds) do
		eventEditor.AddCmd("OnSpawn",{v.COMMAND or "",{0},v.DELAY or 0})
	end
	updatesaves()
end

if loadedEventData then eventEditor.LoadData(loadedEventData) end
eventEditor.Refresh()

eventEditor.FireEvent("OnExecute")

if aliases and #aliases > 0 then
	local cmdMap = {}
	for i,v in pairs(cmds) do
		cmdMap[v.NAME:lower()] = v
		for _,alias in pairs(v.ALIAS) do
			cmdMap[alias:lower()] = v
		end
	end
	for i = 1, #aliases do
		local cmd = string.lower(aliases[i].CMD)
		local alias = string.lower(aliases[i].ALIAS)
		if cmdMap[cmd] then
			customAlias[alias] = cmdMap[cmd]
		end
	end
	refreshaliases()
end

IYMouse.Move:Connect(checkTT)

task.spawn(function()
	local success, latestVersionInfo = pcall(function() 
		local versionJson = game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/version')
		return HttpService:JSONDecode(versionJson)
	end)
	
	if success then
		if currentVersion ~= latestVersionInfo.Version then
			notify('Outdated','Get the new version at infyiff.github.io')
		end
		
		if latestVersionInfo.Announcement and latestVersionInfo.Announcement ~= '' then
			local AnnGUI = Instance.new("Frame")
			local background = Instance.new("Frame")
			local TextBox = Instance.new("TextLabel")
			local shadow = Instance.new("Frame")
			local PopupText = Instance.new("TextLabel")
			local Exit = Instance.new("TextButton")
			local ExitImage = Instance.new("ImageLabel")

			AnnGUI.Name = randomString()
			AnnGUI.Parent = PARENT
			AnnGUI.Active = true
			AnnGUI.BackgroundTransparency = 1
			AnnGUI.Position = UDim2.new(0.5, -180, 0, -500)
			AnnGUI.Size = UDim2.new(0, 360, 0, 20)
			AnnGUI.ZIndex = 10

			background.Name = "background"
			background.Parent = AnnGUI
			background.Active = true
			background.BackgroundColor3 = currentShade1
			background.BorderSizePixel = 0
			background.Position = UDim2.new(0, 0, 0, 20)
			background.Size = UDim2.new(0, 360, 0, 150)
			background.ZIndex = 10

			TextBox.Parent = background
			TextBox.BackgroundTransparency = 1
			TextBox.Position = UDim2.new(0, 5, 0, 5)
			TextBox.Size = UDim2.new(0, 350, 0, 140)
			TextBox.Font = Enum.Font.SourceSans
			TextBox.TextSize = 18
			TextBox.TextWrapped = true
			TextBox.Text = Announcement
			TextBox.TextColor3 = currentText1
			TextBox.TextXAlignment = Enum.TextXAlignment.Left
			TextBox.TextYAlignment = Enum.TextYAlignment.Top
			TextBox.ZIndex = 10

			shadow.Name = "shadow"
			shadow.Parent = AnnGUI
			shadow.BackgroundColor3 = currentShade2
			shadow.BorderSizePixel = 0
			shadow.Size = UDim2.new(0, 360, 0, 20)
			shadow.ZIndex = 10

			PopupText.Name = "PopupText"
			PopupText.Parent = shadow
			PopupText.BackgroundTransparency = 1
			PopupText.Size = UDim2.new(1, 0, 0.95, 0)
			PopupText.ZIndex = 10
			PopupText.Font = Enum.Font.SourceSans
			PopupText.TextSize = 14
			PopupText.Text = "Server Announcement"
			PopupText.TextColor3 = currentText1
			PopupText.TextWrapped = true

			Exit.Name = "Exit"
			Exit.Parent = shadow
			Exit.BackgroundTransparency = 1
			Exit.Position = UDim2.new(1, -20, 0, 0)
			Exit.Size = UDim2.new(0, 20, 0, 20)
			Exit.Text = ""
			Exit.ZIndex = 10

			ExitImage.Parent = Exit
			ExitImage.BackgroundColor3 = Color3.new(1, 1, 1)
			ExitImage.BackgroundTransparency = 1
			ExitImage.Position = UDim2.new(0, 5, 0, 5)
			ExitImage.Size = UDim2.new(0, 10, 0, 10)
			ExitImage.Image = "rbxassetid://5054663650"
			ExitImage.ZIndex = 10

			wait(1)
			AnnGUI:TweenPosition(UDim2.new(0.5, -180, 0, 150), "InOut", "Quart", 0.5, true, nil)

			Exit.MouseButton1Click:Connect(function()
				AnnGUI:TweenPosition(UDim2.new(0.5, -180, 0, -500), "InOut", "Quart", 0.5, true, nil)
				wait(0.6)
				AnnGUI:Destroy()
			end)
		end
	end
end)

task.spawn(function()
	wait()
	Credits:TweenPosition(UDim2.new(0, 0, 0.9, 0), "Out", "Quart", 0.2)
	Logo:TweenSizeAndPosition(UDim2.new(0, 175, 0, 175), UDim2.new(0, 37, 0, 45), "Out", "Quart", 0.3)
	wait(1)
	local OutInfo = TweenInfo.new(1.6809, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
	TweenService:Create(Logo, OutInfo, {ImageTransparency = 1}):Play()
	TweenService:Create(IntroBackground, OutInfo, {BackgroundTransparency = 1}):Play()
	Credits:TweenPosition(UDim2.new(0, 0, 0.9, 30), "Out", "Quart", 0.2)
	wait(0.2)
	Logo:Destroy()
	Credits:Destroy()
	IntroBackground:Destroy()
	minimizeHolder()
	if table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform()) then notify("Unstable Device", "On mobile, Infinite Yield may have issues or features that are not functioning correctly.") end
end)
