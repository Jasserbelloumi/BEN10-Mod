.class public final synthetic Ltop/bienvenido/date_24323/c8;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# static fields
.field public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/c8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltop/bienvenido/date_24323/c8;

    invoke-direct {v0}, Ltop/bienvenido/date_24323/c8;-><init>()V

    sput-object v0, Ltop/bienvenido/date_24323/c8;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/c8;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const-class v2, Ltop/bienvenido/date_24323/m0;

    const/4 v1, 0x3

    const-string v3, "getPackageInfo"

    const-string v4, "getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltop/bienvenido/date_24323/m0;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 2
    invoke-interface {p1, p2, p3}, Ltop/bienvenido/date_24323/m0;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method
