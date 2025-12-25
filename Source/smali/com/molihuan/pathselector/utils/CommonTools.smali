.class public Lcom/molihuan/pathselector/utils/CommonTools;
.super Ljava/lang/Object;
.source "CommonTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 29
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 34
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    return-object v0

    .line 31
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static asStringList([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
