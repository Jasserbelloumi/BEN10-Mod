.class public final Ltop/bienvenido/date_24323/s9;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# instance fields
.field public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/q9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ltop/bienvenido/date_24323/q9;

    invoke-direct {v0}, Ltop/bienvenido/date_24323/q9;-><init>()V

    iput-object v0, p0, Ltop/bienvenido/date_24323/s9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/q9;

    return-void
.end method


# virtual methods
.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/accounts/Account;Ljava/lang/String;)Ltop/bienvenido/date_24323/r9;
    .locals 4

    .line 1
    new-instance v0, Ltop/bienvenido/date_24323/o9;

    invoke-direct {v0, p1, p2}, Ltop/bienvenido/date_24323/o9;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Ltop/bienvenido/date_24323/s9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/q9;

    invoke-virtual {p2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltop/bienvenido/date_24323/r9;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p2, :cond_0

    .line 4
    iget-wide v2, p2, Ltop/bienvenido/date_24323/r9;->要不要把你妈卵子扣出来给你做寿司吃:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-object p2

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object p2, p2, Ltop/bienvenido/date_24323/r9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Ltop/bienvenido/date_24323/s9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/q9;

    invoke-virtual {v0, p1, p2}, Ltop/bienvenido/date_24323/q9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
