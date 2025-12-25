.class synthetic Lcom/molihuan/pathselector/service/BaseFileManager$2;
.super Ljava/lang/Object;
.source "BaseFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/molihuan/pathselector/service/BaseFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$molihuan$pathselector$utils$MConstants$SortRules:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 121
    invoke-static {}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->values()[Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/molihuan/pathselector/service/BaseFileManager$2;->$SwitchMap$com$molihuan$pathselector$utils$MConstants$SortRules:[I

    :try_start_0
    sget-object v1, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_NAME_ASC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/molihuan/pathselector/service/BaseFileManager$2;->$SwitchMap$com$molihuan$pathselector$utils$MConstants$SortRules:[I

    sget-object v1, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_NAME_DESC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/molihuan/pathselector/service/BaseFileManager$2;->$SwitchMap$com$molihuan$pathselector$utils$MConstants$SortRules:[I

    sget-object v1, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_TIME_ASC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/molihuan/pathselector/service/BaseFileManager$2;->$SwitchMap$com$molihuan$pathselector$utils$MConstants$SortRules:[I

    sget-object v1, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_TIME_DESC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/molihuan/pathselector/service/BaseFileManager$2;->$SwitchMap$com$molihuan$pathselector$utils$MConstants$SortRules:[I

    sget-object v1, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_SIZE_ASC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/molihuan/pathselector/service/BaseFileManager$2;->$SwitchMap$com$molihuan$pathselector$utils$MConstants$SortRules:[I

    sget-object v1, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_SIZE_DESC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    return-void
.end method
