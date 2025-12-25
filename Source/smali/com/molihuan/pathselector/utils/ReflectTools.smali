.class public Lcom/molihuan/pathselector/utils/ReflectTools;
.super Ljava/lang/Object;
.source "ReflectTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActivityThread()Ljava/lang/Object;
    .locals 2

    .line 66
    invoke-static {}, Lcom/molihuan/pathselector/utils/ReflectTools;->getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "activityThread":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/molihuan/pathselector/utils/ReflectTools;->getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;
    .locals 4

    .line 72
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 73
    .local v1, "activityThreadClass":Ljava/lang/Class;
    const-string/jumbo v2, "sCurrentActivityThread"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 74
    .local v2, "sCurrentActivityThreadField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 76
    .end local v1    # "activityThreadClass":Ljava/lang/Class;
    .end local v2    # "sCurrentActivityThreadField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "var3":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivityThreadInActivityThreadStaticField: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UtilsActivityLifecycle"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v0
.end method

.method private static getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;
    .locals 5

    .line 84
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 85
    .local v1, "activityThreadClass":Ljava/lang/Class;
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 86
    .end local v1    # "activityThreadClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "var2":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivityThreadInActivityThreadStaticMethod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UtilsActivityLifecycle"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v0
.end method

.method public static getAllStoragePath(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "mMethodGetPaths":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 31
    .local v1, "paths":[Ljava/lang/String;
    const-string/jumbo v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 33
    .local v2, "mStorageManager":Landroid/os/storage/StorageManager;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getVolumePaths"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    .line 34
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 37
    goto :goto_0

    .line 35
    :catch_0
    move-exception v3

    .line 36
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_0

    .line 39
    invoke-static {v1}, Lcom/molihuan/pathselector/utils/CommonTools;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 41
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getApplicationByReflect()Landroid/app/Application;
    .locals 6

    .line 51
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    .local v1, "activityThreadClass":Ljava/lang/Class;
    invoke-static {}, Lcom/molihuan/pathselector/utils/ReflectTools;->getActivityThread()Ljava/lang/Object;

    move-result-object v2

    .line 53
    .local v2, "thread":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 54
    return-object v0

    .line 56
    :cond_0
    const-string v3, "getApplication"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 57
    .local v3, "app":Ljava/lang/Object;
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v3

    check-cast v4, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    :goto_0
    return-object v0

    .line 59
    .end local v1    # "activityThreadClass":Ljava/lang/Class;
    .end local v2    # "thread":Ljava/lang/Object;
    .end local v3    # "app":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "var4":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    return-object v0
.end method
