module PragmaticTokenizer
  module Languages
    module Italian
      include Languages::Common
      ABBREVIATIONS = ['1°', 'a.c', 'a.c/a', 'a.cam', 'a.civ', 'a.cor', 'a.d.r', 'a.gov', 'a.mil', 'a.mon', 'a.smv', 'a.v', 'a/a', 'a/c', 'a/i', 'aa', 'aaaa', 'aaal', 'aacst', 'aamct', 'aams', 'aar', 'aato', 'ab', 'abbigl', 'abbrev', 'abc', 'abi', 'abl', 'abm', 'abr', 'abs', 'absp', 'ac', 'acam', 'acb', 'acbi', 'acc', 'accorc', 'accr', 'acd', 'ace', 'acec', 'acep', 'aci', 'acli', 'acp', 'acro', 'acsit', 'actl', 'ad', 'ad.mil', 'ada', 'adap', 'adatt', 'adc', 'add', 'adei', 'adeion', 'adhd', 'adi', 'adisco', 'adj', 'adm', 'adp', 'adr', 'ads', 'adsi', 'adsl', 'adv', 'ae.b', 'aefi', 'aer', 'aerodin', 'aeron', 'afa', 'afc', 'afci', 'affl', 'afi', 'afic', 'afm', 'afp', 'ag', 'agcm', 'agcom', 'age', 'agecs', 'agesci', 'agg', 'agip', 'agis', 'agm', 'ago', 'agr', 'agric', 'agt', 'ai', 'aia', 'aiab', 'aiac', 'aiace', 'aiap', 'aias', 'aiat', 'aib', 'aic', 'aica', 'aicel', 'aici', 'aics', 'aid', 'aida', 'aidaa', 'aidac', 'aidama', 'aidda', 'aidim', 'aido', 'aids', 'aies', 'aif', 'aih', 'aiip', 'aimi', 'aip', 'aipsc', 'airi', 'ais', 'aisa', 'aism', 'aiss', 'aissca', 'aitc', 'aiti', 'aitr', 'aits', 'aka', 'al', 'alai', 'alch', 'alg', 'ali', 'alim', 'all', 'allev', 'allus', 'alp', 'alq', 'alt', 'am', 'ama', 'amaci', 'amag', 'amami', 'amc', 'ammec', 'amn', 'ampas', 'amps', 'an', 'ana', 'anaai', 'anac', 'anaci', 'anad', 'anai', 'anaoo', 'anart', 'anat', 'anat. comp', 'ancci', 'anci', 'ancip', 'ancsa', 'andit', 'anec', 'anee', 'anem', 'anes', 'anffas', 'ani', 'ania', 'anica', 'anie', 'animi', 'anis', 'anisc', 'anm', 'anmfit', 'anmig', 'anmil', 'anmli', 'anms', 'anpa', 'anpas', 'anpci', 'anpe', 'anpi', 'ansi', 'ansv', 'ant', 'anta', 'antifr', 'antlo', 'anton', 'antrop', 'anusca', 'anvi', 'anx', 'ao', 'ap', 'apa', 'apd', 'apea', 'apec', 'apet', 'api', 'apos', 'app', 'app.sc', 'apr', 'aps', 'apt', 'aq', 'ar', 'ar.ind', 'ar.rep', 'arald', 'arame', 'arc', 'arch', 'archeol', 'arci', 'ardsu', 'are', 'arg', 'aritm', 'arpa', 'arpat', 'arred', 'arrt', 'arsia', 'art', 'arti min', 'artig', 'artigl', 'artt', 'as', 'asa', 'asae', 'asc', 'asci', 'ascii', 'ascom', 'ascop', 'asd', 'ase', 'asf', 'asfer', 'asg', 'asic', 'asifa', 'asl', 'asmdc', 'asmi', 'asp', 'aspic', 'aspp', 'assi', 'assic', 'assol', 'asst', 'aster', 'astr', 'astrol', 'astron', 'at', 'ata', 'atb', 'atic', 'atm', 'ats', 'att', 'attrav', 'atv', 'au', 'auc', 'aus', 'auser', 'aut', 'autom', 'av', 'avi', 'avis', 'avo', 'avv', 'avvers', 'awb', 'awdp', 'az', 'azh', 'b.a', 'b2b', 'b2c', 'ba', 'bafta', 'bal', 'ball', 'ban', 'banc', 'bar', 'bart', 'bas', 'bat', 'batt', 'bban', 'bbc', 'bbl', 'bbs', 'bbtc', 'bcc', 'bce', 'bcf', 'bdf', 'bei', 'bep', 'bers', 'bg', 'bi', 'bibl', 'bic', 'bioch', 'biol', 'bl', 'bld', 'bldg', 'blpc', 'bm', 'bmps', 'bmw', 'bn', 'bna', 'bncf', 'bncrm', 'bni', 'bnl', 'bo', 'bot', 'bpl', 'bpm', 'bpn', 'bpr', 'br', 'brd', 'bre', 'bric', 'brig', 'brig.ca', 'brig.gen', 'bros', 'bs', 'bsc', 'bsp', 'bsu', 'bt', 'btc', 'btg', 'btg.l', 'btr', 'bts', 'bu', 'bur', 'bz', 'c.a', 'c.a.p', 'c.c.p', 'c.cost', 'c.d a', 'c.d', 'c.le', 'c.m', 'c.opv', 'c.p', 'c.s', 'c.v', 'c.v.d', 'c/a', 'c/c', 'c/pag', 'ca', 'ca.rep', 'ca.sm', 'ca.sz', 'ca.uf', 'caaf', 'cab', 'cad', 'cae', 'cai', 'cal', 'cam', 'cap', 'capol', 'capt', 'car', 'car.sc', 'carat', 'card', 'cas', 'casaca', 'casd', 'cass.civ', 'cat', 'caus', 'cav', 'cavg', 'cb', 'cbd', 'cbr', 'cbs', 'cc', 'cca', 'ccap', 'ccda', 'ccdp', 'ccee', 'cciaa', 'ccie', 'ccip', 'cciss', 'ccna', 'ccnl', 'ccnp', 'ccpb', 'ccs', 'ccsp', 'cctld', 'cctv', 'ccv', 'cd', 'cda', 'cdma', 'cdo', 'cdpd', 'cdr', 'cds', 'cdw', 'ce', 'ced', 'cee', 'cei', 'cemat', 'cenelec', 'centr', 'cepis', 'ceps', 'cept', 'cerit', 'cese', 'cesis', 'cesvot', 'cet', 'cf', 'cfa', 'cfr', 'cg', 'cgi', 'cgil', 'cgs', 'ch', 'chf', 'chim', 'chim. ind', 'chir', 'ci', 'ci-europa', 'ciber', 'cicae', 'cid', 'cie', 'cif', 'cifej', 'cig', 'cigs', 'cii', 'cilea', 'cilo', 'cim', 'cime', 'cin', 'cinit', 'cio', 'cipe', 'cirm', 'cisal', 'ciscs', 'cisd', 'cisl', 'cism', 'citol', 'cl', 'class', 'cli', 'cm', 'cmdr', 'cme', 'cmo', 'cmr', 'cms', 'cmyk', 'cm²', 'cm³', 'cn', 'cna', 'cnb', 'cnc', 'cnel', 'cngei', 'cni', 'cnipa', 'cnit', 'cnn', 'cnr', 'cns', 'cnt', 'cnvvf', 'co', 'co.ing', 'co.sa', 'cobas', 'coc', 'cod', 'cod. civ', 'cod. deont. not', 'cod. pen', 'cod. proc. civ', 'cod. proc. pen', 'codec', 'coi', 'col', 'colf', 'coll', 'com', 'comdr', 'comm', 'comp', 'compar', 'compl', 'con', 'conai', 'conc', 'concl', 'condiz', 'confetra', 'confitarma', 'confr', 'cong', 'congeav', 'congiunt', 'coni', 'coniug', 'consec', 'consob', 'contab', 'contr', 'coreco', 'corp', 'corr', 'correl', 'corrisp', 'cosap', 'cospe', 'cost', 'costr', 'cpc', 'cpdel', 'cpe', 'cpi', 'cpl', 'cpt', 'cpu', 'cr', 'cral', 'credem', 'crf', 'cri', 'cric', 'cristall', 'crm', 'cro', 'cron', 'crsm', 'crt', 'cs', 'csa', 'csai', 'csc', 'csm', 'csn', 'css', 'ct', 'ctc', 'cti', 'ctr', 'ctsis', 'cuc', 'cud', 'cun', 'cup', 'cusi', 'cvb', 'cvbs', 'cwt', 'cz', 'd', 'd.c', 'd.i.a', 'dab', 'dac', 'dam', 'dams', 'dat', 'dau', 'db', 'dbms', 'dc', 'dca', 'dccc', 'dda', 'ddp', 'ddr', 'ddt', 'dea', 'decoraz', 'dect', 'dek', 'denom', 'deriv', 'derm', 'determ', 'df', 'dfp', 'dg', 'dga', 'dhcp', 'di', 'dia', 'dial', 'dic', 'dicomac', 'dif', 'difett', 'dig. iv', 'digos', 'dimin', 'dimostr', 'din', 'dipart', 'diplom', 'dir', 'dir. amm', 'dir. can', 'dir. civ', 'dir. d. lav', 'dir. giur', 'dir. internaz', 'dir. it', 'dir. pen', 'dir. priv', 'dir. proces', 'dir. pub', 'dir. rom', 'disus', 'diy', 'dl', 'dlf', 'dm', 'dme', 'dmf', 'dmo', 'dmoz', 'dm²', 'dm³', 'dnr', 'dns', 'doa', 'doc', 'docg', 'dom', 'dop', 'dos', 'dott', 'dpa', 'dpi', 'dpl', 'dpof', 'dps', 'dpt', 'dr', 'dra', 'drm', 'drs', 'dry pt', 'ds', 'dslam', 'dspn', 'dss', 'dtc', 'dtmf', 'dtp', 'dts', 'dv', 'dvb', 'dvb-t', 'dvd', 'dvi', 'dwdm', 'e.g', 'e.p.c', 'ead', 'eafrd', 'ean', 'eap', 'easw', 'eb', 'eban', 'ebr', 'ebri', 'ebtn', 'ecc', 'eccl', 'ecdl', 'ecfa', 'ecff', 'ecg', 'ecm', 'econ', 'econ. az', 'econ. dom', 'econ. pol', 'ecpnm', 'ed', 'ed agg', 'edge', 'edi', 'edil', 'edit', 'ef', 'efa', 'efcb', 'efp', 'efsa', 'efta', 'eg', 'egiz', 'egl', 'egr', 'ei', 'eisa', 'elab', 'elettr', 'elettron', 'ellitt', 'emap', 'emas', 'embr', 'emdr', 'emi', 'emr', 'en', 'enaip', 'enal', 'enaoli', 'enapi', 'encat', 'enclic', 'enea', 'enel', 'eni', 'enigm', 'enit', 'enol', 'enpa', 'enpaf', 'enpals', 'enpi', 'enpmf', 'ens', 'entom', 'epd', 'epigr', 'epirbs', 'epl', 'epo', 'ept', 'erc', 'ercom', 'ermes', 'erp', 'es', 'esa', 'escl', 'esist', 'eso', 'esp', 'estens', 'estr. min', 'etacs', 'etf', 'eti', 'etim', 'etn', 'etol', 'eu', 'eufem', 'eufic', 'eula', 'eva®', 'f.a', 'f.b', 'f.m', 'f.p', 'fa', 'fabi', 'fac', 'facl', 'facs', 'fad', 'fai', 'faile', 'failp', 'failpa', 'faisa', 'falcri', 'fam', 'famar', 'fans', 'fao', 'fapav', 'faq', 'farm', 'fasi', 'fasib', 'fatt', 'fbe', 'fbi', 'fc', 'fco', 'fcp', 'fcr', 'fcu', 'fdi', 'fe', 'feaog', 'feaosc', 'feb', 'fedic', 'fema', 'feoga', 'ferr', 'fesco', 'fesr', 'fess', 'fg', 'fi', 'fiaf', 'fiaip', 'fiais', 'fialtel', 'fiap', 'fiapf', 'fiat', 'fiavet', 'fic', 'ficc', 'fice', 'fidal', 'fidam', 'fidapa', 'fieg', 'fifa', 'fifo', 'fig', 'figc', 'figs', 'filat', 'filcams', 'file', 'filol', 'filos', 'fim', 'fima', 'fimmg', 'fin', 'finco', 'fio', 'fioto', 'fipe', 'fipresci', 'fis', 'fisar', 'fisc', 'fisg', 'fisiol', 'fisiopatol', 'fistel', 'fit', 'fita', 'fitav', 'fits', 'fiv', 'fivet', 'fivl', 'flo', 'flpd', 'fluid pt', 'fm', 'fmcg', 'fmi', 'fmth', 'fnas', 'fnomceo', 'fnsi', 'fob', 'fod', 'folcl', 'fon', 'fop', 'fotogr', 'fp', 'fpc', 'fpld', 'fr', 'fra', 'fs', 'fsc', 'fse', 'fsf', 'fsfi', 'fsh', 'ft', 'ftase', 'ftbcc', 'fte', 'ftp', 'fts', 'ft²', 'ft³', 'fuaav', 'fut', 'fv', 'fvg', 'g.fv', 'g.u', 'g.u.el', 'gal', 'gats', 'gatt', 'gb', 'gc', 'gccc', 'gco', 'gcost', 'gd', 'gdd', 'gdf', 'gdi', 'gdo', 'gdp', 'ge', 'gea', 'gel', 'gen', 'geneal', 'geod', 'geofis', 'geogr', 'geogr. antr', 'geogr. fis', 'geol', 'geom', 'gep', 'germ', 'gescal', 'gg', 'ggv', 'gi', 'gia', 'gides', 'gift', 'gio', 'giorn', 'gis', 'gisma', 'gismo', 'giu', 'gm', 'gmdss', 'gme', 'gmo', 'go', 'gov', 'gp', 'gpl', 'gprs', 'gps', 'gr', 'gr.sel.spec', 'gr.sel.tr', 'gr.sqd', 'gra', 'gram', 'grano', 'grd', 'grtn', 'grv', 'gsa', 'gsm', 'gsm-r', 'gsr', 'gtld', 'gu', 'guce', 'gui', 'gus', 'ha', 'haart', 'haccp', 'hba', 'hcg', 'hcrp', 'hd-dvd', 'hdcp', 'hdi', 'hdml', 'hdtv', 'hepa', 'hfpa', 'hg', 'hifi', 'hiperlan', 'hiv', 'hm', 'hmld', 'hon', 'hosp', 'hpv', 'hr', 'hrh', 'hrm', 'hrt', 'html', 'http', 'hvac', 'hz', 'i.e', 'i.g.m', 'iana', 'iasb', 'iasc', 'iass', 'iat', 'iata', 'iatse', 'iau', 'iban', 'ibid', 'ibm', 'icann', 'icao', 'icbi', 'iccu', 'ice', 'icf', 'ici', 'icm', 'icom', 'icon', 'ics', 'icsi', 'icstis', 'ict', 'icta', 'id', 'iden', 'idl', 'idraul', 'iec', 'iedm', 'ieee', 'ietf', 'ifat', 'ifel', 'ifla', 'ifrs', 'ifto', 'ifts', 'ig', 'igm', 'igmp', 'igp', 'iims', 'iipp', 'ilm', 'ilo', 'ilor', 'ils', 'im', 'imaie', 'imap', 'imc', 'imdb', 'imei', 'imi', 'imms', 'imo', 'imp', 'imper', 'imperf', 'impers', 'imq', 'ims', 'imsi', 'in', 'inail', 'inca', 'incb', 'inci', 'ind', 'ind. agr', 'ind. alim', 'ind. cart', 'ind. chim', 'ind. cuoio', 'ind. estratt', 'ind. graf', 'ind. mecc', 'ind. tess', 'indecl', 'indef', 'indeterm', 'indire', 'inea', 'inf', 'infea', 'infm', 'inform', 'ing', 'ingl', 'inmarsat', 'inpdai', 'inpdap', 'inpgi', 'inps', 'inr', 'inran', 'ins', 'insp', 'int', 'inter', 'intr', 'invar', 'invim', 'in²', 'in³', 'ioma', 'iosco', 'ip', 'ipab', 'ipasvi', 'ipi', 'ippc', 'ips', 'iptv', 'iq', 'ira', 'irap', 'ircc', 'ircs', 'irda', 'iref', 'ires', 'iron', 'irpef', 'irpeg', 'irpet', 'irreg', 'is', 'isae', 'isbd', 'isbn', 'isc', 'isdn', 'isee', 'isef', 'isfol', 'isg', 'isi', 'isia', 'ism', 'ismea', 'isnart', 'iso', 'isp', 'ispearmi', 'ispel', 'ispescuole', 'ispesl', 'ispo', 'ispro', 'iss', 'issn', 'istat', 'istol', 'isvap', 'it', 'iti', 'itt', 'ittiol', 'itu', 'iud', 'iugr', 'iulm', 'iva', 'iveco', 'ivg', 'ivr', 'ivs', 'iyhp', 'j', 'jal', 'jit', 'jr', 'jv', 'k', 'kb', 'kee', 'kg', 'kkk', 'klm', 'km', 'km/h', 'kmph', 'kmq', 'km²', 'kr', 'kw', 'kwh', 'l', 'l\'ing', 'l.n', 'l\'avv', 'la', 'lag', 'lan', 'lanc', 'larn', 'laser', 'lat', 'lav', 'lav. femm', 'lav. pubbl', 'laz', 'lb', 'lc', 'lcca', 'lcd', 'le', 'led', 'lett', 'lh', 'li', 'liaf', 'lib', 'lic', 'lic.ord', 'lic.strd', 'licd', 'lice', 'lida', 'lidci', 'liff', 'lifo', 'lig', 'liit', 'lila', 'lilt', 'linfa', 'ling', 'lipu', 'lis', 'lisaac', 'lism', 'lit', 'litab', 'lnp', 'lo', 'loc', 'loc. div', 'lolo', 'lom', 'long', 'lp', 'lrm', 'lrms', 'lsi', 'lsu', 'lt', 'ltd', 'lu', 'lug', 'luiss', 'lun', 'lwt', 'lww', 'm.a', 'm.b', 'm.o', 'm/s', 'ma', 'mac', 'macch', 'mag', 'magg.(maj)', 'magg.gen.(maj.gen.)', 'mai', 'maj', 'mar', 'mar.a', 'mar.ca', 'mar.ord', 'marc', 'mat', 'mater', 'max', 'mb', 'mbac', 'mc', 'mcl', 'mcpc', 'mcs', 'md', 'mdf', 'mdp', 'me', 'mec', 'mecc', 'med', 'mediev', 'mef', 'mer', 'merc', 'merid', 'mesa', 'messrs', 'metall', 'meteor', 'metr', 'metrol', 'mg', 'mgc', 'mgm', 'mi', 'mibac', 'mica', 'microb', 'mifed', 'miglio nautico', 'miglio nautico per ora', 'miglio nautico²', 'miglio²', 'mil', 'mile', 'miles/h', 'milesph', 'min', 'miner', 'mips', 'miptv', 'mit', 'mitol', 'miur', 'ml', 'mlle', 'mls', 'mm', 'mme', 'mms', 'mm²', 'mn', 'mnp', 'mo', 'mod', 'mol', 'mons', 'morf', 'mos', 'mpaa', 'mpd', 'mpeg', 'mpi', 'mps', 'mq', 'mr', 'mrs', 'ms', 'msgr', 'mss', 'mt', 'mto', 'murst', 'mus', 'mvds', 'mws', 'm²', 'm³', 'n.a', 'n.b', 'na', 'naa', 'nafta', 'napt', 'nars', 'nasa', 'nat', 'natas', 'nato', 'nb', 'nba', 'nbc', 'ncts', 'nd', 'nda', 'nde', 'ndr', 'ndt', 'ne', 'ned', 'neg', 'neol', 'netpac', 'neur', 'news!', 'ngcc', 'nhmf', 'nlcc', 'nmr', 'no', 'nodo', 'nom', 'nos', 'nov', 'novissdi', 'npi', 'nr', 'nt', 'nta', 'nts', 'ntsc', 'nu', 'nuct', 'numism', 'nwt', 'nyc', 'nz', 'o.m.i', 'oai-pmh', 'oav', 'oc', 'occ', 'occult', 'oci', 'ocr', 'ocse', 'oculist', 'od', 'odg', 'odp', 'oecd', 'oem', 'ofdm', 'oft', 'og', 'ogg', 'ogi', 'ogm', 'ohim', 'oic', 'oics', 'olaf', 'oland', 'ole', 'oled', 'omi', 'oms', 'on', 'ong', 'onig', 'onlus', 'onomat', 'onpi', 'onu', 'op', 'opac', 'opec', 'opord', 'opsosa', 'or', 'ord', 'ord. scol', 'ore', 'oref', 'orient', 'ornit', 'orogr', 'orp', 'ort', 'os', 'osa', 'osas', 'osd', 'ot', 'ote', 'ott', 'oz', 'p', 'p.a', 'p.c', 'p.c.c', 'p.es', 'p.f', 'p.m', 'p.r', 'p.s', 'p.t', 'p.v', 'pa', 'pac', 'pag./p', 'pagg./pp', 'pai', 'pal', 'paleobot', 'paleogr', 'paleont', 'paleozool', 'paletn', 'pamr', 'pan', 'papir', 'par', 'parapsicol', 'part', 'partic', 'pass', 'pat', 'patol', 'pb', 'pc', 'pci', 'pcm', 'pcmcia', 'pcs', 'pcss', 'pct', 'pd', 'pda', 'pdf', 'pdl', 'pds', 'pe', 'pec', 'ped', 'pedag', 'peg', 'pegg', 'per.ind', 'pers', 'pert', 'pesq', 'pet', 'petr', 'petrogr', 'pfc', 'pg', 'pga', 'pgp', 'pgut', 'ph', 'php', 'pi', 'pics', 'pie', 'pif', 'pii', 'pil', 'pime', 'pin', 'pine', 'pip', 'pir', 'pit', 'pitt', 'piuss', 'pkcs', 'pki', 'pko', 'pl', 'pli', 'plr', 'pm', 'pma', 'pmi', 'pmr', 'pn', 'pnf', 'pnl', 'po', 'poet', 'pof', 'pol', 'pop', 'popitt', 'popol', 'port', 'pos', 'poss', 'post', 'pots', 'pp', 'ppa', 'ppc', 'ppga', 'ppp', 'pps', 'pptt', 'ppv', 'pr', 'pra', 'praa', 'pref', 'preist', 'prep', 'pres', 'pret', 'prg', 'pri', 'priv', 'pro.civ', 'prof', 'pron', 'pronom', 'propr', 'prov', 'prs', 'prtl', 'prusst', 'ps', 'pse', 'psi', 'psicoan', 'psicol', 'pso', 'psp', 'pstn', 'pt', 'ptc', 'pti', 'ptsd', 'ptt', 'pu', 'pug', 'puk', 'put', 'pv', 'pvb', 'pvc', 'pvt', 'pz', 'qb', 'qcs', 'qfd', 'qg', 'qi', 'qlco', 'qlcu', 'qos', 'qualif', 'r-lan', 'r.s', 'ra', 'racc', 'radar', 'radc', 'radiotecn', 'raee', 'raf', 'rag', 'raid', 'ram', 'rar', 'ras', 'rass. avv. stato', 'rc', 'rca', 'rcdp', 'rcs', 'rdc', 'rdco', 'rdf', 'rdi', 'rdp', 'rds', 'rdt', 're', 'rea', 'recipr', 'recl', 'reg', 'region', 'rel', 'rem', 'rep', 'reps', 'res', 'retor', 'rev', 'rfi', 'rfid', 'rg', 'rgb', 'rgc', 'rge', 'rgi', 'rgi bdp', 'rgpt', 'rgt', 'ri', 'riaa', 'riaj', 'riba', 'ric', 'rid', 'rif', 'rifl', 'rina', 'rip', 'ris', 'rit', 'ritts', 'rm', 'rmn', 'rn', 'ro', 'roa', 'roc', 'roi', 'rom', 'roro', 'rov', 'rp', 'rpm', 'rr', 'rrf', 'rs', 'rsc', 'rspp', 'rss', 'rsu', 'rsvp', 'rt', 'rtdpc', 'rtg', 'rtn', 'rtp', 'rttt', 'rvm', 's-dab', 's.a', 's.b.f', 's.n.c', 's.p.a', 's.p.m', 's.r.l', 's.ten', 's.v', 's/m', 'sa', 'sab', 'saca', 'sace', 'sact', 'sad', 'sag', 'sahm', 'sai', 'saisa', 'sam', 'san', 'sanas', 'sape', 'sar', 'sars', 'sart', 'sas', 'sbaf', 'sbas', 'sbn', 'sc', 'sca.sm', 'scherz', 'scien', 'scn', 'scsi', 'scuba', 'scult', 'scut', 'sdds', 'sdiaf', 'sds', 'sdsl', 'se', 'seat', 'sebc', 'sec', 'seca', 'secam', 'secc', 'see', 'seg', 'segg', 'segredifesa', 'sem', 'sempo', 'sen', 'sens', 'seo', 'serg', 'serg.magg.(sgm)', 'serg.magg.ca', 'set', 'sfc', 'sfis', 'sfx', 'sg', 'sga', 'sgc', 'sgg', 'sgml', 'sgt', 'si', 'si@lt', 'sia', 'siae', 'siaic', 'siap', 'sias', 'sic', 'sicav', 'sid', 'sido', 'sie', 'sif', 'sig', 'sig.na', 'sig.ra', 'sige', 'sigg', 'sigill', 'sigo', 'siia', 'simb', 'simbdea', 'simg', 'simo', 'sin', 'sinalv', 'sing', 'sins', 'sinu', 'siocmf', 'siog', 'sioi', 'siommms', 'siot', 'sip', 'sipem', 'sips', 'sirf', 'sirm', 'sis', 'sisde', 'sismi', 'sissa', 'sit', 'siulp', 'siusa', 'sla', 'sldn', 'slm', 'slr', 'sm', 'sma', 'smau', 'smd', 'sme', 'smes', 'smm', 'smpt', 'sms', 'sn', 'snad', 'snai', 'snc', 'sncci', 'sncf', 'sngci', 'snit', 'so', 'soc', 'sociol', 'sogg', 'soho', 'soi', 'sol', 'somipar', 'somm', 'sonar', 'sp', 'spa', 'spe', 'spett', 'spi', 'spm', 'spot', 'spp', 'spreg', 'sq', 'sqd', 'sr', 'srd', 'srl', 'srr', 'ss', 'ssi', 'ssn', 'ssr', 'sss', 'st', 'st. d. arte', 'st. d. dir', 'st. d. filos', 'st. d. rel', 'stat', 'stg', 'stp', 'stw', 'su', 'suap', 'suem', 'suff', 'sup', 'superl', 'supt', 'surg', 'surl', 'susm', 'sut', 'suv', 'sv', 'svga', 'swics', 'swift', 'swot', 'sxga', 'sz', 't-dab', 't.sg', 'ta', 'taa', 'tac', 'tacan', 'tacs', 'taeg', 'tai', 'tan', 'tar', 'targa', 'tav', 'tb', 'tbt', 'tci', 'tcp', 'tcp/ip', 'tcsm', 'tdm', 'tdma', 'te', 'tecn', 'tecnol', 'ted', 'tel', 'telecom', 'temp', 'ten.(lt)', 'ten.col.(ltc)', 'ten.gen', 'teol', 'term', 'tesa', 'tese', 'tesol', 'tess', 'tet', 'tetra', 'tfr', 'tft', 'tfts', 'tgv', 'thx', 'tim', 'tipogr', 'tir', 'tit', 'tld', 'tm', 'tmc', 'tn', 'to', 'toefl', 'ton', 'top', 'topog', 'tos', 'tosap', 'tosc', 'tp', 'tpl', 'tr', 'trad', 'tramat', 'trasp', 'ts', 'tso', 'tuir', 'tuld', 'tv', 'twa', 'twain', 'u.ad', 'u.s', 'ucai', 'ucca', 'ucei', 'ucina', 'uclaf', 'ucoi', 'ucoii', 'ucsi', 'ud', 'udc', 'udi', 'udp', 'ue', 'uefa', 'uemri', 'ufo', 'ugc', 'uhci', 'uhf', 'uht', 'uibm', 'uic', 'uicc', 'uiga', 'uil', 'uilps', 'uisp', 'uits', 'uk', 'ul', 'ull', 'uma', 'umb', 'ummc', 'umss', 'umts', 'unac', 'unar', 'unasp', 'uncem', 'unctad', 'undp', 'unefa', 'unep', 'unesco', 'ungh', 'unhcr', 'uni', 'unicef', 'unitec', 'unpredep', 'unsa', 'upa', 'upc', 'urar', 'urban', 'url', 'urp', 'urss', 'usa', 'usb', 'usfi', 'usga', 'usl', 'usp', 'uspi', 'ussr', 'utap', 'v', 'v.brig', 'v.cte', 'v.m', 'v.p', 'v.r', 'v.s', 'va', 'vab', 'vaio', 'val', 'vas', 'vb', 'vbr', 'vc', 'vcc', 'vcr', 'vda', 've', 'ven', 'ves', 'vesa', 'veter', 'vezz', 'vfb', 'vfp', 'vfx', 'vga', 'vhf', 'vhs', 'vi', 'via', 'vip', 'vis', 'vn', 'vo', 'voc', 'voip', 'vol', 'volg', 'voll', 'vor', 'vpdn', 'vpn', 'vr', 'vs', 'vsp', 'vt', 'vtc', 'vts', 'vtt', 'vv', 'vvf', 'wai', 'wais', 'wan', 'wap', 'wasp', 'wc', 'wcdma', 'wcm', 'wga', 'wi-fi', 'wipo', 'wisp', 'wll', 'wml', 'wms', 'worm', 'wp', 'wpan', 'wssn', 'wto', 'wwan', 'wwf', 'www', 'wygiwys', 'xl', 'xml', 'xs', 'xxl', 'xxs', 'yaf', 'yb', 'yci', 'yd', 'yd²', 'yd³', 'ymca', 'zat', 'zb', 'zcs', 'zdf', 'zdg', 'zift', 'zool', 'zoot', 'ztc', 'ztl', '°c', '°f', '°n', '°ra', '°ré', 'µg']
      STOP_WORDS = ["a", "adesso", "ai", "al", "alla", "allo", "allora", "altre", "altri", "altro", "anche", "ancora", "avere", "aveva", "avevano", "ben", "buono", "che", "chi", "cinque", "comprare", "con", "consecutivi", "consecutivo", "cosa", "cui", "da", "del", "della", "dello", "dentro", "deve", "devo", "di", "doppio", "due", "e", "ecco", "fare", "fine", "fino", "fra", "gente", "giu", "ha", "hai", "hanno", "ho", "il", "indietro", "invece", "io", "la", "lavoro", "le", "lei", "lo", "loro", "lui", "lungo", "ma", "me", "meglio", "molta", "molti", "molto", "nei", "nella", "no", "noi", "nome", "nostro", "nove", "nuovi", "nuovo", "o", "oltre", "ora", "otto", "peggio", "pero", "persone", "piu", "poco", "primo", "promesso", "qua", "quarto", "quasi", "quattro", "quello", "questo", "qui", "quindi", "quinto", "rispetto", "sara", "secondo", "sei", "sembra", "sembrava", "senza", "sette", "sia", "siamo", "siete", "solo", "sono", "sopra", "soprattutto", "sotto", "stati", "stato", "stesso", "su", "subito", "sul", "sulla", "tanto", "te", "tempo", "terzo", "tra", "tre", "triplo", "ultimo", "un", "una", "uno", "va", "vai", "voi", "volte", "vostro", "a", "abbastanza", "accidenti", "ad", "affinche", "agli", "ahime", "ahimÃ¨", "alcuna", "alcuni", "alcuno", "all", "alle", "altrimenti", "altrui", "anni", "anno", "ansa", "assai", "attesa", "avanti", "avendo", "avente", "aver", "avete", "avuta", "avute", "avuti", "avuto", "basta", "bene", "benissimo", "berlusconi", "brava", "bravo", "c", "casa", "caso", "cento", "certa", "certe", "certi", "certo", "chicchessia", "chiunque", "ci", "ciascuna", "ciascuno", "cima", "cio", "ciÃ²", "cioe", "cioÃ¨", "circa", "citta", "cittÃ", "codesta", "codesti", "codesto", "cogli", "coi", "col", "colei", "coll", "coloro", "colui", "come", "concernente", "consiglio", "contro", "cortesia", "cos", "cosi", "cosÃ¬", "d", "dagli", "dai", "dal", "dall", "dalla", "dalle", "dallo", "davanti", "degli", "dei", "dell", "delle", "detto", "dice", "dietro", "dire", "dirimpetto", "dopo", "dove", "dovra", "dovrÃ", "dunque", "durante", "Ã¨", "ed", "egli", "ella", "eppure", "era", "erano", "esse", "essendo", "esser", "essere", "essi", "ex", "fa", "fatto", "favore", "fin", "finalmente", "finche", "forse", "fuori", "gia", "giÃ", "giacche", "giorni", "giorno", "gli", "gliela", "gliele", "glieli", "glielo", "gliene", "governo", "grande", "grazie", "gruppo", "i", "ieri", "improvviso", "in", "infatti", "insieme", "intanto", "intorno", "l", "lÃ", "li", "lontano", "macche", "magari", "mai", "male", "malgrado", "malissimo", "medesimo", "mediante", "meno", "mentre", "mesi", "mezzo", "mi", "mia", "mie", "miei", "mila", "miliardi", "milioni", "ministro", "mio", "moltissimo", "mondo", "nazionale", "ne", "negli", "nel", "nell", "nelle", "nello", "nemmeno", "neppure", "nessuna", "nessuno", "niente", "non", "nondimeno", "nostra", "nostre", "nostri", "nulla", "od", "oggi", "ogni", "ognuna", "ognuno", "oppure", "ore", "osi", "ossia", "paese", "parecchi", "parecchie", "parecchio", "parte", "partendo", "peccato", "per", "perche", "perchÃ¨", "percio", "perciÃ²", "perfino", "perÃ²", "piedi", "pieno", "piglia", "piÃ¹", "po", "pochissimo", "poi", "poiche", "press", "prima", "proprio", "puo", "puÃ²", "pure", "purtroppo", "qualche", "qualcuna", "qualcuno", "quale", "quali", "qualunque", "quando", "quanta", "quante", "quanti", "quanto", "quantunque", "quel", "quella", "quelli", "quest", "questa", "queste", "questi", "riecco", "salvo", "sarÃ", "sarebbe", "scopo", "scorso", "se", "seguente", "sempre", "si", "solito", "sta", "staranno", "stata", "state", "sua", "successivo", "sue", "sugli", "sui", "sull", "sulle", "sullo", "suo", "suoi", "tale", "talvolta", "ti", "torino", "tranne", "troppo", "tu", "tua", "tue", "tuo", "tuoi", "tutta", "tuttavia", "tutte", "tutti", "tutto", "uguali", "uomo", "vale", "varia", "varie", "vario", "verso", "vi", "via", "vicino", "visto", "vita", "volta", "vostra", "vostre", "vostri"]
      CONTRACTIONS = {}
    end
  end
end