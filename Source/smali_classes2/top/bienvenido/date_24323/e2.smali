.class public final synthetic Ltop/bienvenido/date_24323/e2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/e2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltop/bienvenido/date_24323/e2;

    invoke-direct {v0}, Ltop/bienvenido/date_24323/e2;-><init>()V

    sput-object v0, Ltop/bienvenido/date_24323/e2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/e2;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const-class v2, Lkotlin/collections/ArraysKt;

    const/4 v1, 0x1

    const-string v3, "toTypedArray"

    const-string v4, "toTypedArray(Ljava/util/Collection;)[Ljava/lang/Object;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/ActivityInfo;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, [Landroid/content/pm/ActivityInfo;

    return-object p1
.end method
