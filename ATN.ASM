	title 'atn'
;
; argument is passed in ax
; atn value is returned in ax
;  integer value returned is atn(i/32768)/(pi/4)*32768

_MODEL	equ	<SMALL>
include model.inc

	public	atn
	public	atn2

atnseg	segment	para 'horseshit'
atntbl dw	0
	dw	40
	dw	81
	dw	122
	dw	162
	dw	203
	dw	244
	dw	285
	dw	325
	dw	366
	dw	407
	dw	448
	dw	488
	dw	529
	dw	570
	dw	611
	dw	651
	dw	692
	dw	733
	dw	774
	dw	814
	dw	855
	dw	896
	dw	936
	dw	977
	dw	1018
	dw	1059
	dw	1099
	dw	1140
	dw	1181
	dw	1221
	dw	1262
	dw	1303
	dw	1344
	dw	1384
	dw	1425
	dw	1466
	dw	1506
	dw	1547
	dw	1588
	dw	1628
	dw	1669
	dw	1710
	dw	1750
	dw	1791
	dw	1832
	dw	1872
	dw	1913
	dw	1954
	dw	1994
	dw	2035
	dw	2076
	dw	2116
	dw	2157
	dw	2198
	dw	2238
	dw	2279
	dw	2319
	dw	2360
	dw	2401
	dw	2441
	dw	2482
	dw	2523
	dw	2563
	dw	2604
	dw	2644
	dw	2685
	dw	2725
	dw	2766
	dw	2807
	dw	2847
	dw	2888
	dw	2928
	dw	2969
	dw	3009
	dw	3050
	dw	3090
	dw	3131
	dw	3171
	dw	3212
	dw	3252
	dw	3293
	dw	3333
	dw	3374
	dw	3414
	dw	3455
	dw	3495
	dw	3536
	dw	3576
	dw	3617
	dw	3657
	dw	3697
	dw	3738
	dw	3778
	dw	3819
	dw	3859
	dw	3899
	dw	3940
	dw	3980
	dw	4021
	dw	4061
	dw	4101
	dw	4142
	dw	4182
	dw	4222
	dw	4263
	dw	4303
	dw	4343
	dw	4384
	dw	4424
	dw	4464
	dw	4504
	dw	4545
	dw	4585
	dw	4625
	dw	4665
	dw	4706
	dw	4746
	dw	4786
	dw	4826
	dw	4867
	dw	4907
	dw	4947
	dw	4987
	dw	5027
	dw	5067
	dw	5108
	dw	5148
	dw	5188
	dw	5228
	dw	5268
	dw	5308
	dw	5348
	dw	5388
	dw	5428
	dw	5468
	dw	5508
	dw	5548
	dw	5588
	dw	5628
	dw	5668
	dw	5708
	dw	5748
	dw	5788
	dw	5828
	dw	5868
	dw	5908
	dw	5948
	dw	5988
	dw	6028
	dw	6068
	dw	6108
	dw	6148
	dw	6188
	dw	6227
	dw	6267
	dw	6307
	dw	6347
	dw	6387
	dw	6426
	dw	6466
	dw	6506
	dw	6546
	dw	6585
	dw	6625
	dw	6665
	dw	6705
	dw	6744
	dw	6784
	dw	6824
	dw	6863
	dw	6903
	dw	6943
	dw	6982
	dw	7022
	dw	7061
	dw	7101
	dw	7141
	dw	7180
	dw	7220
	dw	7259
	dw	7299
	dw	7338
	dw	7378
	dw	7417
	dw	7457
	dw	7496
	dw	7536
	dw	7575
	dw	7614
	dw	7654
	dw	7693
	dw	7732
	dw	7772
	dw	7811
	dw	7851
	dw	7890
	dw	7929
	dw	7968
	dw	8008
	dw	8047
	dw	8086
	dw	8125
	dw	8165
	dw	8204
	dw	8243
	dw	8282
	dw	8321
	dw	8360
	dw	8400
	dw	8439
	dw	8478
	dw	8517
	dw	8556
	dw	8595
	dw	8634
	dw	8673
	dw	8712
	dw	8751
	dw	8790
	dw	8829
	dw	8868
	dw	8907
	dw	8946
	dw	8985
	dw	9023
	dw	9062
	dw	9101
	dw	9140
	dw	9179
	dw	9218
	dw	9256
	dw	9295
	dw	9334
	dw	9373
	dw	9411
	dw	9450
	dw	9489
	dw	9527
	dw	9566
	dw	9605
	dw	9643
	dw	9682
	dw	9720
	dw	9759
	dw	9798
	dw	9836
	dw	9875
	dw	9913
	dw	9952
	dw	9990
	dw	10028
	dw	10067
	dw	10105
	dw	10144
	dw	10182
	dw	10220
	dw	10259
	dw	10297
	dw	10335
	dw	10374
	dw	10412
	dw	10450
	dw	10488
	dw	10527
	dw	10565
	dw	10603
	dw	10641
	dw	10679
	dw	10717
	dw	10755
	dw	10794
	dw	10832
	dw	10870
	dw	10908
	dw	10946
	dw	10984
	dw	11022
	dw	11060
	dw	11098
	dw	11136
	dw	11173
	dw	11211
	dw	11249
	dw	11287
	dw	11325
	dw	11363
	dw	11400
	dw	11438
	dw	11476
	dw	11514
	dw	11551
	dw	11589
	dw	11627
	dw	11664
	dw	11702
	dw	11740
	dw	11777
	dw	11815
	dw	11852
	dw	11890
	dw	11927
	dw	11965
	dw	12002
	dw	12040
	dw	12077
	dw	12115
	dw	12152
	dw	12189
	dw	12227
	dw	12264
	dw	12301
	dw	12339
	dw	12376
	dw	12413
	dw	12450
	dw	12488
	dw	12525
	dw	12562
	dw	12599
	dw	12636
	dw	12673
	dw	12711
	dw	12748
	dw	12785
	dw	12822
	dw	12859
	dw	12896
	dw	12933
	dw	12970
	dw	13006
	dw	13043
	dw	13080
	dw	13117
	dw	13154
	dw	13191
	dw	13228
	dw	13264
	dw	13301
	dw	13338
	dw	13375
	dw	13411
	dw	13448
	dw	13485
	dw	13521
	dw	13558
	dw	13594
	dw	13631
	dw	13667
	dw	13704
	dw	13740
	dw	13777
	dw	13813
	dw	13850
	dw	13886
	dw	13923
	dw	13959
	dw	13995
	dw	14032
	dw	14068
	dw	14104
	dw	14140
	dw	14177
	dw	14213
	dw	14249
	dw	14285
	dw	14321
	dw	14357
	dw	14394
	dw	14430
	dw	14466
	dw	14502
	dw	14538
	dw	14574
	dw	14610
	dw	14646
	dw	14681
	dw	14717
	dw	14753
	dw	14789
	dw	14825
	dw	14861
	dw	14896
	dw	14932
	dw	14968
	dw	15004
	dw	15039
	dw	15075
	dw	15111
	dw	15146
	dw	15182
	dw	15217
	dw	15253
	dw	15289
	dw	15324
	dw	15359
	dw	15395
	dw	15430
	dw	15466
	dw	15501
	dw	15537
	dw	15572
	dw	15607
	dw	15642
	dw	15678
	dw	15713
	dw	15748
	dw	15783
	dw	15819
	dw	15854
	dw	15889
	dw	15924
	dw	15959
	dw	15994
	dw	16029
	dw	16064
	dw	16099
	dw	16134
	dw	16169
	dw	16204
	dw	16239
	dw	16274
	dw	16309
	dw	16343
	dw	16378
	dw	16413
	dw	16448
	dw	16482
	dw	16517
	dw	16552
	dw	16586
	dw	16621
	dw	16656
	dw	16690
	dw	16725
	dw	16759
	dw	16794
	dw	16828
	dw	16863
	dw	16897
	dw	16932
	dw	16966
	dw	17000
	dw	17035
	dw	17069
	dw	17103
	dw	17137
	dw	17172
	dw	17206
	dw	17240
	dw	17274
	dw	17308
	dw	17342
	dw	17377
	dw	17411
	dw	17445
	dw	17479
	dw	17513
	dw	17547
	dw	17581
	dw	17614
	dw	17648
	dw	17682
	dw	17716
	dw	17750
	dw	17784
	dw	17817
	dw	17851
	dw	17885
	dw	17919
	dw	17952
	dw	17986
	dw	18020
	dw	18053
	dw	18087
	dw	18120
	dw	18154
	dw	18187
	dw	18221
	dw	18254
	dw	18288
	dw	18321
	dw	18354
	dw	18388
	dw	18421
	dw	18454
	dw	18488
	dw	18521
	dw	18554
	dw	18587
	dw	18620
	dw	18653
	dw	18687
	dw	18720
	dw	18753
	dw	18786
	dw	18819
	dw	18852
	dw	18885
	dw	18918
	dw	18951
	dw	18983
	dw	19016
	dw	19049
	dw	19082
	dw	19115
	dw	19148
	dw	19180
	dw	19213
	dw	19246
	dw	19278
	dw	19311
	dw	19344
	dw	19376
	dw	19409
	dw	19441
	dw	19474
	dw	19506
	dw	19539
	dw	19571
	dw	19604
	dw	19636
	dw	19668
	dw	19701
	dw	19733
	dw	19765
	dw	19797
	dw	19830
	dw	19862
	dw	19894
	dw	19926
	dw	19958
	dw	19990
	dw	20022
	dw	20054
	dw	20087
	dw	20119
	dw	20150
	dw	20182
	dw	20214
	dw	20246
	dw	20278
	dw	20310
	dw	20342
	dw	20374
	dw	20405
	dw	20437
	dw	20469
	dw	20500
	dw	20532
	dw	20564
	dw	20595
	dw	20627
	dw	20658
	dw	20690
	dw	20722
	dw	20753
	dw	20784
	dw	20816
	dw	20847
	dw	20879
	dw	20910
	dw	20941
	dw	20973
	dw	21004
	dw	21035
	dw	21066
	dw	21098
	dw	21129
	dw	21160
	dw	21191
	dw	21222
	dw	21253
	dw	21284
	dw	21315
	dw	21346
	dw	21377
	dw	21408
	dw	21439
	dw	21470
	dw	21501
	dw	21532
	dw	21562
	dw	21593
	dw	21624
	dw	21655
	dw	21685
	dw	21716
	dw	21747
	dw	21777
	dw	21808
	dw	21839
	dw	21869
	dw	21900
	dw	21930
	dw	21961
	dw	21991
	dw	22021
	dw	22052
	dw	22082
	dw	22113
	dw	22143
	dw	22173
	dw	22203
	dw	22234
	dw	22264
	dw	22294
	dw	22324
	dw	22354
	dw	22384
	dw	22415
	dw	22445
	dw	22475
	dw	22505
	dw	22535
	dw	22565
	dw	22595
	dw	22624
	dw	22654
	dw	22684
	dw	22714
	dw	22744
	dw	22774
	dw	22803
	dw	22833
	dw	22863
	dw	22892
	dw	22922
	dw	22952
	dw	22981
	dw	23011
	dw	23040
	dw	23070
	dw	23099
	dw	23129
	dw	23158
	dw	23188
	dw	23217
	dw	23246
	dw	23276
	dw	23305
	dw	23334
	dw	23364
	dw	23393
	dw	23422
	dw	23451
	dw	23480
	dw	23510
	dw	23539
	dw	23568
	dw	23597
	dw	23626
	dw	23655
	dw	23684
	dw	23713
	dw	23742
	dw	23771
	dw	23799
	dw	23828
	dw	23857
	dw	23886
	dw	23915
	dw	23943
	dw	23972
	dw	24001
	dw	24030
	dw	24058
	dw	24087
	dw	24115
	dw	24144
	dw	24173
	dw	24201
	dw	24230
	dw	24258
	dw	24286
	dw	24315
	dw	24343
	dw	24372
	dw	24400
	dw	24428
	dw	24457
	dw	24485
	dw	24513
	dw	24541
	dw	24569
	dw	24598
	dw	24626
	dw	24654
	dw	24682
	dw	24710
	dw	24738
	dw	24766
	dw	24794
	dw	24822
	dw	24850
	dw	24878
	dw	24906
	dw	24934
	dw	24961
	dw	24989
	dw	25017
	dw	25045
	dw	25072
	dw	25100
	dw	25128
	dw	25155
	dw	25183
	dw	25211
	dw	25238
	dw	25266
	dw	25293
	dw	25321
	dw	25348
	dw	25376
	dw	25403
	dw	25431
	dw	25458
	dw	25485
	dw	25513
	dw	25540
	dw	25567
	dw	25595
	dw	25622
	dw	25649
	dw	25676
	dw	25703
	dw	25730
	dw	25758
	dw	25785
	dw	25812
	dw	25839
	dw	25866
	dw	25893
	dw	25920
	dw	25947
	dw	25973
	dw	26000
	dw	26027
	dw	26054
	dw	26081
	dw	26108
	dw	26134
	dw	26161
	dw	26188
	dw	26214
	dw	26241
	dw	26268
	dw	26294
	dw	26321
	dw	26347
	dw	26374
	dw	26401
	dw	26427
	dw	26453
	dw	26480
	dw	26506
	dw	26533
	dw	26559
	dw	26585
	dw	26612
	dw	26638
	dw	26664
	dw	26690
	dw	26717
	dw	26743
	dw	26769
	dw	26795
	dw	26821
	dw	26847
	dw	26873
	dw	26899
	dw	26925
	dw	26951
	dw	26977
	dw	27003
	dw	27029
	dw	27055
	dw	27081
	dw	27107
	dw	27133
	dw	27158
	dw	27184
	dw	27210
	dw	27236
	dw	27261
	dw	27287
	dw	27313
	dw	27338
	dw	27364
	dw	27390
	dw	27415
	dw	27441
	dw	27466
	dw	27492
	dw	27517
	dw	27543
	dw	27568
	dw	27593
	dw	27619
	dw	27644
	dw	27669
	dw	27695
	dw	27720
	dw	27745
	dw	27770
	dw	27796
	dw	27821
	dw	27846
	dw	27871
	dw	27896
	dw	27921
	dw	27946
	dw	27971
	dw	27996
	dw	28021
	dw	28046
	dw	28071
	dw	28096
	dw	28121
	dw	28146
	dw	28171
	dw	28195
	dw	28220
	dw	28245
	dw	28270
	dw	28294
	dw	28319
	dw	28344
	dw	28368
	dw	28393
	dw	28418
	dw	28442
	dw	28467
	dw	28491
	dw	28516
	dw	28540
	dw	28565
	dw	28589
	dw	28614
	dw	28638
	dw	28662
	dw	28687
	dw	28711
	dw	28735
	dw	28760
	dw	28784
	dw	28808
	dw	28832
	dw	28856
	dw	28881
	dw	28905
	dw	28929
	dw	28953
	dw	28977
	dw	29001
	dw	29025
	dw	29049
	dw	29073
	dw	29097
	dw	29121
	dw	29145
	dw	29169
	dw	29193
	dw	29216
	dw	29240
	dw	29264
	dw	29288
	dw	29312
	dw	29335
	dw	29359
	dw	29383
	dw	29406
	dw	29430
	dw	29453
	dw	29477
	dw	29501
	dw	29524
	dw	29548
	dw	29571
	dw	29595
	dw	29618
	dw	29642
	dw	29665
	dw	29688
	dw	29712
	dw	29735
	dw	29758
	dw	29782
	dw	29805
	dw	29828
	dw	29851
	dw	29875
	dw	29898
	dw	29921
	dw	29944
	dw	29967
	dw	29990
	dw	30013
	dw	30036
	dw	30059
	dw	30082
	dw	30105
	dw	30128
	dw	30151
	dw	30174
	dw	30197
	dw	30220
	dw	30243
	dw	30265
	dw	30288
	dw	30311
	dw	30334
	dw	30357
	dw	30379
	dw	30402
	dw	30425
	dw	30447
	dw	30470
	dw	30492
	dw	30515
	dw	30538
	dw	30560
	dw	30583
	dw	30605
	dw	30628
	dw	30650
	dw	30672
	dw	30695
	dw	30717
	dw	30740
	dw	30762
	dw	30784
	dw	30807
	dw	30829
	dw	30851
	dw	30873
	dw	30896
	dw	30918
	dw	30940
	dw	30962
	dw	30984
	dw	31006
	dw	31028
	dw	31050
	dw	31072
	dw	31094
	dw	31116
	dw	31138
	dw	31160
	dw	31182
	dw	31204
	dw	31226
	dw	31248
	dw	31270
	dw	31292
	dw	31313
	dw	31335
	dw	31357
	dw	31379
	dw	31400
	dw	31422
	dw	31444
	dw	31465
	dw	31487
	dw	31509
	dw	31530
	dw	31552
	dw	31573
	dw	31595
	dw	31616
	dw	31638
	dw	31659
	dw	31681
	dw	31702
	dw	31724
	dw	31745
	dw	31766
	dw	31788
	dw	31809
	dw	31830
	dw	31852
	dw	31873
	dw	31894
	dw	31915
	dw	31937
	dw	31958
	dw	31979
	dw	32000
	dw	32021
	dw	32042
	dw	32063
	dw	32084
	dw	32105
	dw	32126
	dw	32147
	dw	32168
	dw	32189
	dw	32210
	dw	32231
	dw	32252
	dw	32273
	dw	32294
	dw	32314
	dw	32335
	dw	32356
	dw	32377
	dw	32398
	dw	32418
	dw	32439
	dw	32460
	dw	32480
	dw	32501
	dw	32522
	dw	32542
	dw	32563
	dw	32583
	dw	32604
	dw	32624
	dw	32645
	dw	32665
	dw	32686
	dw	32706
	dw	32727
	dw	32747
	dw	0ddddh
	dw	0ddddh
atnseg	ends
.dataseg
stor1	dw	?
stor2	dw	?
stor3	dw	?
.ends

.codeseg
	;assume cs:@codeseg,
	assume ds:@dataseg

.proc	atn	auto
	mov	si,offset	atnseg:atntbl
	or	ax,ax		; make a few checks
	js	atne
	mov	cl,5		; divide by 32/ then mult by 2
	shr	ax,cl
	add	ax,ax		; to get word address
	add	si,ax
		assume	es:atnseg
		push	es
		mov	ax,atnseg
		mov	es,ax
	mov	ax,es:[si]		; pick up table entry
		pop	es
		assume	es:nothing
	clc			; set no error flag
	ret
atne:	xor	ax,ax		; return zero
	stc			; set error flag
	ret
.endp

.proc	atn2	auto		; ax has x coord, dx has y coord
				; returns angle 0-360 in ax
	mov	stor1,ax
	mov	stor2,dx
	cmp	ax,8000h
	jnz	noterm		; no emergency, just deal with it
	inc	ax
noterm:	xor	cx,cx		; clear quadrant code
	or	ax,ax		; first determine quadrant
	jns	xs1
	or	cl,3
	neg	ax		; make coords positive, while your at it
xs1:	or	dx,dx		; do same for y
	jns	ys1
	xor	cl,5		; quadrant code is now 0-3
	neg	dx
ys1:	cmp	ax,dx		; check for x=y case
	jnz	xyne		; no such luch
	mov	ax,32768	; give angle of 45 deg
	jmp	addup		; add angles up
xyne:	jns	xbigr		; if x is bigger than y, skip ahead
	add	ch,64		; add 90 deg to quadrant sum factor
	xchg	ax,dx		; reverse x and y
	xor	cl,1		; reverse the add/subtract bit
	mov	bl,cl
	shr	cl,1
	shr	cl,1
	shr	bl,1
	rcl	cl,1
xbigr:	mov	bx,ax		; prepare for division
	xor	ax,ax
	mov	stor3,bx
	div	bx		; ax has y/x for call to atn function
	shr	ax,1		; scale into 0-32767
	push	cx		; save cx register
	call	atn
	pop	cx
addup:	shr	ax,1		; scale 0-32767 angle into 0-8193
	shr	ax,1
	test	cl,1		; now see if we add or subtract to quadrant
	jz	angnn		; angle non-negative, no action needed
	neg	ax		; reverse angle
angnn:	test	cl,2		; now see if quadrant needs to switched
	jz	noqadd		; no, quadrant is just fine
	add	ch,128		; shift angle by 180 deg
noqadd:	xor	cl,cl		; now actually add angles
	add	ax,cx
	ret
.endp
.ends
	end
