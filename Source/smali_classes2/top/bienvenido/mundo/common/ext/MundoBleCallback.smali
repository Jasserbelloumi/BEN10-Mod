.class public Ltop/bienvenido/mundo/common/ext/MundoBleCallback;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016J\u0008\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltop/bienvenido/mundo/common/ext/MundoBleCallback;",
        "Landroid/bluetooth/IBluetoothManagerCallback$Stub;",
        "<init>",
        "()V",
        "onBluetoothServiceDown",
        "",
        "onBluetoothServiceUp",
        "iBluetooth",
        "Landroid/bluetooth/IBluetooth;",
        "bluetoothService",
        "Landroid/os/IBinder;",
        "onBluetoothOn",
        "onBluetoothOff",
        "onBrEdrDown",
        "mundo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothOff()V
    .locals 0

    return-void
.end method

.method public onBluetoothOn()V
    .locals 0

    return-void
.end method

.method public onBluetoothServiceDown()V
    .locals 0

    return-void
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onBluetoothServiceUp(Landroid/os/IBinder;)V
    .locals 0

    .line 2
    return-void
.end method

.method public onBrEdrDown()V
    .locals 0

    return-void
.end method
