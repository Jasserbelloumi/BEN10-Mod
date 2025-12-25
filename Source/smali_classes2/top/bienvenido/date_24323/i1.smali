.class public abstract Ltop/bienvenido/date_24323/i1;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# direct methods
.method public static 我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/io/File;Z)Lkotlin/Pair;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Ltop/bienvenido/date_24323/i1;->要不要把你妈卵子扣出来给你做寿司吃(Ljava/io/File;Z)Lkotlin/Pair;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/bienvenido/date_24323/c2;

    if-nez p1, :cond_0

    return-object p0

    .line 6
    :cond_0
    invoke-static {p1}, Ltop/bienvenido/date_24323/i1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ltop/bienvenido/date_24323/c2;)V

    const/4 p0, 0x1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, -0x1

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/io/File;Ljava/io/File;)I
    .locals 3

    .line 7
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p0

    .line 10
    invoke-static {}, Ltop/bienvenido/date_24323/i1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()[Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {p0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 17
    invoke-static {}, Ltop/bienvenido/date_24323/i1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()[Ljava/lang/String;

    move-result-object v2

    .line 18
    aget-object v2, v2, v1

    .line 20
    invoke-static {p0, p1, v2}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    return v0
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .locals 12

    .line 723
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/pm/PackageInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 724
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2}, Landroid/content/pm/PackageParser;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p0

    .line 728
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 729
    iput-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 732
    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 733
    sget-boolean v4, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Z

    if-eqz v4, :cond_0

    .line 734
    iget v4, p0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v4, v1, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 735
    sget-object v4, Ltop/bienvenido/date_24323/g;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:[I

    iput-object v4, v1, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 736
    :cond_0
    sget-boolean v4, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->你不知道你妈张个大嘴劈个小腿下面还流着咸盐水吗弟弟:Z

    if-eqz v4, :cond_1

    .line 737
    iget v5, p0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    .line 738
    iget v6, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    int-to-long v7, v5

    const/16 v5, 0x20

    shl-long/2addr v7, v5

    int-to-long v5, v6

    const-wide v9, 0xffffffffL

    and-long/2addr v5, v9

    or-long/2addr v5, v7

    .line 739
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageInfo;->setLongVersionCode(J)V

    goto :goto_0

    .line 743
    :cond_1
    iget v5, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 745
    :goto_0
    sget-object v5, Ltop/bienvenido/date_24323/g;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:[Ljava/lang/String;

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 746
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 747
    iget v5, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v5, v1, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 748
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 749
    iget v5, p0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v5, v1, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 750
    sget-object v5, Ltop/bienvenido/date_24323/g;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:[I

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->gids:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 754
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 755
    sget-object v5, Ltop/bienvenido/date_24323/k;->要不要把你妈卵子扣出来给你做寿司吃:[I

    invoke-static {v5, v2}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_3

    .line 756
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v6, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v4, :cond_2

    .line 758
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget p0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_1

    .line 759
    :cond_2
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_1

    .line 761
    :cond_3
    new-instance p0, Landroid/content/pm/Signature;

    .line 762
    const-string v2, "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

    .line 763
    invoke-direct {p0, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    new-array v2, v5, [Landroid/content/pm/Signature;

    aput-object p0, v2, v3

    const/4 p0, 0x2

    .line 766
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 767
    invoke-static {v2, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 758
    :goto_1
    nop

    .line 767
    if-eqz v4, :cond_8

    .line 768
    sget-boolean v2, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Z

    if-eqz v2, :cond_5

    .line 769
    new-instance v2, Landroid/content/pm/SigningInfo;

    .line 770
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 771
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 772
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/Signature;

    .line 773
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v6

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 774
    array-length v8, v6

    :goto_2
    if-ge v3, v8, :cond_4

    aget-object v9, v6, v3

    .line 775
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    .line 776
    const-string v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v10

    .line 777
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 778
    invoke-virtual {v10, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    .line 779
    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 780
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 781
    invoke-direct {v2, v4, v5, v7, v0}, Landroid/content/pm/SigningInfo;-><init>(ILjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_5

    .line 788
    :cond_5
    const-class v0, Landroid/content/pm/SigningInfo;

    .line 789
    sget-boolean v2, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->孙立军禁播你妈下体乃是正义之举此举引得无数爱国人士冲进你妈下体一顿打砸从此你妈卖逼也没用好口碑了:Z

    if-eqz v2, :cond_6

    .line 790
    const-class v4, Landroid/content/pm/SigningDetails;

    goto :goto_3

    .line 791
    :cond_6
    const-class v4, Landroid/content/pm/PackageParser$SigningDetails;

    .line 790
    :goto_3
    nop

    .line 791
    new-array v6, v5, [Ljava/lang/Class;

    aput-object v4, v6, v3

    .line 792
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 795
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    if-eqz v2, :cond_7

    .line 796
    new-instance v2, Landroid/content/pm/SigningDetails;

    .line 797
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/Signature;

    .line 798
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 799
    invoke-direct {v2, v4, v6}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    goto :goto_4

    .line 803
    :cond_7
    new-instance v2, Landroid/content/pm/PackageParser$SigningDetails;

    .line 804
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/Signature;

    .line 805
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 806
    invoke-direct {v2, v4, v6}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    :goto_4
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v3

    .line 807
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 808
    move-object v2, v0

    check-cast v2, Landroid/content/pm/SigningInfo;

    .line 809
    :goto_5
    iput-object v2, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 834
    :cond_8
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/Signature;

    iput-object p0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 758
    :catchall_0
    move-exception p0

    .line 834
    return-object v1

    .line 735
    :catchall_1
    move-exception p0

    .line 834
    return-object v0
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/io/File;ILandroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 21
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 22
    sget-boolean v0, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Z

    .line 23
    sget-boolean v0, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->你不知道你妈张个大嘴劈个小腿下面还流着咸盐水吗弟弟:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    or-int/2addr p1, v0

    .line 24
    :cond_0
    invoke-virtual {p2, p0, p1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/io/File;Z)Lkotlin/Pair;
    .locals 22

    .line 36
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;

    .line 37
    invoke-direct {v3, v2}, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;-><init>(I)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isDirectory()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v4, 0x2

    const-string v5, ".apk"

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    .line 40
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 157
    :try_start_2
    sget-object v0, Ltop/bienvenido/date_24323/i;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lkotlin/jvm/functions/Function1;

    .line 158
    invoke-static {v2}, Ltop/bienvenido/date_24323/z1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Z)Ljava/io/File;

    move-result-object v0

    .line 159
    invoke-static {v0}, Ltop/bienvenido/date_24323/i;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    return-object v1

    :cond_0
    nop

    .line 160
    :try_start_3
    array-length v8, v7

    move v9, v2

    :goto_0
    if-ge v9, v8, :cond_2

    .line 162
    aget-object v0, v7, v9

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5, v2, v4, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-eqz v10, :cond_1

    .line 165
    :try_start_4
    invoke-static {v0, v2}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v10

    .line 169
    iget-object v11, v10, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v3, v11, v0}, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 160
    :cond_2
    move/from16 v0, p1

    goto/16 :goto_3

    .line 169
    :cond_3
    nop

    .line 170
    :try_start_5
    invoke-static {v6}, Ltop/bienvenido/date_24323/z1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Z)Ljava/io/File;

    move-result-object v7

    .line 171
    sget-object v0, Ltop/bienvenido/date_24323/i;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lkotlin/jvm/functions/Function1;

    invoke-static {v7}, Ltop/bienvenido/date_24323/i;->要不要把你妈卵子扣出来给你做寿司吃(Ljava/io/File;)V

    .line 172
    new-instance v0, Ljava/util/zip/ZipFile;

    move-object/from16 v8, p0

    invoke-direct {v0, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 174
    :try_start_6
    move-object v9, v8

    check-cast v9, Ljava/util/zip/ZipFile;

    .line 175
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v10

    .line 176
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 179
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    .line 180
    invoke-static {v11, v5, v2, v4, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 182
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v11, :cond_4

    .line 188
    :try_start_7
    new-instance v13, Ljava/io/FileOutputStream;

    .line 189
    invoke-direct {v13, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {v11, v13, v2, v4, v1}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 190
    :try_start_a
    invoke-static {v11, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 194
    :try_start_b
    invoke-static {v12, v2}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    .line 200
    iget-object v11, v0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    .line 201
    invoke-static {v12, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v3, v11, v0}, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 202
    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_d
    invoke-static {v13, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 201
    :catchall_3
    move-exception v0

    move-object v3, v0

    .line 203
    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    move-object v4, v0

    :try_start_f
    invoke-static {v11, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 221
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 222
    :try_start_10
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move v0, v6

    :goto_3
    nop

    .line 257
    invoke-virtual {v3, v1}, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    if-nez v4, :cond_6

    const/4 v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 315
    :try_start_11
    sget-object v0, Ltop/bienvenido/date_24323/i;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lkotlin/jvm/functions/Function1;

    .line 316
    invoke-static {v2}, Ltop/bienvenido/date_24323/z1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Z)Ljava/io/File;

    move-result-object v0

    .line 317
    invoke-static {v0}, Ltop/bienvenido/date_24323/i;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/io/File;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_4
    return-object v1

    .line 318
    :cond_6
    :try_start_12
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 319
    invoke-static {v4, v0}, Ltop/bienvenido/date_24323/i1;->要不要把你妈卵子扣出来给你做寿司吃(Ljava/io/File;Z)Lkotlin/Pair;

    move-result-object v4

    .line 323
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltop/bienvenido/date_24323/c2;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-nez v7, :cond_7

    .line 376
    :try_start_13
    sget-object v0, Ltop/bienvenido/date_24323/i;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lkotlin/jvm/functions/Function1;

    .line 377
    invoke-static {v2}, Ltop/bienvenido/date_24323/z1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Z)Ljava/io/File;

    move-result-object v0

    .line 378
    invoke-static {v0}, Ltop/bienvenido/date_24323/i;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/io/File;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_5
    return-object v4

    .line 379
    :cond_7
    :try_start_14
    iget-object v4, v7, Ltop/bienvenido/date_24323/c2;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:Landroid/content/pm/ApplicationInfo;

    .line 380
    new-instance v8, Ljava/io/File;

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 382
    invoke-virtual {v3}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/Pair;

    .line 384
    sget-boolean v12, Ltop/bienvenido/date_24323/z1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Z

    .line 385
    iget-object v12, v7, Ltop/bienvenido/date_24323/h4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/lang/String;

    .line 386
    invoke-virtual {v11}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageParser$ApkLite;

    iget-object v13, v13, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "split_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 387
    new-instance v14, Ljava/io/File;

    .line 388
    sget-object v15, Ltop/bienvenido/date_24323/z1;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/io/File;

    .line 389
    invoke-direct {v14, v15, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 393
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v14, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {v11}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .line 397
    invoke-static {v11, v8}, Ltop/bienvenido/date_24323/i1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/io/File;Ljava/io/File;)I

    if-eqz v0, :cond_9

    .line 401
    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_a

    :cond_9
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    .line 403
    move-object/from16 v16, v11

    move-object/from16 v17, v12

    invoke-static/range {v16 .. v21}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 404
    :cond_a
    sget-boolean v11, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->用搅拌机把你妈的阴扩一下:Z

    if-eqz v11, :cond_8

    .line 405
    invoke-virtual {v12}, Ljava/io/File;->setReadOnly()Z

    goto :goto_6

    .line 409
    :cond_b
    sget-object v0, Ltop/bienvenido/date_24323/g;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:[Ljava/lang/String;

    .line 410
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 412
    check-cast v0, [Ljava/lang/String;

    .line 413
    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 414
    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 415
    iget-object v0, v7, Ltop/bienvenido/date_24323/c2;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Landroid/content/pm/PackageInfo;

    .line 416
    invoke-virtual {v3}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 578
    new-array v8, v2, [Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 579
    iput-object v5, v0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 580
    sget-boolean v0, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Z

    if-eqz v0, :cond_e

    .line 581
    iget-object v0, v7, Ltop/bienvenido/date_24323/c2;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Landroid/content/pm/PackageInfo;

    .line 582
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 584
    array-length v8, v5

    .line 585
    new-array v9, v8, [I

    move v10, v2

    :goto_7
    if-ge v10, v8, :cond_d

    .line 588
    aget-object v11, v5, v10

    invoke-virtual {v3, v11}, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/Pair;

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$ApkLite;

    if-eqz v11, :cond_c

    iget v11, v11, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    goto :goto_8

    :cond_c
    move v11, v2

    :goto_8
    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 589
    :cond_d
    iput-object v9, v0, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 590
    :cond_e
    sget-boolean v0, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Z

    if-eqz v0, :cond_f

    .line 591
    iget-object v0, v7, Ltop/bienvenido/date_24323/c2;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Landroid/content/pm/PackageInfo;

    .line 592
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 594
    :cond_f
    invoke-static {v7}, Ltop/bienvenido/date_24323/i1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ltop/bienvenido/date_24323/c2;)V

    .line 595
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 602
    :try_start_15
    sget-object v0, Ltop/bienvenido/date_24323/i;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lkotlin/jvm/functions/Function1;

    .line 603
    invoke-static {v2}, Ltop/bienvenido/date_24323/z1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Z)Ljava/io/File;

    move-result-object v0

    .line 604
    invoke-static {v0}, Ltop/bienvenido/date_24323/i;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/io/File;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    :goto_9
    return-object v1

    .line 201
    :catchall_5
    move-exception v0

    move-object v3, v0

    .line 605
    :try_start_16
    throw v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :catchall_6
    move-exception v0

    move-object v4, v0

    :try_start_17
    invoke-static {v8, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 159
    :catchall_7
    move-exception v0

    move-object v1, v0

    .line 698
    :try_start_18
    sget-object v0, Ltop/bienvenido/date_24323/i;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lkotlin/jvm/functions/Function1;

    .line 699
    invoke-static {v2}, Ltop/bienvenido/date_24323/z1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Z)Ljava/io/File;

    move-result-object v0

    .line 700
    invoke-static {v0}, Ltop/bienvenido/date_24323/i;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/io/File;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    .line 708
    :goto_a
    throw v1

    .line 159
    :catch_6
    move-exception v0

    .line 709
    :try_start_19
    sget-object v0, Ltop/bienvenido/date_24323/i;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lkotlin/jvm/functions/Function1;

    .line 710
    invoke-static {v2}, Ltop/bienvenido/date_24323/z1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Z)Ljava/io/File;

    move-result-object v0

    .line 711
    invoke-static {v0}, Ltop/bienvenido/date_24323/i;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/io/File;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    :goto_b
    const/4 v0, -0x1

    .line 722
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ltop/bienvenido/date_24323/c2;)V
    .locals 5

    .line 25
    :try_start_0
    sget-boolean v0, Ltop/bienvenido/date_24323/z1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Z

    .line 26
    iget-object v0, p0, Ltop/bienvenido/date_24323/h4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/lang/String;

    .line 27
    sget-object v1, Ltop/bienvenido/date_24323/z1;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/io/File;

    const/4 v2, 0x2

    .line 29
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "installation.bin"

    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 30
    invoke-static {v1, v2}, Ltop/bienvenido/date_24323/n1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 31
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 32
    iget-object p0, p0, Ltop/bienvenido/date_24323/c2;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, p0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 35
    invoke-static {v0, p0}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()[Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Ltop/bienvenido/date_24323/z1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v0

    if-nez v1, :cond_1

    .line 6
    const-string v0, "armeabi-v7a"

    const-string v1, "armeabi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static 要不要把你妈卵子扣出来给你做寿司吃(Ljava/io/File;Z)Lkotlin/Pair;
    .locals 14

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ltop/bienvenido/date_24323/n3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, -0x3

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    const v1, -0x7fffffc0

    .line 5
    sget-object v2, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    new-instance v2, Ltop/bienvenido/date_24323/i1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Ltop/bienvenido/date_24323/i1$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;I)V

    invoke-static {v2}, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_1

    .line 15
    invoke-static {p0}, Ltop/bienvenido/date_24323/i1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, -0x2

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 18
    :cond_2
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_3

    const/4 p0, -0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 19
    :cond_3
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 20
    sget-object v4, Ltop/bienvenido/date_24323/u3;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/u3;

    invoke-virtual {v4, v3, v0}, Ltop/bienvenido/date_24323/u3;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v4, Ltop/bienvenido/date_24323/n5;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/n5;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v4, Ltop/bienvenido/date_24323/n5;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;

    invoke-virtual {v4, v3}, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/bienvenido/date_24323/c2;

    if-eqz v4, :cond_4

    move-object v5, v4

    goto :goto_0

    .line 26
    :cond_4
    sget-object v5, Ltop/bienvenido/date_24323/n5;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;

    invoke-virtual {v5, v3}, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltop/bienvenido/date_24323/h4;

    :goto_0
    if-eqz v5, :cond_5

    .line 27
    iget-object v5, v5, Ltop/bienvenido/date_24323/h4;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/h9;

    goto :goto_1

    .line 28
    :cond_5
    new-instance v5, Ltop/bienvenido/date_24323/h9;

    .line 29
    const-string v6, "0"

    .line 30
    invoke-direct {v5, v6}, Ltop/bienvenido/date_24323/h9;-><init>(Ljava/lang/String;)V

    .line 33
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    if-eqz v4, :cond_6

    .line 34
    iget-object v4, v4, Ltop/bienvenido/date_24323/c2;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Landroid/content/pm/PackageInfo;

    .line 35
    iget-wide v6, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v6, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    goto :goto_2

    .line 37
    :cond_6
    iput-wide v6, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 38
    :goto_2
    sget-object v4, Ltop/bienvenido/date_24323/g;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:[Ljava/lang/String;

    iput-object v4, v1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 39
    sget-boolean v4, Ltop/bienvenido/date_24323/z1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Z

    .line 40
    sget-object v4, Ltop/bienvenido/date_24323/i;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lkotlin/jvm/functions/Function1;

    .line 41
    new-instance v4, Ljava/io/File;

    .line 42
    sget-object v6, Ltop/bienvenido/date_24323/z1;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/io/File;

    .line 43
    invoke-direct {v4, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-static {v4}, Ltop/bienvenido/date_24323/i;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/io/File;)Z

    .line 45
    const-string v4, "base.apk"

    .line 46
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 50
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 51
    invoke-virtual {p0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 53
    move-object v8, p0

    move-object v9, v6

    invoke-static/range {v8 .. v13}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 58
    :cond_8
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 60
    const-class p1, Landroid/content/pm/ApplicationInfo;

    .line 62
    const-string v4, "37e41a97f6a8ef509c6669dafc9c29a7"

    .line 63
    invoke-static {v4}, Ltop/bienvenido/date_24323/n3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-static {p1, v4}, Ltop/bienvenido/date_24323/r2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Class;Ljava/lang/String;)Ltop/bienvenido/date_24323/s2;

    move-result-object p1

    invoke-virtual {p1, v2, p0}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    const-class p1, Landroid/content/pm/ApplicationInfo;

    .line 75
    const-string v4, "3c380e0df24a9aec04f367bcbab97a01"

    .line 76
    invoke-static {v4}, Ltop/bienvenido/date_24323/n3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {p1, v4}, Ltop/bienvenido/date_24323/r2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Class;Ljava/lang/String;)Ltop/bienvenido/date_24323/s2;

    move-result-object p1

    invoke-virtual {p1, v2, p0}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    const-string p0, "/dev/null"

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 86
    new-instance p0, Ltop/bienvenido/date_24323/c2;

    invoke-direct {p0, v1, v2, v5}, Ltop/bienvenido/date_24323/c2;-><init>(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;Ltop/bienvenido/date_24323/h9;)V

    .line 87
    sget-boolean p1, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->你不知道你妈张个大嘴劈个小腿下面还流着咸盐水吗弟弟:Z

    if-eqz p1, :cond_b

    .line 88
    sget-boolean p1, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->虽然不是同一时间但是是同一个你妈你爹我再次挑战一把吃阴第:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "/system/framework/org.apache.http.legacy.jar"

    if-eqz p1, :cond_9

    .line 89
    :try_start_1
    const-string p1, "/system/framework/android.test.base.jar"

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 90
    :cond_9
    sget-boolean p1, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->你妈在万人广场卖逼你废物爹不仅不阻止反而跟你妈一起跟天下人民普天同庆你每晚草你妈生龙活虎你妈疼的呲牙咧嘴你妈逼上的阴齿都满足不了你这杂种的狂野性需求啊草你妈:Z

    if-eqz p1, :cond_a

    .line 91
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_a
    nop

    .line 93
    const-string p1, "/system/framework/org.apache.http.legacy.boot.jar"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 94
    :goto_3
    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 103
    :cond_b
    invoke-static {v3}, Ltop/bienvenido/date_24323/z1;->要不要把你妈卵子扣出来给你做寿司吃(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 107
    sget-object v1, Ltop/bienvenido/date_24323/x8;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/n2;

    .line 108
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    const-string v4, "/"

    .line 109
    :cond_c
    sget-object v5, Ltop/bienvenido/date_24323/x8;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:Ltop/bienvenido/date_24323/n2;

    .line 110
    iget-object v5, v5, Ltop/bienvenido/date_24323/n2;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;

    .line 111
    invoke-virtual {v5, v2, v4}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 113
    iget-object v1, v1, Ltop/bienvenido/date_24323/n2;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;

    .line 114
    invoke-virtual {v1, v2, v4}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    sget-boolean v1, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->用搅拌机把你妈的阴扩一下:Z

    if-eqz v1, :cond_d

    .line 116
    invoke-virtual {v6}, Ljava/io/File;->setReadOnly()Z

    .line 117
    :cond_d
    sget-object v1, Ltop/bienvenido/date_24323/x8;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/n2;

    .line 118
    invoke-static {}, Ltop/bienvenido/date_24323/i1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()[Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-static {v6, p1}, Ltop/bienvenido/date_24323/i1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    aget-object p1, v4, p1

    .line 120
    iget-object v1, v1, Ltop/bienvenido/date_24323/n2;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;

    .line 121
    invoke-virtual {v1, v2, p1}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    sget-object p1, Ltop/bienvenido/date_24323/n5;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;

    invoke-virtual {p1, v3}, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/bienvenido/date_24323/h4;

    const/4 p1, 0x0

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    .line 2
    :catchall_0
    move-exception p0

    .line 123
    const/4 p0, -0x1

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
