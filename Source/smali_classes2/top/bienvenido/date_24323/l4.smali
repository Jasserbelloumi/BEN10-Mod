.class public final synthetic Ltop/bienvenido/date_24323/l4;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/l4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltop/bienvenido/date_24323/l4;

    invoke-direct {v0}, Ltop/bienvenido/date_24323/l4;-><init>()V

    sput-object v0, Ltop/bienvenido/date_24323/l4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/l4;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const-class v2, Ltop/bienvenido/date_24323/e0;

    const/4 v1, 0x1

    const-string v3, "asInterface"

    const-string v4, "asInterface(Landroid/os/IBinder;)Ltop/bienvenido/mundo/IMundoContentService;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/os/IBinder;

    .line 2
    sget v0, Ltop/bienvenido/date_24323/e0;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    const-string v0, "MundoContentService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    instance-of v1, v0, Ltop/bienvenido/date_24323/f0;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ltop/bienvenido/date_24323/f0;

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ltop/bienvenido/date_24323/d0;

    invoke-direct {v0, p1}, Ltop/bienvenido/date_24323/d0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
