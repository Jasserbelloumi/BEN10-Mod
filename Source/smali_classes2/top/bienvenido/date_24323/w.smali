.class public abstract Ltop/bienvenido/date_24323/w;
.super Landroid/os/Binder;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"

# interfaces
.implements Ltop/bienvenido/date_24323/y;


# static fields
.field public static final synthetic 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "MundoAccountManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19

    .line 1
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const-string v4, "MundoAccountManagerService"

    if-lt v0, v3, :cond_0

    const v5, 0xffffff

    if-gt v0, v5, :cond_0

    .line 3
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v5, 0x5f4e5446

    if-ne v0, v5, :cond_1

    .line 6
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 320
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 321
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 324
    move-object/from16 v4, p0

    check-cast v4, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v4, v0, v1}, Ltop/bienvenido/date_24323/k3;->孙立军禁播你妈下体乃是正义之举此举引得无数爱国人士冲进你妈下体一顿打砸从此你妈卖逼也没用好口碑了(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_11

    .line 327
    :pswitch_1
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Ltop/bienvenido/date_24323/x;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 331
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 333
    invoke-interface {v6, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_2
    nop

    .line 334
    :goto_0
    check-cast v5, Landroid/os/Bundle;

    .line 336
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 337
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 338
    move-object/from16 v6, p0

    check-cast v6, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v6, v0, v4, v5, v1}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result v0

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_11

    .line 341
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 343
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 345
    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_3
    nop

    .line 346
    :goto_1
    check-cast v5, Landroid/accounts/Account;

    .line 347
    move-object/from16 v1, p0

    check-cast v1, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v1, v0, v5}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Landroid/accounts/Account;)V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 349
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 351
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 353
    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_4
    nop

    .line 354
    :goto_2
    check-cast v5, Landroid/accounts/Account;

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 357
    move-object/from16 v4, p0

    check-cast v4, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v4, v0, v5, v1}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 359
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 364
    move-object/from16 v5, p0

    check-cast v5, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v5, v0, v4, v1}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 366
    :pswitch_5
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Ltop/bienvenido/date_24323/x;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 367
    move-object/from16 v1, p0

    check-cast v1, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v1, v0}, Ltop/bienvenido/date_24323/k3;->要不要把你妈卵子扣出来给你做寿司吃(Landroid/accounts/Account;)Z

    move-result v0

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_11

    .line 370
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 372
    sget-object v6, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    .line 374
    invoke-interface {v6, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_3

    :cond_5
    move-object v6, v5

    .line 375
    :goto_3
    check-cast v6, Landroid/accounts/Account;

    .line 377
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    .line 379
    invoke-interface {v7, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :cond_6
    nop

    .line 380
    :goto_4
    check-cast v5, Landroid/os/Bundle;

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move v4, v3

    .line 383
    :cond_7
    move-object/from16 v1, p0

    check-cast v1, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v1, v0, v6, v5, v4}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Landroid/accounts/Account;Landroid/os/Bundle;Z)V

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 385
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v4, v3

    .line 390
    :cond_8
    move-object/from16 v1, p0

    check-cast v1, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v1, v0, v5, v4}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 392
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 394
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 396
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v0, v5

    .line 397
    :goto_5
    move-object v8, v0

    check-cast v8, Landroid/accounts/Account;

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v10, v3

    goto :goto_6

    :cond_a
    move v10, v4

    .line 403
    :goto_6
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 405
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_7

    :cond_b
    nop

    .line 406
    :goto_7
    move-object v11, v5

    check-cast v11, Landroid/os/Bundle;

    .line 407
    move-object/from16 v6, p0

    check-cast v6, Ltop/bienvenido/date_24323/k3;

    invoke-virtual/range {v6 .. v11}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 409
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move/from16 v17, v3

    goto :goto_8

    :cond_c
    move/from16 v17, v4

    .line 419
    :goto_8
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 421
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_9

    :cond_d
    nop

    .line 422
    :goto_9
    move-object/from16 v18, v5

    check-cast v18, Landroid/os/Bundle;

    .line 423
    move-object/from16 v12, p0

    check-cast v12, Ltop/bienvenido/date_24323/k3;

    invoke-virtual/range {v12 .. v18}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 425
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 427
    sget-object v6, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    .line 429
    invoke-interface {v6, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_a

    :cond_e
    move-object v6, v5

    .line 430
    :goto_a
    check-cast v6, Landroid/accounts/Account;

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_f

    move v8, v3

    goto :goto_b

    :cond_f
    move v8, v4

    .line 436
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    move v9, v3

    goto :goto_c

    :cond_10
    move v9, v4

    .line 438
    :goto_c
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_11

    .line 440
    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_d

    :cond_11
    nop

    .line 441
    :goto_d
    move-object v10, v5

    check-cast v10, Landroid/os/Bundle;

    .line 442
    move-object/from16 v4, p0

    check-cast v4, Ltop/bienvenido/date_24323/k3;

    move-object v5, v0

    invoke-virtual/range {v4 .. v10}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 444
    :pswitch_b
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Ltop/bienvenido/date_24323/x;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 449
    move-object/from16 v5, p0

    check-cast v5, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v5, v0, v4, v1}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 451
    :pswitch_c
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Ltop/bienvenido/date_24323/x;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 454
    move-object/from16 v4, p0

    check-cast v4, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v4, v0, v1}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 456
    :pswitch_d
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Ltop/bienvenido/date_24323/x;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 461
    move-object/from16 v5, p0

    check-cast v5, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v5, v0, v4, v1}, Ltop/bienvenido/date_24323/k3;->要不要把你妈卵子扣出来给你做寿司吃(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 463
    :pswitch_e
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Ltop/bienvenido/date_24323/x;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 466
    move-object/from16 v4, p0

    check-cast v4, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v4, v0, v1}, Ltop/bienvenido/date_24323/k3;->要不要把你妈卵子扣出来给你做寿司吃(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 469
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 472
    move-object/from16 v4, p0

    check-cast v4, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v4, v0, v1}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 474
    :pswitch_10
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Ltop/bienvenido/date_24323/x;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    if-nez v0, :cond_12

    goto :goto_e

    .line 475
    :cond_12
    invoke-static {v0}, Ltop/bienvenido/date_24323/k3;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃(Landroid/accounts/Account;)Z

    move-result v4

    .line 476
    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_11

    .line 478
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 480
    sget-object v6, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13

    .line 482
    invoke-interface {v6, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_f

    :cond_13
    nop

    .line 483
    :goto_f
    check-cast v5, Landroid/accounts/Account;

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    move v4, v3

    .line 486
    :cond_14
    move-object/from16 v1, p0

    check-cast v1, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v1, v0, v5, v4}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Landroid/accounts/Account;Z)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 488
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 493
    move-object/from16 v5, p0

    check-cast v5, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v5, v0, v4, v1}, Ltop/bienvenido/date_24323/k3;->要不要把你妈卵子扣出来给你做寿司吃(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 495
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 500
    move-object/from16 v5, p0

    check-cast v5, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v5, v0, v4, v1}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11

    .line 502
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 504
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    .line 506
    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_10

    :cond_15
    nop

    .line 507
    :goto_10
    check-cast v5, Landroid/accounts/Account;

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 510
    move-object/from16 v4, p0

    check-cast v4, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v4, v0, v5, v1}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Landroid/accounts/Account;[Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_11

    .line 512
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 513
    move-object/from16 v1, p0

    check-cast v1, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v1, v0}, Ltop/bienvenido/date_24323/k3;->我在操你妈的同时给你妈的下体画了一幅清明上河图这使得你妈的卖逼事业在文学界也有了一定的名气你婊子妈让自己的逼沾上了文学的气息以后嫖客操你妈时还能增长文化(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_11

    .line 516
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 519
    move-object/from16 v0, p0

    check-cast v0, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/k3;->虽然不是同一时间但是是同一个你妈你爹我再次挑战一把吃阴第()[Landroid/accounts/Account;

    move-result-object v0

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_11

    .line 522
    :pswitch_17
    move-object/from16 v0, p0

    check-cast v0, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/k3;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_11

    .line 525
    :pswitch_18
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Ltop/bienvenido/date_24323/x;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 528
    move-object/from16 v4, p0

    check-cast v4, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v4, v0, v1}, Ltop/bienvenido/date_24323/k3;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_11

    .line 531
    :pswitch_19
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Ltop/bienvenido/date_24323/x;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 532
    move-object/from16 v1, p0

    check-cast v1, Ltop/bienvenido/date_24323/k3;

    invoke-virtual {v1, v0}, Ltop/bienvenido/date_24323/k3;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_11
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
