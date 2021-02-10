--prikazi volontere koji pohadjaju obrazovnu instituciju OI1
select vol_ime, vol_prez from volonter where vol_jmbg in (select volonter_vol_jmbg from pohadja where obrz_inst_oi_ozn in (select oi_ozn from obrz_inst where oi_ozn like 'OI1'));

--prikazi obrazovne inst koje pohadja jedan ili nijedan volonter
select oi_naz, oi_adr, oi_tip from obrz_inst where oi_ozn in (select obrz_inst_oi_ozn from pohadja having count(obrz_inst_oi_ozn)<2 group by obrz_inst_oi_ozn);

--pogled koji ce prikazati sve institucije koje pohadja vise od jednog volontera
create or replace view Instit (Naziv, Adresa, Tip) as select oi_naz, oi_adr, oi_tip from obrz_inst where oi_ozn in 
(select obrz_inst_oi_ozn from pohadja having count(obrz_inst_oi_ozn)>1 group by obrz_inst_oi_ozn);

--prikazati sve volontere cije je prijave odobrio rukovodilac sa imenom Marija Svitic, sortirane po imenu opadajuce
select vol_ime, vol_prez from volonter where vol_jmbg in (select volonter_vol_jmbg from prijava where rukovodilac_ruk_jmbg 
in(select ruk_jmbg from rukovodilac where ruk_ime like 'Marija' and ruk_prez like 'Svitic')) order by vol_ime desc;

--za svakog volontera prikazati rukovodioca koji mu je odobrio prijavu
select vol_ime, vol_prez, ruk_ime, ruk_prez from volonter v, rukovodilac r where vol_jmbg in 
(select volonter_vol_jmbg from prijava p where p.rukovodilac_ruk_jmbg = r.ruk_jmbg);

--prikazati obraz inst ciji je teren Detelinara
select oi_naz, oi_adr from obrz_inst where oi_ozn in (select oi_ozn from osn_skola where proj_sif in 
(select proj_sif from teren where ter_obl like 'Detelinara'));

--prikazati naziv projekta na kom rade volonteri cija su prva dva slova imena i prezimena jednaka
select proj_sif, proj_naz from projekat where proj_sif in (select projekat_proj_sif from prijava where volonter_vol_jmbg in 
(select vol_jmbg from volonter where substr(vol_ime,1,2)=substr(vol_prez,1,2)));
