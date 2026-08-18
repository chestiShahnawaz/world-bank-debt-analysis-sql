# Advanced Debt Analytics

Window function and concentration analysis from sql/03_advanced_analytics.sql.

## 1. Pareto Debt Concentration by Country

Rows: 124

| country_name | total_debt | cumulative_debt | cumulative_share_pct |
| --- | --- | --- | --- |
| China | 285793494734.2 | 285793494734.2 | 9.28 |
| Brazil | 280623966140.8 | 566417460875.0 | 18.39 |
| South Asia | 247608723990.60007 | 814026184865.6001 | 26.43 |
| Least developed countries: UN classification | 212880992791.90002 | 1026907177657.5001 | 33.34 |
| Russian Federation | 191289057259.2 | 1218196234916.7002 | 39.56 |
| IDA only | 179048127207.30002 | 1397244362124.0002 | 45.37 |
| Turkey | 151125758035.30002 | 1548370120159.3003 | 50.28 |
| India | 133627060958.40001 | 1681997181117.7002 | 54.62 |
| Mexico | 124596786217.29999 | 1806593967335.0002 | 58.66 |
| Indonesia | 113435696693.5 | 1920029664028.5002 | 62.34 |
| Cameroon | 86491206346.6 | 2006520870375.1003 | 65.15 |
| Angola | 71368842500.1 | 2077889712875.2004 | 67.47 |
| Kazakhstan | 70159942693.9 | 2148049655569.1003 | 69.75 |
| Egypt, Arab Rep. | 62077727756.9 | 2210127383326.0005 | 71.76 |
| Vietnam | 45851299896.09999 | 2255978683222.1006 | 73.25 |
| Colombia | 45430117605.2 | 2301408800827.301 | 74.73 |
| Pakistan | 45139315398.50001 | 2346548116225.801 | 76.19 |
| Romania | 42813979498.2 | 2389362095724.001 | 77.58 |
| South Africa | 36703940742.5 | 2426066036466.501 | 78.78 |
| Venezuela, RB | 36048260107.7 | 2462114296574.201 | 79.95 |
| Bangladesh | 35045492840.50001 | 2497159789414.701 | 81.08 |
| Lebanon | 29697872618.8 | 2526857662033.501 | 82.05 |
| Ukraine | 28490304100.300003 | 2555347966133.801 | 82.97 |
| Sri Lanka | 26764495009.399998 | 2582112461143.2007 | 83.84 |
| Philippines | 25151706785.000004 | 2607264167928.2007 | 84.66 |
| Peru | 24091780491.9 | 2631355948420.1006 | 85.44 |
| Belarus | 23273359790.899998 | 2654629308211.0005 | 86.2 |
| Kenya | 22622406389.800003 | 2677251714600.8003 | 86.93 |
| Morocco | 21492166822.4 | 2698743881423.2 | 87.63 |
| Ecuador | 17510981502.600002 | 2716254862925.8003 | 88.2 |
| Thailand | 17236647553.9 | 2733491510479.7 | 88.76 |
| Serbia | 14740351568.699999 | 2748231862048.401 | 89.24 |
| Georgia | 14379874754.5 | 2762611736802.901 | 89.7 |
| Tunisia | 14223413457.600002 | 2776835150260.501 | 90.16 |
| Nigeria | 14149905240.900002 | 2790985055501.401 | 90.62 |
| Ethiopia | 13718630481.3 | 2804703685982.7007 | 91.07 |
| Ghana | 11462311995.200003 | 2816165997977.901 | 91.44 |
| Dominican Republic | 10351687705.300001 | 2826517685683.2007 | 91.78 |
| Mongolia | 9847249858.9 | 2836364935542.1006 | 92.1 |
| Uzbekistan | 9532699072.7 | 2845897634614.801 | 92.41 |
| Zambia | 9430506984.899998 | 2855328141599.7007 | 92.71 |
| El Salvador | 9411612674.599998 | 2864739754274.301 | 93.02 |
| Papua New Guinea | 8784109797.2 | 2873523864071.501 | 93.3 |
| Azerbaijan | 8753732947.199999 | 2882277597018.701 | 93.59 |
| Costa Rica | 8616331219.9 | 2890893928238.601 | 93.87 |
| Jordan | 8472720622.900001 | 2899366648861.501 | 94.14 |
| Lao PDR | 8356392647.200001 | 2907723041508.701 | 94.41 |
| Guatemala | 7932838900.7 | 2915655880409.401 | 94.67 |
| Bolivia | 7889146776.8 | 2923545027186.2007 | 94.93 |
| Tanzania | 7798052922.500002 | 2931343080108.7007 | 95.18 |
| Cote d'Ivoire | 7141829014.8 | 2938484909123.5005 | 95.41 |
| Senegal | 7119017874.0 | 2945603926997.5005 | 95.64 |
| Bosnia and Herzegovina | 6685436904.6 | 2952289363902.1006 | 95.86 |
| Bulgaria | 6369101653.900001 | 2958658465556.0005 | 96.07 |
| Uganda | 6139129245.400001 | 2964797594801.4004 | 96.27 |
| Myanmar | 6130613635.299999 | 2970928208436.7 | 96.47 |
| Paraguay | 5774787846.8 | 2976702996283.5 | 96.65 |
| Nicaragua | 5399238587.1 | 2982102234870.6 | 96.83 |
| Mauritius | 4787131190.8 | 2986889366061.4 | 96.99 |
| Kyrgyz Republic | 4656980236.0 | 2991546346297.4 | 97.14 |
| Mozambique | 4608729187.5 | 2996155075484.9 | 97.29 |
| Cambodia | 4229626566.6 | 3000384702051.5 | 97.42 |
| Jamaica | 3981335937.9 | 3004366037989.4 | 97.55 |
| Sudan | 3835096534.1999993 | 3008201134523.601 | 97.68 |
| Armenia | 3834876451.5 | 3012036010975.101 | 97.8 |
| Macedonia, FYR | 3502007528.5 | 3015538018503.601 | 97.92 |
| Nepal | 3405713007.2 | 3018943731510.8013 | 98.03 |
| Moldova | 3338411353.8 | 3022282142864.601 | 98.13 |
| Albania | 3217067103.8 | 3025499209968.401 | 98.24 |
| Gabon | 3187705162.2 | 3028686915130.601 | 98.34 |
| Mauritania | 3184696802.1000004 | 3031871611932.701 | 98.45 |
| Montenegro | 2992522192.0 | 3034864134124.701 | 98.54 |
| Mali | 2604524204.3999996 | 3037468658329.101 | 98.63 |
| Yemen, Rep. | 2552698189.2 | 3040021356518.3013 | 98.71 |
| Honduras | 2543918981.4999995 | 3042565275499.8013 | 98.79 |
| Benin | 2535179229.3 | 3045100454729.101 | 98.88 |
| Niger | 2478419343.0000005 | 3047578874072.101 | 98.96 |
| Burkina Faso | 2419206260.7 | 3049998080332.8013 | 99.03 |
| Congo, Dem. Rep. | 2239101510.6 | 3052237181843.4014 | 99.11 |
| Syrian Arab Republic | 1840057923.0 | 3054077239766.401 | 99.17 |
| Madagascar | 1739970527.7000003 | 3055817210294.101 | 99.22 |
| Bhutan | 1692237860.3999999 | 3057509448154.501 | 99.28 |
| Chad | 1575430132.7999997 | 3059084878287.301 | 99.33 |
| Tajikistan | 1565019582.1 | 3060649897869.401 | 99.38 |
| Congo, Rep. | 1519290572.6999996 | 3062169188442.101 | 99.43 |
| Zimbabwe | 1264223708.4 | 3063433412150.501 | 99.47 |
| Rwanda | 1263036810.8999999 | 3064696448961.401 | 99.51 |
| Maldives | 1253465689.1 | 3065949914650.501 | 99.55 |
| Togo | 1021007973.9 | 3066970922624.401 | 99.59 |
| Kosovo | 948077213.5999999 | 3067918999838.001 | 99.62 |
| Djibouti | 942100811.9999998 | 3068861100650.001 | 99.65 |
| Afghanistan | 680943227.1 | 3069542043877.101 | 99.67 |
| Guinea | 676612007.9999999 | 3070218655885.101 | 99.69 |
| Botswana | 646085255.7 | 3070864741140.8013 | 99.71 |
| Guyana | 627922921.9999999 | 3071492664062.8013 | 99.73 |
| Malawi | 626939901.3000001 | 3072119603964.101 | 99.75 |
| Belize | 607062668.8 | 3072726666632.901 | 99.77 |
| Cabo Verde | 596636725.4999999 | 3073323303358.401 | 99.79 |
| Algeria | 522973067.0 | 3073846276425.401 | 99.81 |
| Liberia | 520187064.99999994 | 3074366463490.401 | 99.83 |
| Eswatini | 475436690.70000017 | 3074841900181.101 | 99.84 |
| Iran, Islamic Rep. | 463662150.59999996 | 3075305562331.701 | 99.86 |
| Gambia, The | 435513543.9 | 3075741075875.601 | 99.87 |
| Lesotho | 435350697.3 | 3076176426572.901 | 99.88 |
| Fiji | 422780493.5 | 3076599207066.401 | 99.9 |
| Sierra Leone | 417307458.59999996 | 3077016514525.001 | 99.91 |
| Haiti | 299424732.9 | 3077315939257.901 | 99.92 |
| Burundi | 281989671.59999996 | 3077597928929.501 | 99.93 |
| Grenada | 273838275.3 | 3077871767204.801 | 99.94 |
| Central African Republic | 201527131.2 | 3078073294336.001 | 99.95 |
| St. Vincent and the Grenadines | 200061522.59999996 | 3078273355858.601 | 99.95 |
| St. Lucia | 188052886.50000003 | 3078461408745.101 | 99.96 |
| Vanuatu | 171626014.5 | 3078633034759.601 | 99.96 |
| Guinea-Bissau | 169537430.4 | 3078802572190.001 | 99.97 |
| Dominica | 138044299.79999995 | 3078940616489.801 | 99.97 |
| Eritrea | 132493809.29999998 | 3079073110299.1006 | 99.98 |
| Somalia | 119614074.89999999 | 3079192724374.0005 | 99.98 |
| Samoa | 112946425.5 | 3079305670799.5005 | 99.99 |
| Solomon Islands | 105104467.3 | 3079410775266.8003 | 99.99 |
| Turkmenistan | 95135629.29999998 | 3079505910896.1 | 99.99 |
| Timor-Leste | 71000959.19999999 | 3079576911855.3003 | 99.99 |
| Comoros | 57568483.2 | 3079634480338.5005 | 100.0 |
| Tonga | 55209304.8 | 3079689689643.3003 | 100.0 |
| Sao Tome and Principe | 44798032.5 | 3079734487675.8003 | 100.0 |

## 2. Top Debt Type by Nation

Rows: 166

| country_name | indicator_name | top_indicator_debt |
| --- | --- | --- |
| China | Principal repayments on external debt, long-term (AMT, current US$) | 96218620835.7 |
| Brazil | Principal repayments on external debt, long-term (AMT, current US$) | 90041840304.1 |
| Russian Federation | Principal repayments on external debt, long-term (AMT, current US$) | 66589761833.5 |
| Turkey | Principal repayments on external debt, long-term (AMT, current US$) | 51555031005.8 |
| South Asia | Principal repayments on external debt, long-term (AMT, current US$) | 48756295898.2 |
| Least developed countries: UN classification | Disbursements on external debt, long-term (DIS, current US$) | 40160766261.6 |
| IDA only | Disbursements on external debt, long-term (DIS, current US$) | 34531188113.2 |
| India | Principal repayments on external debt, long-term (AMT, current US$) | 31923507000.8 |
| Indonesia | Principal repayments on external debt, long-term (AMT, current US$) | 30916112653.8 |
| Kazakhstan | Principal repayments on external debt, long-term (AMT, current US$) | 27482093686.4 |
| Mexico | Principal repayments on external debt, long-term (AMT, current US$) | 25218503927.0 |
| Cameroon | Disbursements on external debt, long-term (DIS, current US$) | 18186662060.4 |
| Romania | Principal repayments on external debt, long-term (AMT, current US$) | 14013783350.4 |
| Colombia | Principal repayments on external debt, long-term (AMT, current US$) | 11985674438.7 |
| Angola | Principal repayments on external debt, long-term (AMT, current US$) | 11067045628.1 |
| Venezuela, RB | Principal repayments on external debt, long-term (AMT, current US$) | 9878659207.2 |
| Egypt, Arab Rep. | Principal repayments on external debt, long-term (AMT, current US$) | 9692114176.9 |
| Lebanon | Principal repayments on external debt, long-term (AMT, current US$) | 9506919669.6 |
| South Africa | Principal repayments on external debt, long-term (AMT, current US$) | 9474257551.9 |
| Bangladesh | PPG, official creditors (DIS, current US$) | 9050557611.9 |
| Bangladesh | Disbursements on external debt, long-term (DIS, current US$) | 9050557611.9 |
| Vietnam | Principal repayments on external debt, long-term (AMT, current US$) | 8873505909.2 |
| Pakistan | Principal repayments on external debt, long-term (AMT, current US$) | 8336013891.3 |
| Ukraine | Principal repayments on external debt, long-term (AMT, current US$) | 8148995625.6 |
| Philippines | Principal repayments on external debt, long-term (AMT, current US$) | 6479170917.7 |
| Thailand | Principal repayments on external debt, long-term (AMT, current US$) | 5914706998.3 |
| Peru | Principal repayments on external debt, long-term (AMT, current US$) | 5881259974.7 |
| Sri Lanka | Principal repayments on external debt, long-term (AMT, current US$) | 5761489255.9 |
| Morocco | Principal repayments on external debt, long-term (AMT, current US$) | 5153430846.8 |
| Belarus | Principal repayments on external debt, long-term (AMT, current US$) | 4640037884.2 |
| Kenya | Disbursements on external debt, long-term (DIS, current US$) | 4266494939.7 |
| Ecuador | Principal repayments on external debt, long-term (AMT, current US$) | 3623731570.2 |
| Serbia | Principal repayments on external debt, long-term (AMT, current US$) | 3409673950.0 |
| Mongolia | Principal repayments on external debt, long-term (AMT, current US$) | 3296470965.6 |
| Georgia | Interest payments on external debt, long-term (INT, current US$) | 3087990080.3 |
| Nigeria | Principal repayments on external debt, long-term (AMT, current US$) | 2957693969.5 |
| Guatemala | Principal repayments on external debt, long-term (AMT, current US$) | 2911981987.8 |
| Papua New Guinea | Principal repayments on external debt, long-term (AMT, current US$) | 2842193842.5 |
| Ethiopia | Disbursements on external debt, long-term (DIS, current US$) | 2681493007.3 |
| El Salvador | Principal repayments on external debt, long-term (AMT, current US$) | 2574548482.3 |
| Tunisia | Principal repayments on external debt, long-term (AMT, current US$) | 2422062635.8 |
| Bosnia and Herzegovina | Principal repayments on external debt, long-term (AMT, current US$) | 2112748020.9 |
| Uzbekistan | Principal repayments on external debt, long-term (AMT, current US$) | 2097517190.9 |
| Jordan | Principal repayments on external debt, long-term (AMT, current US$) | 1990343479.2 |
| Dominican Republic | Principal repayments on external debt, long-term (AMT, current US$) | 1978111141.2 |
| Bulgaria | Principal repayments on external debt, long-term (AMT, current US$) | 1883205166.2 |
| Costa Rica | Principal repayments on external debt, long-term (AMT, current US$) | 1776491747.9 |
| Mauritius | Principal repayments on external debt, long-term (AMT, current US$) | 1757803962.2 |
| Ghana | Principal repayments on external debt, long-term (AMT, current US$) | 1689328833.5 |
| Senegal | Disbursements on external debt, long-term (DIS, current US$) | 1661790101.6 |
| Lao PDR | Principal repayments on external debt, long-term (AMT, current US$) | 1605959990.1 |
| Paraguay | Principal repayments on external debt, long-term (AMT, current US$) | 1528508573.6 |
| Azerbaijan | Principal repayments on external debt, long-term (AMT, current US$) | 1513813661.4 |
| Zambia | Disbursements on external debt, long-term (DIS, current US$) | 1502399702.8 |
| Bolivia | Disbursements on external debt, long-term (DIS, current US$) | 1421491255.2 |
| Tanzania | Principal repayments on external debt, long-term (AMT, current US$) | 1388218481.4 |
| Uganda | Disbursements on external debt, long-term (DIS, current US$) | 1359705707.6 |
| Myanmar | Disbursements on external debt, long-term (DIS, current US$) | 1246429044.3 |
| Myanmar | PPG, official creditors (DIS, current US$) | 1246429044.3 |
| Nicaragua | Principal repayments on external debt, long-term (AMT, current US$) | 1185575296.8 |
| Cote d'Ivoire | PPG, official creditors (DIS, current US$) | 1081936422.8 |
| Cote d'Ivoire | Disbursements on external debt, long-term (DIS, current US$) | 1081936422.8 |
| Macedonia, FYR | Principal repayments on external debt, long-term (AMT, current US$) | 875846538.5 |
| Nepal | Disbursements on external debt, long-term (DIS, current US$) | 854955604.0 |
| Nepal | PPG, official creditors (DIS, current US$) | 854955604.0 |
| Armenia | Principal repayments on external debt, long-term (AMT, current US$) | 845630723.8 |
| Kyrgyz Republic | PPG, official creditors (DIS, current US$) | 837442293.4 |
| Kyrgyz Republic | Disbursements on external debt, long-term (DIS, current US$) | 837442293.4 |
| Albania | Principal repayments on external debt, long-term (AMT, current US$) | 790248675.2 |
| Cambodia | Principal repayments on external debt, long-term (AMT, current US$) | 775955981.3 |
| Moldova | Principal repayments on external debt, long-term (AMT, current US$) | 769232867.0 |
| Mozambique | Disbursements on external debt, long-term (DIS, current US$) | 749659443.7 |
| Sudan | Disbursements on external debt, long-term (DIS, current US$) | 704940261.8 |
| Sudan | PPG, official creditors (DIS, current US$) | 704940261.8 |
| Jamaica | Interest payments on external debt, long-term (INT, current US$) | 661568432.2 |
| Montenegro | Principal repayments on external debt, long-term (AMT, current US$) | 650720957.9 |
| Benin | Disbursements on external debt, long-term (DIS, current US$) | 648444772.9 |
| Burkina Faso | PPG, official creditors (DIS, current US$) | 617436227.2 |
| Burkina Faso | Disbursements on external debt, long-term (DIS, current US$) | 617436227.2 |
| Niger | PPG, official creditors (DIS, current US$) | 613393210.2 |
| Niger | Disbursements on external debt, long-term (DIS, current US$) | 613393210.2 |
| Mali | Disbursements on external debt, long-term (DIS, current US$) | 602617562.3 |
| Mali | PPG, official creditors (DIS, current US$) | 602617562.3 |
| Mauritania | PPG, official creditors (DIS, current US$) | 587173043.9 |
| Mauritania | Disbursements on external debt, long-term (DIS, current US$) | 587173043.9 |
| Gabon | Disbursements on external debt, long-term (DIS, current US$) | 519921205.7 |
| Tajikistan | Principal repayments on external debt, long-term (AMT, current US$) | 467153429.2 |
| Zimbabwe | Principal repayments on external debt, long-term (AMT, current US$) | 461632253.7 |
| Madagascar | Disbursements on external debt, long-term (DIS, current US$) | 446922027.4 |
| Honduras | Principal repayments on external debt, long-term (AMT, current US$) | 412459703.3 |
| Yemen, Rep. | PPG, official creditors (DIS, current US$) | 402113863.0 |
| Yemen, Rep. | Disbursements on external debt, long-term (DIS, current US$) | 402113863.0 |
| Congo, Dem. Rep. | Disbursements on external debt, long-term (DIS, current US$) | 370323229.6 |
| Congo, Dem. Rep. | PPG, official creditors (DIS, current US$) | 370323229.6 |
| Rwanda | Disbursements on external debt, long-term (DIS, current US$) | 327248280.2 |
| Rwanda | PPG, official creditors (DIS, current US$) | 327248280.2 |
| Maldives | Disbursements on external debt, long-term (DIS, current US$) | 324159093.3 |
| Syrian Arab Republic | PPG, official creditors (AMT, current US$) | 307261900.0 |
| Syrian Arab Republic | Principal repayments on external debt, long-term (AMT, current US$) | 307261900.0 |
| Congo, Rep. | Disbursements on external debt, long-term (DIS, current US$) | 247432137.7 |
| Congo, Rep. | PPG, official creditors (DIS, current US$) | 247432137.7 |
| Togo | Disbursements on external debt, long-term (DIS, current US$) | 236837922.9 |
| Togo | PPG, official creditors (DIS, current US$) | 236837922.9 |
| Kosovo | Principal repayments on external debt, long-term (AMT, current US$) | 232317825.8 |
| Bhutan | Principal repayments on external debt, long-term (AMT, current US$) | 213258536.9 |
| Chad | Disbursements on external debt, long-term (DIS, current US$) | 207090418.3 |
| Chad | PPG, official creditors (DIS, current US$) | 207090418.3 |
| Djibouti | PPG, official creditors (DIS, current US$) | 176522478.2 |
| Djibouti | Disbursements on external debt, long-term (DIS, current US$) | 176522478.2 |
| Guinea | PPG, official creditors (DIS, current US$) | 175441526.2 |
| Guinea | Disbursements on external debt, long-term (DIS, current US$) | 175441526.2 |
| Algeria | Principal repayments on external debt, long-term (AMT, current US$) | 171185188.1 |
| Liberia | Disbursements on external debt, long-term (DIS, current US$) | 150961031.2 |
| Liberia | PPG, official creditors (DIS, current US$) | 150961031.2 |
| Botswana | Principal repayments on external debt, long-term (AMT, current US$) | 137995908.0 |
| Malawi | PPG, official creditors (DIS, current US$) | 132165820.5 |
| Malawi | Disbursements on external debt, long-term (DIS, current US$) | 132165820.5 |
| Cabo Verde | Disbursements on external debt, long-term (DIS, current US$) | 109582071.9 |
| Guyana | Principal repayments on external debt, long-term (AMT, current US$) | 108264665.5 |
| Eswatini | Disbursements on external debt, long-term (DIS, current US$) | 106108147.6 |
| Eswatini | PPG, official creditors (DIS, current US$) | 106108147.6 |
| Iran, Islamic Rep. | Principal repayments on external debt, long-term (AMT, current US$) | 105885317.0 |
| Belize | Principal repayments on external debt, long-term (AMT, current US$) | 105609924.9 |
| Afghanistan | PPG, official creditors (AMT, current US$) | 100847181.9 |
| Afghanistan | Principal repayments on external debt, long-term (AMT, current US$) | 100847181.9 |
| Sierra Leone | Disbursements on external debt, long-term (DIS, current US$) | 98339852.8 |
| Sierra Leone | PPG, official creditors (DIS, current US$) | 98339852.8 |
| Gambia, The | Disbursements on external debt, long-term (DIS, current US$) | 89552885.9 |
| Gambia, The | PPG, official creditors (DIS, current US$) | 89552885.9 |
| Lesotho | PPG, official creditors (DIS, current US$) | 80548591.6 |
| Lesotho | Disbursements on external debt, long-term (DIS, current US$) | 80548591.6 |
| Fiji | Disbursements on external debt, long-term (DIS, current US$) | 66510192.6 |
| Fiji | PPG, official creditors (DIS, current US$) | 66510192.6 |
| Burundi | Disbursements on external debt, long-term (DIS, current US$) | 64846467.3 |
| Burundi | PPG, official creditors (DIS, current US$) | 64846467.3 |
| Haiti | PPG, official creditors (AMT, current US$) | 61444338.4 |
| Haiti | Principal repayments on external debt, long-term (AMT, current US$) | 61444338.4 |
| Central African Republic | PPG, official creditors (DIS, current US$) | 53717612.9 |
| Central African Republic | Disbursements on external debt, long-term (DIS, current US$) | 53717612.9 |
| Guinea-Bissau | PPG, multilateral (DIS, current US$) | 48265990.2 |
| Guinea-Bissau | Disbursements on external debt, long-term (DIS, current US$) | 48265990.2 |
| Guinea-Bissau | PPG, official creditors (DIS, current US$) | 48265990.2 |
| Grenada | PPG, official creditors (DIS, current US$) | 41250138.3 |
| Grenada | Disbursements on external debt, long-term (DIS, current US$) | 41250138.3 |
| Vanuatu | Disbursements on external debt, long-term (DIS, current US$) | 38626756.0 |
| Vanuatu | PPG, official creditors (DIS, current US$) | 38626756.0 |
| St. Lucia | Disbursements on external debt, long-term (DIS, current US$) | 37459842.2 |
| St. Lucia | PPG, official creditors (DIS, current US$) | 37459842.2 |
| St. Vincent and the Grenadines | Disbursements on external debt, long-term (DIS, current US$) | 33458473.7 |
| St. Vincent and the Grenadines | PPG, official creditors (DIS, current US$) | 33458473.7 |
| Somalia | Principal repayments on external debt, long-term (AMT, current US$) | 32985034.3 |
| Somalia | PPG, official creditors (AMT, current US$) | 32985034.3 |
| Eritrea | Principal repayments on external debt, long-term (AMT, current US$) | 31110077.8 |
| Eritrea | PPG, official creditors (AMT, current US$) | 31110077.8 |
| Solomon Islands | Principal repayments on external debt, long-term (AMT, current US$) | 30749703.9 |
| Turkmenistan | Principal repayments on external debt, long-term (AMT, current US$) | 29132060.9 |
| Timor-Leste | Disbursements on external debt, long-term (DIS, current US$) | 21799986.4 |
| Timor-Leste | PPG, official creditors (DIS, current US$) | 21799986.4 |
| Samoa | PPG, official creditors (AMT, current US$) | 21715408.4 |
| Samoa | Principal repayments on external debt, long-term (AMT, current US$) | 21715408.4 |
| Dominica | Principal repayments on external debt, long-term (AMT, current US$) | 21394158.2 |
| Comoros | Disbursements on external debt, long-term (DIS, current US$) | 13460035.4 |
| Comoros | PPG, official creditors (DIS, current US$) | 13460035.4 |
| Sao Tome and Principe | Disbursements on external debt, long-term (DIS, current US$) | 10636848.5 |
| Sao Tome and Principe | PPG, official creditors (DIS, current US$) | 10636848.5 |
| Tonga | Principal repayments on external debt, long-term (AMT, current US$) | 10369910.6 |

## 3. Indicator Variance (Max-to-Average Ratio)

Rows: 25

| indicator_name | max_debt | avg_debt | max_to_avg_ratio |
| --- | --- | --- | --- |
| PPG, other private creditors (AMT, current US$) | 35119003750.0 | 746888800.477778 | 47.0204 |
| PPG, commercial banks (AMT, current US$) | 22077398848.1 | 734868742.6011907 | 30.0426 |
| PPG, commercial banks (INT, current US$) | 4228747124.8 | 156647613.0559524 | 26.9953 |
| PPG, private creditors (AMT, current US$) | 43598697498.6 | 1803694101.963265 | 24.1719 |
| PPG, multilateral (DIS, current US$) | 16375327102.5 | 839843678.6158334 | 19.4981 |
| PPG, bilateral (DIS, current US$) | 23333956388.4 | 1223139290.39823 | 19.0771 |
| PPG, official creditors (DIS, current US$) | 37273977350.5 | 1958983452.8598351 | 19.0272 |
| Disbursements on external debt, long-term (DIS, current US$) | 40160766261.6 | 2152041216.8902435 | 18.6617 |
| PPG, bilateral (INT, current US$) | 3029826352.3 | 164093285.6090164 | 18.464 |
| PPG, private creditors (INT, current US$) | 13131634472.9 | 719740180.0887755 | 18.245 |
| PPG, bilateral (AMT, current US$) | 12944703036.6 | 712619634.6598358 | 18.165 |
| PPG, other private creditors (INT, current US$) | 613421000.0 | 34250651.23518519 | 17.9098 |
| Principal repayments on external debt, long-term (AMT, current US$) | 96218620835.7 | 5904868401.499195 | 16.2948 |
| PPG, multilateral (AMT, current US$) | 7851739929.5 | 490062193.49838716 | 16.0219 |
| PPG, bonds (AMT, current US$) | 17109552312.5 | 1082623947.6536236 | 15.8038 |
| PPG, bonds (INT, current US$) | 12310714652.8 | 804733376.5985507 | 15.2979 |
| PPG, official creditors (INT, current US$) | 4426494528.6 | 297677338.95725805 | 14.8701 |
| PPG, official creditors (AMT, current US$) | 17028978560.8 | 1191187963.083064 | 14.2958 |
| PPG, multilateral (INT, current US$) | 1915432943.8 | 136230719.2451613 | 14.0602 |
| Principal repayments on external debt, private nonguaranteed (PNG) (AMT, current US$) | 72392986213.8 | 5161194333.812659 | 14.0264 |
| PPG, private creditors (DIS, current US$) | 4111062474.0 | 311323264.69056594 | 13.2051 |
| PPG, commercial banks (DIS, current US$) | 3777050273.3 | 293305195.5941176 | 12.8775 |
| Interest payments on external debt, long-term (INT, current US$) | 19267966623.4 | 1644024067.6508067 | 11.72 |
| Interest payments on external debt, private nonguaranteed (PNG) (INT, current US$) | 14142718751.6 | 1220410844.4215188 | 11.5885 |
| PPG, other private creditors (DIS, current US$) | 334012200.7 | 81135160.7 | 4.1167 |
