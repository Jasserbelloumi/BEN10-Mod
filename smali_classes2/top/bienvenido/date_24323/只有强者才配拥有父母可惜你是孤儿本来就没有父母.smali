.class public final Ltop/bienvenido/date_24323/只有强者才配拥有父母可惜你是孤儿本来就没有父母;
.super Ltop/bienvenido/date_24323/我是月黑风高偷你妈棺材钱的爹;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# static fields
.field public static final 要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/只有强者才配拥有父母可惜你是孤儿本来就没有父母;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltop/bienvenido/date_24323/只有强者才配拥有父母可惜你是孤儿本来就没有父母;

    invoke-direct {v0}, Ltop/bienvenido/date_24323/只有强者才配拥有父母可惜你是孤儿本来就没有父母;-><init>()V

    sput-object v0, Ltop/bienvenido/date_24323/只有强者才配拥有父母可惜你是孤儿本来就没有父母;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/只有强者才配拥有父母可惜你是孤儿本来就没有父母;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/date_24323/我是月黑风高偷你妈棺材钱的爹;-><init>()V

    return-void
.end method


# virtual methods
.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()V
    .locals 4

    .line 1
    const-class v0, Landroid/bluetooth/BluetoothAdapter;

    .line 2
    const-string v1, "sGetProfileConnectionStateCache"

    invoke-static {v0, v1}, Ltop/bienvenido/date_24323/r2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Class;Ljava/lang/String;)Ltop/bienvenido/date_24323/s2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Landroid/os/IpcDataCache;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    const-class v2, Landroid/bluetooth/BluetoothAdapter;

    .line 9
    const-string v3, "sBluetoothProfileQuery"

    invoke-static {v2, v3}, Ltop/bienvenido/date_24323/r2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Class;Ljava/lang/String;)Ltop/bienvenido/date_24323/s2;

    move-result-object v2

    invoke-virtual {v2, v1}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Landroid/os/IpcDataCache$QueryHandler;

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 14
    :cond_1
    const-class v2, Landroid/app/PropertyInvalidatedCache;

    const-string v3, "mComputer"

    invoke-static {v2, v3}, Ltop/bienvenido/date_24323/r2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Class;Ljava/lang/String;)Ltop/bienvenido/date_24323/s2;

    move-result-object v2

    .line 17
    new-instance v3, Ltop/bienvenido/mundo/common/ext/ExtQueryHandler;

    invoke-direct {v3, v1}, Ltop/bienvenido/mundo/common/ext/ExtQueryHandler;-><init>(Landroid/os/IpcDataCache$QueryHandler;)V

    .line 18
    invoke-virtual {v2, v0, v3}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v0}, Landroid/os/IpcDataCache;->clear()V

    return-void
.end method
