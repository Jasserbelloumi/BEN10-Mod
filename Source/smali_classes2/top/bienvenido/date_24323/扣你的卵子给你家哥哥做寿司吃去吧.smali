.class public final Ltop/bienvenido/date_24323/扣你的卵子给你家哥哥做寿司吃去吧;
.super Ltop/bienvenido/mundo/common/ext/MundoBleCallback;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# instance fields
.field public final synthetic 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/bluetooth/IBluetoothManagerCallback;

.field public final synthetic 要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/a2;


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothManagerCallback;Ltop/bienvenido/date_24323/a2;)V
    .locals 0

    iput-object p1, p0, Ltop/bienvenido/date_24323/扣你的卵子给你家哥哥做寿司吃去吧;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/bluetooth/IBluetoothManagerCallback;

    iput-object p2, p0, Ltop/bienvenido/date_24323/扣你的卵子给你家哥哥做寿司吃去吧;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/a2;

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/mundo/common/ext/MundoBleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBluetoothOff()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ltop/bienvenido/date_24323/扣你的卵子给你家哥哥做寿司吃去吧;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothOff()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public final onBluetoothOn()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ltop/bienvenido/date_24323/扣你的卵子给你家哥哥做寿司吃去吧;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothOn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public final onBluetoothServiceDown()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ltop/bienvenido/date_24323/扣你的卵子给你家哥哥做寿司吃去吧;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public final onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ltop/bienvenido/date_24323/扣你的卵子给你家哥哥做寿司吃去吧;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/bluetooth/IBluetoothManagerCallback;

    if-eqz p1, :cond_0

    .line 6
    iget-object v1, p0, Ltop/bienvenido/date_24323/扣你的卵子给你家哥哥做寿司吃去吧;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/a2;

    .line 7
    invoke-static {p1, v1}, Ltop/bienvenido/date_24323/z0;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ltop/bienvenido/date_24323/a2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/IBluetooth;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    return-void
.end method

.method public final onBluetoothServiceUp(Landroid/os/IBinder;)V
    .locals 4

    .line 9
    :try_start_0
    iget-object v0, p0, Ltop/bienvenido/date_24323/扣你的卵子给你家哥哥做寿司吃去吧;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 10
    new-instance v1, Ltop/bienvenido/date_24323/k4;

    .line 13
    invoke-static {p1}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    .line 16
    iget-object v3, p0, Ltop/bienvenido/date_24323/扣你的卵子给你家哥哥做寿司吃去吧;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/a2;

    .line 17
    invoke-static {v2, v3}, Ltop/bienvenido/date_24323/z0;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ltop/bienvenido/date_24323/a2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    .line 18
    invoke-direct {v1, p1, v2}, Ltop/bienvenido/date_24323/k4;-><init>(Landroid/os/IBinder;Landroid/os/IInterface;)V

    .line 19
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void
.end method

.method public final onBrEdrDown()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ltop/bienvenido/date_24323/扣你的卵子给你家哥哥做寿司吃去吧;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManagerCallback;->onBrEdrDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
