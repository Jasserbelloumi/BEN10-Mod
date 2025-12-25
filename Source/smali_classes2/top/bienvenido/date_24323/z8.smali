.class public final Ltop/bienvenido/date_24323/z8;
.super Ltop/bienvenido/date_24323/a2;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/date_24323/a2;-><init>()V

    return-void
.end method


# virtual methods
.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    const-class p1, Lcom/android/internal/infra/AndroidFuture;

    .line 2
    invoke-static {p3, p1}, Ltop/bienvenido/date_24323/a2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    if-eqz p1, :cond_0

    .line 5
    const-string p2, "true"

    .line 6
    invoke-virtual {p1, p2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
