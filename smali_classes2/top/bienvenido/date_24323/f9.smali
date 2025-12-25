.class public final Ltop/bienvenido/date_24323/f9;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:I

.field public final synthetic 要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/g9;


# direct methods
.method public constructor <init>(Ltop/bienvenido/date_24323/g9;)V
    .locals 0

    iput-object p1, p0, Ltop/bienvenido/date_24323/f9;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/g9;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Ltop/bienvenido/date_24323/f9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:I

    iget-object v1, p0, Ltop/bienvenido/date_24323/f9;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/g9;

    .line 2
    iget v1, v1, Ltop/bienvenido/date_24323/g9;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ltop/bienvenido/date_24323/f9;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/g9;

    .line 2
    iget-object v0, v0, Ltop/bienvenido/date_24323/g9;->要不要把你妈卵子扣出来给你做寿司吃:[Ljava/lang/Object;

    .line 3
    iget v1, p0, Ltop/bienvenido/date_24323/f9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ltop/bienvenido/date_24323/f9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
