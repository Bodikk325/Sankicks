"use strict";(self.webpackChunkSankicks_Final=self.webpackChunkSankicks_Final||[]).push([[857],{2857:(w,g,r)=>{r.r(g),r.d(g,{PaymentModule:()=>v});var m=r(6895),t=r(4650),h=r(9388),u=r(3060),_=r(529);let b=(()=>{class n{constructor(e){this.http=e}getAll(){return this.http.get("https://localhost:7106/api/payment",{responseType:"text"})}sendNonce(e){this.http.post("https://localhost:7106/api/payment",e)}}return n.\u0275fac=function(e){return new(e||n)(t.LFG(_.eN))},n.\u0275prov=t.Yz7({token:n,factory:n.\u0275fac,providedIn:"root"}),n})();var s=r(4006);function x(n,l){if(1&n){const e=t.EpF();t.TgZ(0,"div")(1,"form",5)(2,"label",6),t._uU(3,"K\xe1rtyasz\xe1m*"),t.qZA(),t._UZ(4,"div",7),t.TgZ(5,"label",8),t._uU(6,"Lej\xe1rati d\xe1tum*"),t.qZA(),t._UZ(7,"div",9),t.TgZ(8,"label",10),t._uU(9,"CVV*"),t.qZA(),t._UZ(10,"div",11),t.TgZ(11,"label",12),t._uU(12,"\xcdr\xe1ny\xedt\xf3sz\xe1m*"),t.qZA(),t.TgZ(13,"input",13),t.NdJ("input",function(a){t.CHM(e);const i=t.oxw();return t.KtG(i.postalCode_input(a))}),t.qZA(),t.TgZ(14,"label",14),t._uU(15,"C\xedm*"),t.qZA(),t.TgZ(16,"input",15),t.NdJ("input",function(a){t.CHM(e);const i=t.oxw();return t.KtG(i.adress_input(a))}),t.qZA(),t.TgZ(17,"label",16),t._uU(18,"Emelet/ajt\xf3*"),t.qZA(),t.TgZ(19,"input",17),t.NdJ("input",function(a){t.CHM(e);const i=t.oxw();return t.KtG(i.door_input(a))}),t.qZA(),t.TgZ(20,"label",18),t._uU(21,"Megjegyz\xe9s"),t.qZA(),t.TgZ(22,"input",19),t.NdJ("input",function(a){t.CHM(e);const i=t.oxw();return t.KtG(i.note_input(a))}),t.qZA(),t.TgZ(23,"span",20),t._uU(24,"Hiba t\xf6rt\xe9nt!"),t.qZA(),t.TgZ(25,"div",21),t._UZ(26,"div",22),t.qZA(),t.TgZ(27,"div",23),t._UZ(28,"input",24),t.qZA()()()}}function y(n,l){if(1&n){const e=t.EpF();t.TgZ(0,"div")(1,"form",5)(2,"label",12),t._uU(3,"\xcdr\xe1ny\xedt\xf3sz\xe1m*"),t.qZA(),t.TgZ(4,"input",13),t.NdJ("input",function(a){t.CHM(e);const i=t.oxw();return t.KtG(i.postalCode_input(a))}),t.qZA(),t.TgZ(5,"label",14),t._uU(6,"C\xedm*"),t.qZA(),t.TgZ(7,"input",15),t.NdJ("input",function(a){t.CHM(e);const i=t.oxw();return t.KtG(i.adress_input(a))}),t.qZA(),t.TgZ(8,"label",16),t._uU(9,"Emelet/ajt\xf3*"),t.qZA(),t.TgZ(10,"input",17),t.NdJ("input",function(a){t.CHM(e);const i=t.oxw();return t.KtG(i.door_input(a))}),t.qZA(),t.TgZ(11,"label",18),t._uU(12,"Megjegyz\xe9s"),t.qZA(),t.TgZ(13,"input",19),t.NdJ("input",function(a){t.CHM(e);const i=t.oxw();return t.KtG(i.note_input(a))}),t.qZA(),t.TgZ(14,"span",20),t._uU(15,"Hiba t\xf6rt\xe9nt!"),t.qZA(),t.TgZ(16,"div",23)(17,"input",25),t.NdJ("click",function(){t.CHM(e);const a=t.oxw();return t.KtG(a.ell())}),t.qZA()()()()}}const C=[{path:"card",component:(()=>{class n{constructor(e,o,a){this.cartService=e,this.router=o,this.paymentService=a,this.databaseList=[],this.object={name:"",size:""},this.megjegyzse="",this.hiba=!1,this.szabad=!1,this.postalCode="",this.adress="",this.door="",this.cim_adatok=!1,this.szallitasnal_ful=!1,this.card_ful=!0,this.paypal_ful=!1,this.ossz=0,this.client_token="",this.valtozo=!1}ngOnInit(){this.cartService.getAll().forEach(e=>{this.databaseList.push({name:e.name,size:e.size})}),this.ossz=this.cartService.getFullPrice()+4500,this.paymentService.getAll().subscribe({next:e=>{this.client_token=e,this.Initaliaze_Card()}})}Initaliaze_Card(){var e=this.databaseList,o=this.cartService.getFullPrice(),i=document.querySelector("#cardForm");braintree.client.create({authorization:"sandbox_9q7w78sd_cs2spgnkwdby94mc"},function(d,c){d?console.error(d):function k(d){braintree.hostedFields.create({client:d,styles:{input:{"font-size":"16px","font-family":"courier, monospace","font-weight":"lighter",color:"#ccc"},":focus":{color:"black"},".valid":{color:"#8bdda8"}},fields:{number:{selector:"#card-number",placeholder:"4111 1111 1111 1111"},cvv:{selector:"#cvv",placeholder:"123"},expirationDate:{selector:"#expiration-date",placeholder:"MM/YYYY"}}},function(c,T){c?console.error(c):i.addEventListener("submit",function(z){z.preventDefault(),T.tokenize(function(E,j){E?document.getElementById("hiba").style.display="block":null!=localStorage.getItem("address")&&null!=localStorage.getItem("door")&&null!=localStorage.getItem("postalcode")?(document.getElementById("betoltes").style.display="block",$.ajax({type:"POST",headers:{Accept:"application/json","Content-Type":"application/json"},url:"https://localhost:7106/api/order",data:JSON.stringify({address:localStorage.getItem("address"),order:JSON.stringify(e),message:localStorage.getItem("note"),postalCode:localStorage.getItem("postalcode"),door:localStorage.getItem("door"),payed:"card",amount:o.toString()}),dataType:"json"}).done(function(A){"success"==A&&null!=localStorage.getItem("address")&&null!=localStorage.getItem("door")&&null!=localStorage.getItem("postalcode")&&$.ajax({type:"POST",headers:{Accept:"application/json","Content-Type":"application/json"},url:"https://localhost:7106/api/payment",data:JSON.stringify({payment_method_nonce:"fake-valid-nonce",amount:o.toString()}),dataType:"json"}).done(function(f){"success"==f?(window.location.replace("http://localhost:4200/pay/done"),localStorage.clear()):(console.log(f),document.getElementById("hiba").style.display="block")})})):document.getElementById("hiba").style.display="block"})},!1)})}(c)})}change_Card(){this.paypal_ful=!1,this.szallitasnal_ful=!1,this.card_ful=!0,this.Initaliaze_Card()}change_Szallitasnal(){this.paypal_ful=!1,this.card_ful=!1,this.szallitasnal_ful=!0}postalCode_input(e){localStorage.setItem("postalcode",e.target.value)}adress_input(e){localStorage.setItem("address",e.target.value)}door_input(e){localStorage.setItem("door",e.target.value)}note_input(e){localStorage.setItem("note",e.target.value)}ell(){var e=this.cartService.getFullPrice();null==localStorage.getItem("address")||null==localStorage.getItem("door")||null==localStorage.getItem("postalcode")?document.getElementById("hiba").style.display="block":""!=localStorage.getItem("address")&&""!=localStorage.getItem("door")&&""!=localStorage.getItem("postalcode")&&$.ajax({type:"POST",headers:{Accept:"application/json","Content-Type":"application/json"},url:"https://localhost:7106/api/order",data:JSON.stringify({address:localStorage.getItem("address"),order:JSON.stringify(this.databaseList),message:localStorage.getItem("note"),postalCode:localStorage.getItem("postalcode"),door:localStorage.getItem("door"),payed:"shipping",amount:e.toString()}),dataType:"json"}).done(function(a){"success"==a?(window.location.replace("http://localhost:4200/pay/done"),localStorage.clear()):$("#checkout-message").html("<h1>Hiba!</h1><p>Sikertelen fizet\xe9s! K\xe9rj\xfck prob\xe1ld \xfajra k\xe9s\u0151bb vagy l\xe9pj kapcsolatba vel\xfcnk!</p>")})}}return n.\u0275fac=function(e){return new(e||n)(t.Y36(h.N),t.Y36(u.F0),t.Y36(b))},n.\u0275cmp=t.Xpm({type:n,selectors:[["app-card"]],decls:11,vars:3,consts:[[1,"kont"],[1,"fejlec-elem",3,"click"],[1,"pont"],[1,"text-center"],[4,"ngIf"],["action","/","method","post","id","cardForm"],["for","card-number",1,"hosted-fields--label"],["id","card-number",1,"hosted-field"],["for","expiration-date",1,"hosted-fields--label"],["id","expiration-date",1,"hosted-field"],["for","cvv",1,"hosted-fields--label"],["id","cvv",1,"hosted-field"],["for","postalCode",1,"hosted-fields--label"],["id","postalCode","type","text","placeholder","1000",1,"igen",3,"input"],["for","adress",1,"hosted-fields--label"],["id","adress","type","text","placeholder","V\xe1ci utca 30.",1,"igen",3,"input"],["for","door",1,"hosted-fields--label"],["id","door","type","text","placeholder","2/10",1,"igen",3,"input"],["for","message",1,"hosted-fields--label"],["id","message","type","text",1,"igen",3,"input"],["id","hiba",1,"text-danger","hidden"],[1,"d-flex","justify-content-center","align-items-center"],["id","betoltes",1,"loader"],[1,"button-container"],["type","submit","value","Meger\u0151s\xedt\xe9s","id","submit",1,"button","button--small","gomb","mt-5"],["type","submit","value","Meger\u0151s\xedt\xe9s","id","submit",1,"button","button--small","gomb","mt-5",3,"click"]],template:function(e,o){1&e&&(t.TgZ(0,"div",0)(1,"div",1),t.NdJ("click",function(){return o.change_Card()}),t.TgZ(2,"h3",2),t._uU(3,"Fizet\xe9s bank- vagy hitelk\xe1rty\xe1val"),t.qZA()(),t.TgZ(4,"div",1),t.NdJ("click",function(){return o.change_Szallitasnal()}),t.TgZ(5,"h3",2),t._uU(6,"Fizet\xe9s sz\xe1ll\xedt\xe1sn\xe1l"),t.qZA()()(),t.TgZ(7,"h4",3),t._uU(8),t.qZA(),t.YNc(9,x,29,0,"div",4),t.YNc(10,y,18,0,"div",4)),2&e&&(t.xp6(8),t.hij("Fizetend\u0151: ",o.ossz," Ft"),t.xp6(1),t.Q6J("ngIf",o.card_ful),t.xp6(1),t.Q6J("ngIf",o.szallitasnal_ful))},dependencies:[m.O5,s._Y,s.JL,s.F],styles:[".hosted-field[_ngcontent-%COMP%]{height:50px;box-sizing:border-box;width:100%;padding:12px;display:inline-block;box-shadow:none;font-weight:600;font-size:14px;border-radius:0;border:1px solid #dddddd;line-height:20px;background:#fcfcfc;margin-bottom:12px;background:linear-gradient(to right,white 50%,#fcfcfc 50%);background-size:200% 100%;background-position:right bottom;transition:all .3s ease-in-out}.hosted-fields--label[_ngcontent-%COMP%]{font-family:courier,monospace;text-transform:uppercase;font-size:14px;display:block;margin-bottom:6px}.button-container[_ngcontent-%COMP%]{display:block;text-align:center}.button[_ngcontent-%COMP%]{cursor:pointer;font-weight:500;line-height:inherit;position:relative;text-decoration:none;text-align:center;border-style:solid;border-width:1px;border-radius:3px;display:inline-block}.button--small[_ngcontent-%COMP%]{padding:10px 20px;font-size:.875rem}.button--green[_ngcontent-%COMP%]{outline:none;background-color:#64d18a;border-color:#64d18a;color:#fff;transition:all .2s ease}.button--green[_ngcontent-%COMP%]:hover{background-color:#8bdda8;color:#fff}.braintree-hosted-fields-focused[_ngcontent-%COMP%]{border:1px solid #64d18a;border-radius:1px;background-position:left bottom}input[_ngcontent-%COMP%]{height:50px;box-sizing:border-box;width:100%;padding:12px;display:inline-block;box-shadow:none;font-weight:600;font-size:14px;border-radius:0;border:1px solid #dddddd;line-height:20px;background:#fcfcfc;margin-bottom:12px;background:linear-gradient(to right,white 50%,#fcfcfc 50%);background-size:200% 100%;background-position:right bottom;transition:all .3s ease-in-out;font-size:16px;font-family:courier,monospace;font-weight:lighter}#hiba[_ngcontent-%COMP%]{display:none;text-align:center;align-self:center}.loader[_ngcontent-%COMP%]{border:16px solid #f3f3f3;border-radius:50%;border-top:16px solid black;width:60px;height:60px;animation:spin 2s linear infinite;display:none;text-align:center;align-self:center}@keyframes spin{0%{transform:rotate(0)}to{transform:rotate(360deg)}}input[_ngcontent-%COMP%]:focus{outline-width:0;border:1px solid #64d18a;border-radius:1px;background-position:left bottom}.braintree-hosted-fields-invalid[_ngcontent-%COMP%]{border:1px solid #ed574a}#cardForm[_ngcontent-%COMP%]{max-width:50.75em;margin:0 auto;padding:1.875em}.kont[_ngcontent-%COMP%]{display:flex;flex-direction:column;width:100%;justify-content:space-around;align-items:center}.fejlec_elem[_ngcontent-%COMP%]{flex:1 1 30%}.pont[_ngcontent-%COMP%]{cursor:pointer}@media (min-width : 768px){.kont[_ngcontent-%COMP%]{flex-direction:row}}"]}),n})()},{path:"done",component:(()=>{class n{constructor(){}ngOnInit(){}}return n.\u0275fac=function(e){return new(e||n)},n.\u0275cmp=t.Xpm({type:n,selectors:[["app-done"]],decls:9,vars:0,consts:[[1,"text-center","mt-5"],[1,"text-center"],[1,"d-flex","kont","justify-content-around","mb-5","align-self-center"],["routerLink","",1,"text-center","gomb","mt-2"],[1,"text-center","gomb","mt-2"]],template:function(e,o){1&e&&(t.TgZ(0,"h3",0),t._uU(1,"Sikeres rendel\xe9s!"),t.qZA(),t.TgZ(2,"h3",1),t._uU(3,"Ellen\u0151rizd a rendel\xe9sed a sz\xe1mla alapj\xe1n!"),t.qZA(),t.TgZ(4,"div",2)(5,"button",3),t._uU(6,"Vissza a f\u0151oldalra"),t.qZA(),t.TgZ(7,"button",4),t._uU(8,"Sz\xe1mla megtekint\xe9se"),t.qZA()())},dependencies:[u.rH],styles:[".gomb[_ngcontent-%COMP%]{flex-basis:25%;align-self:center;text-align:center;border:1px solid black;width:80%;padding:10px;font-size:20px;background-color:#000;color:#fff;border-radius:4px}.kont[_ngcontent-%COMP%]{flex-direction:column}@media (min-width: 768px){.kont[_ngcontent-%COMP%]{flex-direction:row}}"]}),n})()}];let v=(()=>{class n{}return n.\u0275fac=function(e){return new(e||n)},n.\u0275mod=t.oAB({type:n}),n.\u0275inj=t.cJS({imports:[m.ez,u.Bz.forChild(C),s.u5,s.UX]}),n})()}}]);