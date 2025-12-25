.class public final Ltop/bienvenido/date_24323/c6;
.super Ltop/bienvenido/date_24323/a2;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# instance fields
.field public final synthetic 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lkotlin/jvm/functions/Function1;

.field public final synthetic 要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/d6;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ltop/bienvenido/date_24323/d6;)V
    .locals 0

    iput-object p1, p0, Ltop/bienvenido/date_24323/c6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Ltop/bienvenido/date_24323/c6;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/d6;

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/date_24323/a2;-><init>()V

    return-void
.end method


# virtual methods
.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Ltop/bienvenido/date_24323/c6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lkotlin/jvm/functions/Function1;

    iget-object p3, p0, Ltop/bienvenido/date_24323/c6;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/d6;

    .line 3
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    sget-object p2, Ltop/bienvenido/date_24323/q4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/a2;

    .line 7
    new-instance p2, Ltop/bienvenido/date_24323/p4;

    invoke-direct {p2, p1}, Ltop/bienvenido/date_24323/p4;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-object p2, p3, Ltop/bienvenido/date_24323/d6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/a2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    return-object v0
.end method
