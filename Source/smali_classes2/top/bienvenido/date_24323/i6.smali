.class public final Ltop/bienvenido/date_24323/i6;
.super Ltop/bienvenido/date_24323/我是月黑风高偷你妈棺材钱的爹;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# static fields
.field public static final 要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/i6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltop/bienvenido/date_24323/i6;

    invoke-direct {v0}, Ltop/bienvenido/date_24323/i6;-><init>()V

    sput-object v0, Ltop/bienvenido/date_24323/i6;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/i6;

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
    sget-object v0, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 6
    :cond_0
    const-class v1, Landroid/nfc/NfcAdapter;

    .line 7
    const-string v2, "sService"

    .line 8
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 12
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 15
    :goto_1
    new-instance v2, Ltop/bienvenido/date_24323/p2;

    invoke-direct {v2, v1}, Ltop/bienvenido/date_24323/p2;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 16
    :cond_2
    sget-object v2, Ltop/bienvenido/date_24323/t9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lsun/misc/Unsafe;

    .line 17
    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    .line 20
    new-instance v3, Ltop/bienvenido/date_24323/q2;

    invoke-direct {v3, v1, v2}, Ltop/bienvenido/date_24323/q2;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v1

    .line 21
    sget-object v2, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    .line 22
    :goto_2
    invoke-virtual {v2, v0}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 23
    :cond_3
    sget-object v1, Ltop/bienvenido/date_24323/q4;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/b2;

    .line 24
    iput-object v1, p0, Ltop/bienvenido/date_24323/我是月黑风高偷你妈棺材钱的爹;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/a2;

    .line 25
    const-string v1, "nfc"

    invoke-virtual {p0, v1, v0}, Ltop/bienvenido/date_24323/我是月黑风高偷你妈棺材钱的爹;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/String;Ljava/lang/Object;)Ltop/bienvenido/date_24323/a1;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_3
    return-void

    .line 26
    :cond_4
    iget-object v0, v0, Ltop/bienvenido/date_24323/a1;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v2, v1, v0}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
