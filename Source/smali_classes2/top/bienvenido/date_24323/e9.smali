.class public abstract Ltop/bienvenido/date_24323/e9;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# direct methods
.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰([IIII)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 1
    array-length v1, p0

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr p1, p2

    .line 2
    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    aput p3, p0, p2

    return-object p0

    :cond_0
    shl-int/lit8 p1, v0, 0x1

    .line 6
    new-array p1, p1, [I

    .line 7
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    aput p3, p1, p2

    add-int/lit8 p3, p2, 0x1

    .line 9
    array-length v0, p0

    sub-int/2addr v0, p2

    invoke-static {p0, p2, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
