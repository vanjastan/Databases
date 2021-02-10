insert into volonter (vol_jmbg, vol_ime, vol_prez) values ('1224345678844', 'Vanja', 'Stanojevic');
insert into volonter (vol_jmbg, vol_ime, vol_prez) values ('1534543565777', 'Maja', 'Majic');
insert into volonter (vol_jmbg, vol_ime, vol_prez) values ('1224344353463', 'Milan', 'Milanovic');
insert into volonter (vol_jmbg, vol_ime, vol_prez) values ('1224345646456', 'Jovica', 'Pajic');
insert into volonter (vol_jmbg, vol_ime, vol_prez) values ('1224345654654', 'Dejana', 'Gajic');
insert into volonter (vol_jmbg, vol_ime, vol_prez) values ('2202998596979', 'Irina', 'Breznica');

insert into projekat (proj_sif, proj_naz, proj_poc, proj_kraj, proj_tip) values (52,'Proj1', to_date('03-02-2017', 'DD-MM-YYYY'), to_date('03-06-2017', 'DD-MM-YYYY'),'Boravak');
insert into projekat (proj_sif, proj_naz, proj_poc, proj_kraj, proj_tip) values (54,'Proj2', to_date('03-02-2017', 'DD-MM-YYYY'), to_date('03-06-2017', 'DD-MM-YYYY'),'Teren');
insert into projekat (proj_sif, proj_naz, proj_poc, proj_kraj, proj_tip) values (56,'Proj3', to_date('03-09-2017', 'DD-MM-YYYY'), to_date('03-12-2017', 'DD-MM-YYYY'),'Boravak');
insert into projekat (proj_sif, proj_naz, proj_poc, proj_kraj, proj_tip) values (58,'Proj4', to_date('03-09-2017', 'DD-MM-YYYY'), to_date('03-12-2017', 'DD-MM-YYYY'),'Teren');

insert into tim (tim_sif) values (345);
insert into tim (tim_sif) values (787);
insert into tim (tim_sif) values (323);
insert into tim (tim_sif) values (976);

insert into aktivnost (akt_id, akt_kap, akt_poc, akt_kraj, akt_tip, tim_tim_sif) values (1,15, to_date('03-02-2017', 'DD-MM-YYYY'), to_date('03-06-2017', 'DD-MM-YYYY'), 'Edu_asist', 787);
insert into aktivnost (akt_id, akt_kap, akt_poc, akt_kraj, akt_tip, tim_tim_sif) values (2,10, to_date('03-09-2017', 'DD-MM-YYYY'), to_date('03-12-2017', 'DD-MM-YYYY'), 'Fizicko', 323);
insert into aktivnost (akt_id, akt_kap, akt_poc, akt_kraj, akt_tip, tim_tim_sif) values (3,25, to_date('03-03-2017', 'DD-MM-YYYY'), to_date('03-05-2017', 'DD-MM-YYYY'), 'Socijalizacija', 976);
insert into aktivnost (akt_id, akt_kap, akt_poc, akt_kraj, akt_tip, tim_tim_sif) values (4,25, to_date('03-03-2017', 'DD-MM-YYYY'), to_date('03-05-2017', 'DD-MM-YYYY'), 'Socijalizacija', 345);

insert into obrz_inst (oi_ozn, oi_naz, oi_adr, oi_tip) values ('OI1', 'Vasa Stajic', 'Stevana Nestickog', 'Osn_skola');
insert into obrz_inst (oi_ozn, oi_naz, oi_adr, oi_tip) values ('OI2', 'Dositej Obradovic', 'Nikole Tesle', 'Osn_skola');
insert into obrz_inst (oi_ozn, oi_naz, oi_adr, oi_tip) values ('OI3', 'FTN', 'Joce Vucerica', 'Fakultet');
insert into obrz_inst (oi_ozn, oi_naz, oi_adr, oi_tip) values ('OI4', 'Svetozar Miletic', 'Trg Mladenaca', 'Sred_skola');

insert into edu_asist (akt_id) values (1);

insert into fakultet (oi_ozn) values ('OI3');

insert into fizicko (akt_id) values (2);

insert into osn_skola (oi_ozn, proj_sif) values ('OI1', 52);
insert into osn_skola (oi_ozn, proj_sif) values ('OI2', 56);

insert into pedagog (ped_jmbg, ped_ime, ped_prez, osn_skola_oi_ozn) values ('123456789101', 'Milica', 'Matic', 'OI1');
insert into pedagog (ped_jmbg, ped_ime, ped_prez, osn_skola_oi_ozn) values ('1234446789101', 'David', 'Markovic', 'OI1');
insert into pedagog (ped_jmbg, ped_ime, ped_prez, osn_skola_oi_ozn) values ('1234446785101', 'Dijana', 'Dicic', 'OI2');
insert into pedagog (ped_jmbg, ped_ime, ped_prez, osn_skola_oi_ozn) values ('1234446785121', 'Jovana', 'Svitic', 'OI2');

insert into teren (proj_sif, ter_obl, ter_kap) values (52, 'Detelinara', '15');
insert into teren (proj_sif, ter_obl, ter_kap) values (54, 'Liman I', '23');
insert into teren (proj_sif, ter_obl, ter_kap) values (56, 'Sajlovo', '15');
insert into teren (proj_sif, ter_obl, ter_kap) values (58, 'Podbara', '25');

insert into socijalizacija (akt_id) values (3);
insert into socijalizacija (akt_id) values (4);

insert into sred_skola (oi_ozn) values ('OI4');

insert into boravak (proj_sif, bor_kap, bor_raz, tim_tim_sif, osn_skola_oi_ozn) values (52, 5, 2, 787, 'OI1');
insert into boravak (proj_sif, bor_kap, bor_raz, tim_tim_sif, osn_skola_oi_ozn) values (56, 7, 3, 787, 'OI2');

insert into jeclan (tim_tim_sif, volonter_vol_jmbg, je_clan_lid) values (345, '2202998596979', 1);
insert into jeclan (tim_tim_sif, volonter_vol_jmbg, je_clan_lid) values (345, '1224345654654', 0);
insert into jeclan (tim_tim_sif, volonter_vol_jmbg, je_clan_lid) values (345, '1224345646456', 0);
insert into jeclan (tim_tim_sif, volonter_vol_jmbg, je_clan_lid) values (787, '1224345678844', 1);
insert into jeclan (tim_tim_sif, volonter_vol_jmbg, je_clan_lid) values (787, '1534543565777', 0);
insert into jeclan (tim_tim_sif, volonter_vol_jmbg, je_clan_lid) values (323, '1224344353463', 1);

insert into izvestaj (izv_sif, izv_dat, tim_tim_sif, pedagog_ped_jmbg, potp_izv) values (100, to_date('12-05-2017', 'DD-MM-YYYY'), 787, '123456789101', 1);
insert into izvestaj (izv_sif, izv_dat, tim_tim_sif, pedagog_ped_jmbg, potp_izv) values (106, to_date('23-04-2017', 'DD-MM-YYYY'), 345, '1234446785121', 1);
insert into izvestaj (izv_sif, izv_dat, tim_tim_sif, pedagog_ped_jmbg, potp_izv) values (107, to_date('25-05-2017', 'DD-MM-YYYY'), 345, '1234446785101', 1);
insert into izvestaj (izv_sif, izv_dat, tim_tim_sif, pedagog_ped_jmbg, potp_izv) values (128, to_date('27-03-2017', 'DD-MM-YYYY'), 323, '123456789101', 0);

insert into pohadja (volonter_vol_jmbg, obrz_inst_oi_ozn) values ('1224345678844','OI1');
insert into pohadja (volonter_vol_jmbg, obrz_inst_oi_ozn) values ('2202998596979','OI2');
insert into pohadja (volonter_vol_jmbg, obrz_inst_oi_ozn) values ('1224345654654','OI2');
insert into pohadja (volonter_vol_jmbg, obrz_inst_oi_ozn) values ('1224345646456','OI2');
insert into pohadja (volonter_vol_jmbg, obrz_inst_oi_ozn) values ('1534543565777','OI1');
insert into pohadja (volonter_vol_jmbg, obrz_inst_oi_ozn) values ('1224344353463','OI1');
insert into pohadja (volonter_vol_jmbg, obrz_inst_oi_ozn) values ('1224344353463','OI3');
insert into pohadja (volonter_vol_jmbg, obrz_inst_oi_ozn) values ('1224345646456','OI4');

insert into rukovodilac (ruk_jmbg, ruk_ime, ruk_prez) values ('9876', 'Natasa', 'Stajic');
insert into rukovodilac (ruk_jmbg, ruk_ime, ruk_prez) values ('10876', 'Marija', 'Svitic');
insert into rukovodilac (ruk_jmbg, ruk_ime, ruk_prez) values ('62522', 'Ivona', 'Holenda');

insert into prijava (prij_id, prij_dat, volonter_vol_jmbg, rukovodilac_ruk_jmbg, projekat_proj_sif, odb_prij) values (220, to_date('05-05-2016', 'DD-MM-YYYY'), '1224345678844', '9876', 52, 0);
insert into prijava (prij_id, prij_dat, volonter_vol_jmbg, rukovodilac_ruk_jmbg, projekat_proj_sif, odb_prij) values (225, to_date('07-06-2016', 'DD-MM-YYYY'), '2202998596979', '10876', 56, 0);
insert into prijava (prij_id, prij_dat, volonter_vol_jmbg, rukovodilac_ruk_jmbg, projekat_proj_sif, odb_prij) values (226, to_date('07-06-2016', 'DD-MM-YYYY'), '1224345654654', '10876', 56, 0);
insert into prijava (prij_id, prij_dat, volonter_vol_jmbg, rukovodilac_ruk_jmbg, projekat_proj_sif, odb_prij) values (306, to_date('08-10-2016', 'DD-MM-YYYY'), '1224345646456', '10876', 56, 0);
insert into prijava (prij_id, prij_dat, volonter_vol_jmbg, rukovodilac_ruk_jmbg, projekat_proj_sif, odb_prij) values (403, to_date('08-10-2016', 'DD-MM-YYYY'), '1534543565777', '9876', 52, 0);
insert into prijava (prij_id, prij_dat, volonter_vol_jmbg, rukovodilac_ruk_jmbg, projekat_proj_sif, odb_prij) values (520, to_date('18-11-2016', 'DD-MM-YYYY'), '1224344353463', '62522', 52, 0);





