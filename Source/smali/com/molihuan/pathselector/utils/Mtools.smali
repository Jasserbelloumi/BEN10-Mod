.class public Lcom/molihuan/pathselector/utils/Mtools;
.super Ljava/lang/Object;
.source "Mtools.java"


# static fields
.field private static final LOG_TYPE_D:I = 0x1

.field private static final LOG_TYPE_E:I = 0x0

.field private static final LOG_TYPE_I:I = 0x2

.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/molihuan/pathselector/utils/Mtools;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/Object;)V
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "s":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e1":Ljava/lang/Exception;
    const-string v2, "PathSelector"

    const-string/jumbo v3, "\u672a\u91cd\u5199toString\u65b9\u6cd5"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :try_start_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 69
    goto :goto_0

    .line 67
    :catch_1
    move-exception v3

    .line 68
    .local v3, "e2":Ljava/lang/Exception;
    const-string/jumbo v4, "\u65e0\u6cd5\u6253\u5370"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v3    # "e2":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public static log(Ljava/lang/String;I)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 75
    sget-boolean v0, Lcom/molihuan/pathselector/utils/Mtools;->debug:Z

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    const-string v0, "PathSelector"

    packed-switch p1, :pswitch_data_0

    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto :goto_0

    .line 80
    :pswitch_1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    nop

    .line 88
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .line 22
    sput-boolean p0, Lcom/molihuan/pathselector/utils/Mtools;->debug:Z

    .line 23
    return-void
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "time"    # I

    .line 47
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    return-void
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/molihuan/pathselector/utils/Mtools;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 33
    return-void
.end method

.method public static toast(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 36
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/molihuan/pathselector/utils/Mtools;->toast(Ljava/lang/CharSequence;I)V

    .line 37
    return-void
.end method

.method public static toast(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "time"    # I

    .line 40
    invoke-static {}, Lcom/molihuan/pathselector/utils/ReflectTools;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/molihuan/pathselector/utils/Mtools;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 41
    return-void
.end method
