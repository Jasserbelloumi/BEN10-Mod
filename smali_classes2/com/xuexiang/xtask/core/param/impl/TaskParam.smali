.class public Lcom/xuexiang/xtask/core/param/impl/TaskParam;
.super Ljava/lang/Object;
.source "TaskParam.java"

# interfaces
.implements Lcom/xuexiang/xtask/core/param/ITaskParam;


# static fields
.field private static final PATH_ARROW:Ljava/lang/String; = "->"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

.field private mPath:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "TaskParam"

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->getLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/MapDataStore;

    invoke-direct {v0}, Lcom/xuexiang/xtask/core/param/impl/MapDataStore;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mPath:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static get()Lcom/xuexiang/xtask/core/param/impl/TaskParam;
    .locals 1

    .line 57
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;

    invoke-direct {v0}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;-><init>()V

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/Object;)Lcom/xuexiang/xtask/core/param/impl/TaskParam;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 68
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;

    invoke-direct {v0}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;-><init>()V

    .line 69
    .local v0, "taskParam":Lcom/xuexiang/xtask/core/param/impl/TaskParam;
    invoke-virtual {v0, p0, p1}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/xuexiang/xtask/core/param/impl/TaskParam;

    .line 70
    return-object v0
.end method


# virtual methods
.method public addGroupPath(Ljava/lang/String;II)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "total"    # I

    .line 80
    if-ltz p2, :cond_3

    if-lt p2, p3, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mPath:Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    if-nez p2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mPath:Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mPath:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mPath:Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_2
    return-void

    .line 81
    :cond_3
    :goto_0
    return-void
.end method

.method public addPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mPath:Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    return-void
.end method

.method public clear()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    invoke-interface {v0}, Lcom/xuexiang/xtask/core/param/IDataStore;->clear()V

    .line 196
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mPath:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 197
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/core/param/IDataStore;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/core/param/IDataStore;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 175
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    invoke-interface {v0, p1, p2}, Lcom/xuexiang/xtask/core/param/IDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    invoke-interface {v0}, Lcom/xuexiang/xtask/core/param/IDataStore;->getData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDataStore()Lcom/xuexiang/xtask/core/param/IDataStore;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/core/param/IDataStore;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 185
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    invoke-interface {v0, p1, p2}, Lcom/xuexiang/xtask/core/param/IDataStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 150
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    invoke-interface {v0, p1, p2}, Lcom/xuexiang/xtask/core/param/IDataStore;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 155
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    invoke-interface {v0, p1, p2}, Lcom/xuexiang/xtask/core/param/IDataStore;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mPath:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/core/param/IDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    invoke-interface {v0, p1, p2}, Lcom/xuexiang/xtask/core/param/IDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/Object;)Lcom/xuexiang/xtask/core/param/IDataStore;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/xuexiang/xtask/core/param/impl/TaskParam;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/xuexiang/xtask/core/param/impl/TaskParam;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mDataStore:Lcom/xuexiang/xtask/core/param/IDataStore;

    invoke-interface {v0, p1, p2}, Lcom/xuexiang/xtask/core/param/IDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/xuexiang/xtask/core/param/IDataStore;

    .line 145
    return-object p0
.end method

.method public updateData(Lcom/xuexiang/xtask/core/param/IDataStore;)V
    .locals 4
    .param p1, "iDataStore"    # Lcom/xuexiang/xtask/core/param/IDataStore;

    .line 110
    if-nez p1, :cond_0

    .line 111
    sget-object v0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateData ignore, iDataStore is null!"

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->wTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 114
    :cond_0
    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/IDataStore;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/CommonUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    return-void

    .line 117
    :cond_1
    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/IDataStore;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/xuexiang/xtask/core/param/impl/TaskParam;

    .line 119
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 120
    :cond_2
    return-void
.end method

.method public updateParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)V
    .locals 2
    .param p1, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 130
    if-nez p1, :cond_0

    .line 131
    sget-object v0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateParam ignore, taskParam is null!"

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->wTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void

    .line 134
    :cond_0
    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/ITaskParam;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/ITaskParam;->getDataStore()Lcom/xuexiang/xtask/core/param/IDataStore;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->updateParam(Ljava/lang/String;Lcom/xuexiang/xtask/core/param/IDataStore;)V

    .line 135
    return-void
.end method

.method public updateParam(Ljava/lang/String;Lcom/xuexiang/xtask/core/param/IDataStore;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "iDataStore"    # Lcom/xuexiang/xtask/core/param/IDataStore;

    .line 124
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->updatePath(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p2}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->updateData(Lcom/xuexiang/xtask/core/param/IDataStore;)V

    .line 126
    return-void
.end method

.method public updatePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->mPath:Ljava/lang/StringBuilder;

    .line 101
    return-void
.end method
