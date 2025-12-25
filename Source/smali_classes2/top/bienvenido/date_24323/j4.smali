.class public final Ltop/bienvenido/date_24323/j4;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/Parcelable$Creator;

.field public final 要不要把你妈卵子扣出来给你做寿司吃:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/os/Parcelable$Creator;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltop/bienvenido/date_24323/j4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/Parcelable$Creator;

    .line 3
    iput-object p2, p0, Ltop/bienvenido/date_24323/j4;->要不要把你妈卵子扣出来给你做寿司吃:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ltop/bienvenido/date_24323/j4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    iget-object v0, p0, Ltop/bienvenido/date_24323/j4;->要不要把你妈卵子扣出来给你做寿司吃:Lkotlin/jvm/functions/Function1;

    .line 5
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ltop/bienvenido/date_24323/j4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
