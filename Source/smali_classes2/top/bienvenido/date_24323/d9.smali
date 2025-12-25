.class public abstract Ltop/bienvenido/date_24323/d9;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# static fields
.field public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Landroid/util/Singleton;

    .line 2
    const-string v1, "mInstance"

    .line 3
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 10
    :goto_1
    new-instance v1, Ltop/bienvenido/date_24323/p2;

    invoke-direct {v1, v0}, Ltop/bienvenido/date_24323/p2;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 11
    :cond_1
    sget-object v1, Ltop/bienvenido/date_24323/t9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lsun/misc/Unsafe;

    .line 12
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    .line 15
    new-instance v2, Ltop/bienvenido/date_24323/q2;

    invoke-direct {v2, v0, v1}, Ltop/bienvenido/date_24323/q2;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    .line 17
    :goto_2
    sput-object v1, Ltop/bienvenido/date_24323/d9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    return-void
.end method
