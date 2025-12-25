.class Lcom/molihuan/pathselector/service/BaseFileManager$1;
.super Ljava/lang/Object;
.source "BaseFileManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/molihuan/pathselector/service/BaseFileManager;->sortFileList(Ljava/util/List;Lcom/molihuan/pathselector/utils/MConstants$SortRules;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/molihuan/pathselector/entity/FileBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/molihuan/pathselector/service/BaseFileManager;

.field final synthetic val$sortType:Lcom/molihuan/pathselector/utils/MConstants$SortRules;


# direct methods
.method constructor <init>(Lcom/molihuan/pathselector/service/BaseFileManager;Lcom/molihuan/pathselector/utils/MConstants$SortRules;)V
    .locals 0
    .param p1, "this$0"    # Lcom/molihuan/pathselector/service/BaseFileManager;

    .line 86
    iput-object p1, p0, Lcom/molihuan/pathselector/service/BaseFileManager$1;->this$0:Lcom/molihuan/pathselector/service/BaseFileManager;

    iput-object p2, p0, Lcom/molihuan/pathselector/service/BaseFileManager$1;->val$sortType:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/molihuan/pathselector/entity/FileBean;Lcom/molihuan/pathselector/entity/FileBean;)I
    .locals 10
    .param p1, "o1"    # Lcom/molihuan/pathselector/entity/FileBean;
    .param p2, "o2"    # Lcom/molihuan/pathselector/entity/FileBean;

    .line 97
    invoke-virtual {p1}, Lcom/molihuan/pathselector/entity/FileBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 98
    return v1

    .line 100
    :cond_0
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 101
    return v2

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/molihuan/pathselector/entity/FileBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1523

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 106
    return v2

    .line 108
    :cond_2
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 109
    return v1

    .line 113
    :cond_3
    invoke-virtual {p1}, Lcom/molihuan/pathselector/entity/FileBean;->isDir()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->isDir()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    return v2

    .line 116
    :cond_4
    invoke-virtual {p1}, Lcom/molihuan/pathselector/entity/FileBean;->isDir()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->isDir()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    return v1

    .line 121
    :cond_5
    sget-object v0, Lcom/molihuan/pathselector/service/BaseFileManager$2;->$SwitchMap$com$molihuan$pathselector$utils$MConstants$SortRules:[I

    iget-object v3, p0, Lcom/molihuan/pathselector/service/BaseFileManager$1;->val$sortType:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    invoke-virtual {v3}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 159
    return v3

    .line 151
    :pswitch_0
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/molihuan/pathselector/entity/FileBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 152
    .local v6, "diff":J
    cmp-long v0, v6, v4

    if-lez v0, :cond_6

    .line 153
    return v1

    .line 154
    :cond_6
    cmp-long v0, v6, v4

    if-nez v0, :cond_7

    .line 155
    return v3

    .line 157
    :cond_7
    return v2

    .line 143
    .end local v6    # "diff":J
    :pswitch_1
    invoke-virtual {p1}, Lcom/molihuan/pathselector/entity/FileBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 144
    .restart local v6    # "diff":J
    cmp-long v0, v6, v4

    if-lez v0, :cond_8

    .line 145
    return v1

    .line 146
    :cond_8
    cmp-long v0, v6, v4

    if-nez v0, :cond_9

    .line 147
    return v3

    .line 149
    :cond_9
    return v2

    .line 135
    .end local v6    # "diff":J
    :pswitch_2
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/molihuan/pathselector/entity/FileBean;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 136
    .restart local v6    # "diff":J
    cmp-long v0, v6, v4

    if-lez v0, :cond_a

    .line 137
    return v1

    .line 138
    :cond_a
    cmp-long v0, v6, v4

    if-nez v0, :cond_b

    .line 139
    return v3

    .line 141
    :cond_b
    return v2

    .line 127
    .end local v6    # "diff":J
    :pswitch_3
    invoke-virtual {p1}, Lcom/molihuan/pathselector/entity/FileBean;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 128
    .restart local v6    # "diff":J
    cmp-long v0, v6, v4

    if-lez v0, :cond_c

    .line 129
    return v1

    .line 130
    :cond_c
    cmp-long v0, v6, v4

    if-nez v0, :cond_d

    .line 131
    return v3

    .line 133
    :cond_d
    return v2

    .line 125
    .end local v6    # "diff":J
    :pswitch_4
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/molihuan/pathselector/entity/FileBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 123
    :pswitch_5
    invoke-virtual {p1}, Lcom/molihuan/pathselector/entity/FileBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 86
    check-cast p1, Lcom/molihuan/pathselector/entity/FileBean;

    check-cast p2, Lcom/molihuan/pathselector/entity/FileBean;

    invoke-virtual {p0, p1, p2}, Lcom/molihuan/pathselector/service/BaseFileManager$1;->compare(Lcom/molihuan/pathselector/entity/FileBean;Lcom/molihuan/pathselector/entity/FileBean;)I

    move-result p1

    return p1
.end method
